-- create tasks table
CREATE TABLE tasks (
    id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    start_date DATE,
    due_date DATE
);

-- insert into tasks
INSERT INTO tasks(id, title)
# VALUES(1, "NEW DAY");
VALUES(2, "example");


SELECT * FROM tasks;

