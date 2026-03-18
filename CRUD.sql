INSERT INTO actorlist VALUES (1,"Vijay",52), (2,"Allu Arjun",42);

INSERT INTO actorlist VALUES (3,"Ajith",53);

SELECT * from actorlist;
SELECT * from actorlist WHERE name="Vijay";
DELETE FROM actorlist WHERE actorId=3;
UPDATE actorlist SET age=43 WHERE actorId=2;

DELete FROM actorlist;
truncate table actorlist;

SET SQL_SAFE_UPDATES=1;