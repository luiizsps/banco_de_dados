CREATE TABLE friends (
  id INT PRIMARY KEY,
  name TEXT,
  birthday DATE
);

INSERT INTO friends(id, name, birthday) VALUES (1, "Ororo Munroe", "1940-05-30");

SELECT * FROM friends;

INSERT INTO friends(id, name, birthday) VALUES (2, "Vitor", "1998-10-20");
INSERT INTO friends(id, name, birthday) VALUES (3, "Lucas", "2002-03-15");

UPDATE friends SET name = "Storm" WHERE id = 1;

ALTER TABLE friends ADD COLUMN email TEXT;

UPDATE friends SET email = "vitor@gmail.com" WHERE id = 2;
UPDATE friends SET email = "lucas@gmail.com" WHERE id = 3;
UPDATE friends SET email = "storm@codecademy.com" WHERE id = 1;

DELETE FROM friends WHERE id = 1;

SELECT * FROM friends;
