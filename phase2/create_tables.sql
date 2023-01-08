DROP DATABASE IF EXISTS dbproject;
CREATE DATABASE IF NOT EXISTS dbproject;
USE dbproject;
CREATE TABLE IF NOT EXISTS manager(
    id int AUTO_INCREMENT PRIMARY KEY, # added for convinient
    username varchar(20) NOT NULL UNIQUE,
    password varchar(128) NOT NULL
    );
CREATE TABLE IF NOT EXISTS passenger(
    id int AUTO_INCREMENT PRIMARY KEY, # added for convinient
    firstname varchar(20) NOT NULL,
    lastname varchar(20) NOT NULL
    );
    
CREATE TABLE IF NOT EXISTS airline(
    id int AUTO_INCREMENT PRIMARY KEY, # added for convinient
    name varchar(20) NOT NULL,
    managerID int NOT NULL,
  	FOREIGN KEY (managerID) REFERENCES manager(id)
    );

CREATE TABLE IF NOT EXISTS flight(
    flight_number int AUTO_INCREMENT PRIMARY KEY, # added for convinient
  	airlineid int NOT NULL,
  	FOREIGN KEY (airlineid) REFERENCES airline(id)
    );
    
CREATE TABLE IF NOT EXISTS ticket_type(
    typeid int AUTO_INCREMENT PRIMARY KEY, # added for convinient
  	type_string varchar(20),
  	price int NOT NULL
    );
    
CREATE TABLE IF NOT EXISTS survey(
    id int AUTO_INCREMENT PRIMARY KEY, # added for convinient
  	managerid int NOT NULL,
  	flightid int NOT NULL,
  	active BOOLEAN NOT NULL DEFAULT false,
  	createtion_date DATETIME NOT NULL,
  	start_data DATETIME,
  	end_date DATETIME,
  	airlineid int NOT NULL,
  	FOREIGN KEY(managerid) REFERENCES manager(id),
  	FOREIGN KEY(flightid) REFERENCES flight(flight_number),
  	FOREIGN KEY(airlineid) REFERENCES airline(id)
    );
    
CREATE TABLE IF NOT EXISTS ticket(
    ticket_number int AUTO_INCREMENT PRIMARY KEY, # added for convinient
  	passenger_id int NOT NULL,
  	flight_number int NOT NULL,
  	passport_number int NOT NULL,
  	seat_number int NOT NULL,
  	ticket_date DATETIME NOT NULL,
  	ticket_typeid int NOT NULL,	
  	surveyid int,
    participated BOOLEAN NOT NULL DEFAULT false,
    UNIQUE (passenger_id,flight_number),
   	FOREIGN KEY(passenger_id) REFERENCES passenger(id),
  	FOREIGN KEY(flight_number) REFERENCES flight(flight_number), 
  	FOREIGN KEY(ticket_typeid) REFERENCES ticket_type(typeid),
  	FOREIGN KEY(surveyid) REFERENCES survey(id)
    );

CREATE TABLE IF NOT EXISTS question(
    id int AUTO_INCREMENT PRIMARY KEY, # added for convinient
    mandatory BOOLEAN DEFAULT false,
    ticket_typeid int NOT NULL,
    surveyid int NOT NULL,
    FOREIGN KEY(surveyid) REFERENCES survey(id),
    FOREIGN KEY(ticket_typeid) REFERENCES ticket_type(typeid)
    );
CREATE TABLE IF NOT EXISTS answer(
    id int AUTO_INCREMENT PRIMARY KEY, # added for convinient
    ticketid int NOT NULL,
    questionid int NOT NULL,
    createtion_date DATETIME NOT NULL,
    FOREIGN KEY(ticketid) REFERENCES ticket(ticket_number),
    FOREIGN KEY(questionid) REFERENCES question(id)
    );
CREATE TABLE IF NOT EXISTS supervisor(
    id int AUTO_INCREMENT PRIMARY KEY, # added for convinient
    username varchar(20) NOT NULL UNIQUE,
    password varchar(128) NOT NULL
    );
CREATE TABLE IF NOT EXISTS q_multiple_choice(
    questionid int PRIMARY KEY,
    txt varchar(100) NOT NULL,
    FOREIGN KEY(questionid) REFERENCES question(id)
    );

CREATE TABLE IF NOT EXISTS q_descriptive(
    questionid int PRIMARY KEY,
    txt varchar(100) NOT NULL,
    FOREIGN KEY(questionid) REFERENCES question(id)
    );
CREATE TABLE IF NOT EXISTS a_descriptive(
    answerid int PRIMARY KEY, # added for convinient
    txt varchar(100) NOT NULL,
    FOREIGN KEY(answerid) REFERENCES answer(id),
    questionid int,
    FOREIGN KEY(questionid) REFERENCES question(id)
    );
CREATE TABLE IF NOT EXISTS options(
    questionid int, # added for convinient
    number int,
    txt varchar(100) NOT NULL,
    FOREIGN KEY(questionid) REFERENCES question(id),
    PRIMARY KEY(questionid,number)
    );
CREATE TABLE IF NOT EXISTS a_multi_choice(
    answerid int PRIMARY KEY, # added for convinient
    FOREIGN KEY(answerid) REFERENCES answer(id),
    questionid int,
    number int,
    FOREIGN KEY(questionid) REFERENCES question(id),
    UNIQUE (answerid,questionid,number)
    );
CREATE TABLE IF NOT EXISTS assistance(
    adminid int,
    assistanceid int,
    surveyid int,
    PRIMARY KEY(adminid,assistanceid,surveyid),
    FOREIGN KEY(adminid) REFERENCES manager(id),
    FOREIGN KEY(assistanceid) REFERENCES manager(id),
    FOREIGN KEY(surveyid) REFERENCES survey(id)
    );
CREATE TABLE IF NOT EXISTS approving(
    supervisorid int NOT NULL,
    questionid int NOT NULL,
    approve_date DATETIME NOT NULL,
    PRIMARY KEY(supervisorid,questionid),
    FOREIGN KEY(supervisorid) REFERENCES supervisor(id),
    FOREIGN KEY(questionid) REFERENCES question(id)
    );

