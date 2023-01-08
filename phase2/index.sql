CREATE INDEX ansdate ON answer (createtion_date) USING BTREE;

CREATE INDEX a_multi_choice1 ON a_multi_choice (questionid) USING HASH;
CREATE INDEX a_multi_choice2 ON a_multi_choice (answerid) USING HASH;
CREATE INDEX a_multi_choice3 ON a_multi_choice (number) USING HASH;

CREATE INDEX options1 ON options (questionid) USING HASH;
CREATE INDEX options2 ON options (number) USING HASH;

CREATE INDEX survey1 ON survey (managerid) USING HASH;

CREATE INDEX answer1 ON answer (ticketid) USING HASH;

CREATE INDEX q_multiple_choice1 ON q_multiple_choice (questionid) USING HASH;
