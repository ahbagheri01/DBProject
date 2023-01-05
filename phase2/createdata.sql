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

#-----------
# insert data to ticket
INSERT INTO ticket(passenger_id,flight_number,
passport_number,seat_number,ticket_date,ticket_typeid) VALUES
(1 ,1 ,12343 , 23, "2020-01-23 12:45:56" ,1),
(1 ,2 ,12343 , 45, "2021-03-20 10:42:00" ,2),
(1 , ,12343 , 23, "2020-01-23 12:45:56" ,1),
(1 ,1 ,12343 , 23, "2020-01-23 12:45:56" ,1),
(1 ,1 ,12343 , 23, "2020-01-23 12:45:56" ,1),
(1 ,1 ,12343 , 23, "2020-01-23 12:45:56" ,1),
(1 ,1 ,12343 , 23, "2020-01-23 12:45:56" ,1),
(1 ,1 ,12343 , 23, "2020-01-23 12:45:56" ,1),
(1 ,1 ,12343 , 23, "2020-01-23 12:45:56" ,1);
#