
SELECT * FROM dojos;

INSERT INTO dojos (name)
VALUES ("dojo4"), ("dojo5"), ("dojo6");

-- SET SQL_SAFE_UPDATES = 0;
-- DELETE FROM dojos;


SELECT * FROM dojos
LEFT JOIN ninjas ON dojos.id = ninjas.dojo_id
WHERE dojos.id = 4; 

SELECT * FROM dojos 
WHERE dojos.id = (SELECT dojo_id FROM ninjas ORDER by dojo_id DESC LIMIT 1);