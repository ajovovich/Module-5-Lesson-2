CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

--Task 1: SQL Data Insertion

INSERT INTO Members (id, name, age) VALUES (1, 'Jane Doe', 28);
INSERT INTO Members (id, name, age) VALUES (2, 'John Smith', 35);
INSERT INTO Members (id, name, age) VALUES (3, 'Alice Johnson', 22);


INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) 
VALUES (1, 1, '2024-07-21', 'Morning', 'Yoga');
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) 
VALUES (2, 2, '2024-07-22', 'Afternoon', 'Weightlifting');
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) 
VALUES (3, 3, '2024-07-23', 'Evening', 'Cardio');

--Task 2: SQL Data Update

UPDATE WorkoutSessions 
SET session_time = 'Evening' 
WHERE member_id = 1 AND session_time = 'Morning';

--Task 3: SQL Data Deletion

DELETE FROM WorkoutSessions 
WHERE member_id = 2;

DELETE FROM Members 
WHERE id = 2;