USE dbproject;
# insert data to mabager
INSERT INTO manager(username,password) VALUES
("amirhossein","amir1401"),
("amir","amir1401"),
("bardia","bardia"),
("hossein","hossein"),
("ali","ali130");

# insert data to supervisor
INSERT INTO supervisor(username,password) VALUES
("javad","javad123"),
("matin","shoja"),
("sajad","eghbali");

# insert data to passenger
INSERT INTO passenger(firstname,lastname) VALUES
("helia","ahmadi"),
("siavash","ghomeishi"),
("john","roso"),
("amir","imani"),
("abbas","gholami"),
("gholamali","aminian"),
("snow","man"),
("ali","kermani"),
("khosro","ahmadi"),
("amirali","barati"),
("rozbeh","pirayadi"),
("aryan","imani"),
("elnaz","asgari");
#

# insert data to airline
INSERT INTO airline(name,managerID) VALUES
("mahan",1),
("qatar",2),
("dubai",3);
#

# insert data to flight
INSERT INTO flight(airlineid) VALUES
(1),(1),(1),
(2),(2),(3);
#


# insert data to ticket_type
INSERT INTO ticket_type(type_string,price) VALUES
("business",1000),
("economy",500);
#

SELECT * FROM passenger LIMIT 100;
SELECT * FROM flight LIMIT 100;
SELECT * FROM ticket_type LIMIT 100;


# insert data to survey
INSERT INTO survey(managerid,flightid,
active,createtion_date,start_data,end_date,airlineid) VALUES
(1 ,1 ,true , "2020-01-23 12:45:56", "2020-02-23 12:45:56", "2020-03-23 12:45:56" ,1),
(1 ,2 ,false , "2020-01-23 12:45:56", "2020-02-23 12:45:56", "2020-03-23 12:45:56" ,1),
(2 ,4 ,true ,  "2020-01-23 12:45:56", "2020-02-23 12:45:56", "2020-03-23 12:45:56" ,2);

# insert data to ticket
INSERT INTO ticket(passenger_id,flight_number,
passport_number,seat_number,ticket_date,ticket_typeid,surveyid) VALUES
(1 ,1 ,12343 , 23, "2020-01-23 12:45:56" ,1,1),
(1 ,2 ,12343 , 45, "2021-03-20 10:42:00" ,2,2),
(1 ,5, 12343 , 53, "2020-01-23 12:45:56" ,1,NULL),
(2, 1 ,12344 , 22, "2020-01-23 12:45:56" ,1,1),
(2 ,5 ,12344 , 20, "2020-01-23 12:45:56" ,1,NULL),
(3 ,5, 12345 , 12, "2020-01-23 12:45:56" ,2,NULL);

# insert data to question
INSERT INTO question(mandatory,ticket_typeid,surveyid) VALUES
(true ,1 , 1),
(true ,1 , 1),
(true ,1 , 1),
(true ,1 , 1),
(true ,1 , 1),
(true ,2 , 1),
(true ,2 , 1),
(true ,2 , 1),
(true ,1 , 1),
(true ,1 , 1),
(true ,1 , 1),
(true ,1 , 2),
(true ,1 , 2),
(true ,1 , 2),
(true ,1 , 2),
(true ,1 , 1),
(true ,1 , 1),
(true ,1 , 1),
(true ,1 , 1),
(true ,1 , 2),
(true ,2 , 2),
(true ,2 , 2);


INSERT INTO approving(supervisorid,questionid,approve_date) VALUES
(1,1,NOW()),
(1,2,NOW()),
(1,3,NOW()),
#(1,4,NOW()),
(1,5,NOW()),
(1,6,NOW()),
(1,7,NOW()),
(1,8,NOW()),
(1,9,NOW()),
(1,10,NOW()),
(1,11,NOW()),
(1,12,NOW()),
(1,13,NOW()),
(1,14,NOW()),
(1,15,NOW()),
(1,16,NOW()),
(1,17,NOW()),
(1,18,NOW()),
(1,19,NOW()),
(1,20,NOW());
#(1,21,NOW()),
#(1,22,NOW());



INSERT INTO q_descriptive(questionid,txt) VALUES
(1,"how do you describe fligh assistances attitude?"),
(2,"how was the meal?"),
(3,"how pleasent you found air condotioner?"),
(4,"how was pilot infomration?"),
(5,"did you had a good seat?"),
(6,"what do you think we shoud do about boarding process?"),
(7,"did you experienced pleasant landing?"),
(8,"any comments?"),
(9,"how did you found noise in airplain?"),
(10,"how do you describe your financial state?"),
(11,"How often do you fly?"),
(12," Please tell us what can we do to improve?");


