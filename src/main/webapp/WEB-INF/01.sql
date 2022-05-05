DROP DATABASE IF EXISTS my_db;
CREATE DATABASE IF NOT EXISTS my_db;

USE my_db;

CREATE TABLE account
(
    id        INT NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(15),
    lastName  VARCHAR(25),
    age       INT,
    email     VARCHAR(30),
    PRIMARY KEY (id)
);

INSERT INTO my_db.account (firstName, lastName, age, email)
VALUES ('Vladimir', 'Vladimirov', 98, 'vladimir@gmail.com'),
       ('Svetlana', 'Svetina', 26, 'svetlana@gmail.com');

SELECT * FROM account;