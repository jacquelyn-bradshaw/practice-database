CREATE DATABASE practice;
USE practice;

CREATE TABLE conversation_log (
    id INT NOT NULL AUTO_INCREMENT,
    message VARCHAR(50) NOT NULL,
    author VARCHAR(25) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO conversation_log
(message,author)
VALUES('I am tweeting', 'student1');

-- check what we have in the table so far
SELECT * FROM conversation_log;
