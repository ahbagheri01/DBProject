CREATE TABLE `a_descriptive`(
    `answer: answer` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `ans txt` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `a_descriptive` ADD PRIMARY KEY `a_descriptive_answer: answer_primary`(`answer: answer`);
CREATE TABLE `a_multi_choice`(
    `answer: answer` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `option_q_multi_choice: option` INT NOT NULL,
    `option_num: option` INT NOT NULL
);
ALTER TABLE
    `a_multi_choice` ADD PRIMARY KEY `a_multi_choice_answer: answer_primary`(`answer: answer`);
ALTER TABLE
    `a_multi_choice` ADD INDEX `a_multi_choice_option_q_multi_choice: option_index`(`option_q_multi_choice: option`);
ALTER TABLE
    `a_multi_choice` ADD INDEX `a_multi_choice_option_num: option_index`(`option_num: option`);