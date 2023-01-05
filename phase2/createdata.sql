USE dbproject;
# insert data to mabager
INSERT INTO manager(username,password) VALUES
("amirhossein","amir1401"),
("amir","amir1401"),
("bardia","bardia"),
("hossein","hossein"),
("ali","ali130");

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
("mahan",12),
("qatar",1),
("dubai",13);
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
#-----------
# insert data to ticket
INSERT INTO ticket(passenger_id,flight_number,
passport_number,seat_number,ticket_date,ticket_typeid) VALUES
("business",1000),
("economy",500);
#
