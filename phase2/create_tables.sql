CREATE DATABASE IF NOT EXISTS dbproject;
USE dbproject;
CREATE TABLE IF NOT EXISTS manager(
    username varchar(20),
    id int NOT NULL UNIQUE, # added for convinient
    password varchar(64) NOT NULL,
    PRIMARY KEY (username)
    );

CREATE TABLE IF NOT EXISTS passenger(
    id int,
    firstname varchar(20) NOT NULL,
    lastname varchar(20) NOT NULL,
    PRIMARY KEY (id)
    );

CREATE TABLE IF NOT EXISTS airline(
    id int,
    name varchar(64) NOT NULL,
    managerID int NOT NULL,
    PRIMARY KEY (id),
    );

# DROP TABLE manager;
SELECT * FROM airline;
