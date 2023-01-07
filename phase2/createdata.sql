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

# insert data to ticket
INSERT INTO ticket(passenger_id,flight_number,
passport_number,seat_number,ticket_date,ticket_typeid) VALUES
(1 ,1 ,12343 , 23, "2020-01-23 12:45:56" ,1),
(1 ,2 ,12343 , 45, "2021-03-20 10:42:00" ,2),
(1 ,5, 12343 , 53, "2020-01-23 12:45:56" ,1),
(2, 1 ,12344 , 22, "2020-01-23 12:45:56" ,1),
(2 ,5 ,12344 , 20, "2020-01-23 12:45:56" ,2),
(3 ,5, 12345 , 12, "2020-01-23 12:45:56" ,2);


# insert data to survey
INSERT INTO survey(managerid,flightid,
active,createtion_date,start_data,end_date,airlineid) VALUES
(1 ,1 ,true , "2020-01-23 12:45:56", "2020-02-23 12:45:56", "2020-03-23 12:45:56" ,1),
(1 ,2 ,false , "2020-01-23 12:45:56", "2020-02-23 12:45:56", "2020-03-23 12:45:56" ,1),
(2 ,4 ,true ,  "2020-01-23 12:45:56", "2020-02-23 12:45:56", "2020-03-23 12:45:56" ,2);

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
(true ,1 , 2),
(true ,1 , 2),
(true ,1 , 2),
(true ,1 , 2),
(true ,1 , 2),
(true ,2 , 2),
(true ,2 , 2);


INSERT INTO approving(supervisorid,questionid,approve_date) VALUES
(1,1,NOW()),
(1,2,NOW()),
(1,3,NOW()),
(1,4,NOW()),
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


#-----------

SELECT airline.id as air,manager.id manager,flight.flight_number FROM manager INNER JOIN airline on airline.managerID = manager.id
INNER JOIN flight  ON flight.airlineid = airline.id; 

#
SELECT * FROM question;


#-----------

INSERT INTO q_descriptive(questionid,txt) VALUES
(1,"how do you describe fligh assistances attitude?"),
(2,"how was the meal?"),
(3,"how pleasent you found air condotioner?"),
(4,"how was pilot infomration?"),
(5,"did you had a good seat?"),
(6,"what do you think we shoud do about boarding process?"),
(7,"did you experienced pleasant landing?"),
(8,""),
(9,""),
(10,""),
(11,""),
(12,"");