INSERT INTO q_multiple_choice(questionid,txt) VALUES
(13,"Gender?"),
(14,"Age group?"),
(15,"Which of the following describes you best?"),
(16,"Departure and / or arrival time was more convenient?"),
(17,"Frequent flyer program?"),
(18,"Inflight services are better?"),
(19,"Travel agent / company travel department recommendation?"),
(20,"Availability of flight attendants?"),
(21,"Pilot's communication with passengers?"),
(22,"Please indicate how long you waited in line?");

INSERT INTO options(questionid,number,txt) VALUES
(13,1,"Male"),
(13,2,"Female"),

(14,1,"<20"),
(14,2,"20-30"),
(14,3,"30-40"),
(14,4,"40-60"),
(14,5,"60<"),

(15,1,"Student"),
(15,2,"self-employed"),
(15,3,"Retired"),
(15,4,"Employed"),
(15,5,"Not employed"),

(16,1,"Very important"),
(16,2,"Important"),
(16,3,"Neutral"),
(16,4,"Unimportant"),
(16,5,"Not at all important"),

(17,1,"Very important"),
(17,2,"Important"),
(17,3,"Neutral"),
(17,4,"Unimportant"),
(17,5,"Not at all important"),

(18,1,"Very important"),
(18,2,"Important"),
(18,3,"Neutral"),
(18,4,"Unimportant"),
(18,5,"Not at all important"),

(19,1,"Very important"),
(19,2,"Important"),
(19,3,"Neutral"),
(19,4,"Unimportant"),
(19,5,"Not at all important"),

(20,1,"Very important"),
(20,2,"Important"),
(20,3,"Neutral"),
(20,4,"Unimportant"),
(20,5,"Not at all important"),

(21,1,"Very important"),
(21,2,"Important"),
(21,3,"Neutral"),
(21,4,"Unimportant"),
(21,5,"Not at all important"),

(22,1,"Didn't Use"),
(22,2,"No Wait"),
(22,3,"0-5 min"),
(22,4,"11-20 min"),
(22,5,"20+ min");


INSERT INTO answer(ticketid,questionid,createtion_date) VALUES
(1,11,"2020-01-25 11:30:00"),
(1,10,"2020-01-25 11:30:00"),
(1,9,"2020-01-25 11:30:00"),
(1,8,"2020-01-25 11:30:00"),
(1,7,"2020-01-25 11:30:00"),
(1,6,"2020-01-25 11:30:00"),
(1,5,"2020-01-25 11:30:00"),
(1,3,"2020-01-25 11:30:00"),
(1,2,"2020-01-25 11:30:00"),
(1,1,"2020-01-25 11:30:00"),
(4,11,"2020-01-25 11:30:00"),
(4,10,"2020-01-25 11:30:00"),
(4,9,"2020-01-25 11:30:00"),
(4,8,"2020-01-25 11:30:00"),
(4,7,"2020-01-25 11:30:00"),
(4,6,"2020-01-25 11:30:00"),
(4,5,"2020-01-25 11:30:00"),
(4,3,"2020-01-25 11:30:00"),
(4,2,"2020-01-25 11:30:00"),
(4,1,"2020-01-25 11:30:00");


#q_multiple_choice



INSERT INTO a_descriptive(answerid,txt,questionid) VALUES
(1,"it was ok ali",11),
(2,"fine but could be better",10),
(3,"no satisfactory",9),
(4,"If someone is going to ask you the same old everyday",8),
(5,"it was ok ali",7),
(6,"it was ok ali",6),
(7,"I don’t think I’m being unreasonable",5),
(8,"it was ok ali",3),
(9,"it was ok ali",2),
(10,"it was ok ali",1),

(11,"it was ok ali",11),
(12,"it was ok ali",10),
(13,"it was ok ali",9),
(14,"it was ok ali",8),
(15,"it was ok ali",7),
(16,"it was ok ali",6),
(17,"it was ok ali",5),
(18,"it was ok ali",3),
(19,"it was ok ali",2),
(20,"it was ok ali",1);




#-----------
SELECT airline.id as air,manager.id manager,flight.flight_number FROM manager INNER JOIN airline on airline.managerID = manager.id
INNER JOIN flight  ON flight.airlineid = airline.id; 
SELECT * FROM question;

SELECT t.ticket_number,t.ticket_date, q.questionid,qd.txt,s.start_data FROM ticket as t INNER JOIN survey as s on t.surveyid = s.id INNER JOIN question as qq on qq.surveyid = s.id INNER JOIN q_multiple_choice as q on qq.id = q.questionid
INNER JOIN q_descriptive qd on qd.questionid= q.questionid ;#-----------
