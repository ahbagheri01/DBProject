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
  	price int NOT NULL,
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
   	FOREIGN KEY(passenger_id) REFERENCES passenger(id),
  	FOREIGN KEY(flight_number) REFERENCES flight(flight_number), 
  	FOREIGN KEY(ticket_typeid) REFERENCES ticket_type(typeid),
  	FOREIGN KEY(surveyid) REFERENCES survey(id), 
    );
    