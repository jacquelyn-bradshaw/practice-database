-- obtain the READ lock
LOCK TABLE conversation_log READ;

-- try inserting new values again - it would FAIL, becuase we have obtained READ lock in this session
INSERT INTO conversation_log
(message,author)
VALUES('I want to insert a new log message', 'student2');

-- drop all locks
UNLOCK TABLES;

-- try inserting messages again
INSERT INTO conversation_log
(message,author)
VALUES('I want to insert a new log message', 'student2');

/* NB: if we would have commented to the DB from a different session and
tried to insert a message/values it would NOT Error, but it would be 'suspended',
i.e. put in the queue, waiting for the LOCK to be dropped. */

SELECT * FROM conversation_log;
