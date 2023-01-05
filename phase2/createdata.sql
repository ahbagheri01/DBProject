USE dbproject;
SELECT * FROM manager;
SELECT * FROM 
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
