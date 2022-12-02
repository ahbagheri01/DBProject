CREATE TABLE `manager`(
    `username` VARCHAR(255) NOT NULL,
    `password_hash` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `manager` ADD PRIMARY KEY `manager_username_primary`(`username`);
CREATE TABLE `passenger`(
    `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `first name` VARCHAR(255) NOT NULL,
    `last name` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `passenger` ADD PRIMARY KEY `passenger_id_primary`(`ID`);
CREATE TABLE `airline`(
    `ID` INT NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `manager(managing): manager` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `airline` ADD PRIMARY KEY `airline_id_primary`(`ID`);
ALTER TABLE
    `airline` ADD INDEX `airline_manager(managing): manager_index`(`manager(managing): manager`);
CREATE TABLE `supervisor`(
    `username` VARCHAR(255) NOT NULL,
    `password hash` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `supervisor` ADD PRIMARY KEY `supervisor_username_primary`(`username`);
CREATE TABLE `flight`(
    `flight number` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `airline(HAS): airline` INT NOT NULL
);
ALTER TABLE
    `flight` ADD PRIMARY KEY `flight_flight number_primary`(`flight number`);
ALTER TABLE
    `flight` ADD INDEX `flight_airline(has): airline_index`(`airline(HAS): airline`);
CREATE TABLE `ticket`(
    `ticket number` INT NOT NULL,
    `passenger(HAS): passenger` INT NOT NULL,
    `flight(HAS): flight` INT NOT NULL,
    `passport number` INT NOT NULL,
    `seat number` INT NOT NULL,
    `date` DATE NOT NULL,
    `ticket_type(HAS): ticket type` VARCHAR(255) NOT NULL,
    `survey(HAS) : survey` INT NULL
);
ALTER TABLE
    `ticket` ADD PRIMARY KEY `ticket_ticket number_primary`(`ticket number`);
ALTER TABLE
    `ticket` ADD PRIMARY KEY `ticket_passenger(has): passenger_primary`(`passenger(HAS): passenger`);
ALTER TABLE
    `ticket` ADD PRIMARY KEY `ticket_flight(has): flight_primary`(`flight(HAS): flight`);
ALTER TABLE
    `ticket` ADD INDEX `ticket_ticket_type(has): ticket type_index`(`ticket_type(HAS): ticket type`);
ALTER TABLE
    `ticket` ADD INDEX `ticket_survey(has) : survey_index`(`survey(HAS) : survey`);
CREATE TABLE `survey`(
    `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `manager: manager` VARCHAR(255) NOT NULL,
    `flight: flight` INT NOT NULL,
    `active` TINYINT(1) NOT NULL,
    `start date` DATE NOT NULL,
    `end data` DATE NULL,
    `airline(HAS): airline` INT NOT NULL
);
ALTER TABLE
    `survey` ADD PRIMARY KEY `survey_id_primary`(`ID`);
ALTER TABLE
    `survey` ADD INDEX `survey_manager: manager_index`(`manager: manager`);
ALTER TABLE
    `survey` ADD INDEX `survey_flight: flight_index`(`flight: flight`);
ALTER TABLE
    `survey` ADD INDEX `survey_airline(has): airline_index`(`airline(HAS): airline`);
CREATE TABLE `question`(
    `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `mandatory` TINYINT(1) NOT NULL,
    `ticket_type` VARCHAR(255) NULL,
    `survey(HAS): survey` INT NOT NULL
);
ALTER TABLE
    `question` ADD PRIMARY KEY `question_id_primary`(`ID`);
ALTER TABLE
    `question` ADD INDEX `question_survey(has): survey_index`(`survey(HAS): survey`);
CREATE TABLE `ticket type`(
    `type` VARCHAR(255) NOT NULL,
    `price` INT NOT NULL
);
ALTER TABLE
    `ticket type` ADD PRIMARY KEY `ticket type_type_primary`(`type`);
CREATE TABLE `answer`(
    `ticket(HAS) : ticket` INT NOT NULL,
    `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `question: question` INT NOT NULL,
    `date` DATE NOT NULL
);
ALTER TABLE
    `answer` ADD PRIMARY KEY `answer_ticket(has) : ticket_primary`(`ticket(HAS) : ticket`);
ALTER TABLE
    `answer` ADD PRIMARY KEY `answer_id_primary`(`ID`);
ALTER TABLE
    `answer` ADD INDEX `answer_question: question_index`(`question: question`);
CREATE TABLE `assistance(r)`(
    `admin manager: manager` VARCHAR(255) NOT NULL,
    `assistance: manager` VARCHAR(255) NOT NULL,
    `survey: survey` INT NOT NULL
);
ALTER TABLE
    `assistance(r)` ADD PRIMARY KEY `assistance(r)_admin manager: manager_primary`(`admin manager: manager`);
ALTER TABLE
    `assistance(r)` ADD PRIMARY KEY `assistance(r)_assistance: manager_primary`(`assistance: manager`);
ALTER TABLE
    `assistance(r)` ADD PRIMARY KEY `assistance(r)_survey: survey_primary`(`survey: survey`);
CREATE TABLE `approving(r)`(
    `question: questions` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `supervisor: supervisor` INT NOT NULL,
    `data` DATE NOT NULL
);
ALTER TABLE
    `approving(r)` ADD PRIMARY KEY `approving(r)_question: questions_primary`(`question: questions`);
ALTER TABLE
    `approving(r)` ADD PRIMARY KEY `approving(r)_supervisor: supervisor_primary`(`supervisor: supervisor`);
CREATE TABLE `q_descriptive`(
    `question : questions` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `txt` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `q_descriptive` ADD PRIMARY KEY `q_descriptive_question : questions_primary`(`question : questions`);
CREATE TABLE `q_multi_choice`(
    `questions: questions` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `txt` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `q_multi_choice` ADD PRIMARY KEY `q_multi_choice_questions: questions_primary`(`questions: questions`);
CREATE TABLE `option`(
    `q_multi_choice: q_multi_choice` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `number` INT NOT NULL,
    `txt` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `option` ADD PRIMARY KEY `option_q_multi_choice: q_multi_choice_primary`(`q_multi_choice: q_multi_choice`);
ALTER TABLE
    `option` ADD PRIMARY KEY `option_number_primary`(`number`);