select * from actorlist;
UPDATE actorlist set age=60 where actorId=4;

ALTER TABLE actorlist RENAME COLUMN age to actorage;
ALTER TABLE actorlist ADD COLUMN (hi int, hiii int);
ALTER TABLE actorlist MODIFY one char(10);
ALTER TABLE actorlist add one varchar(10) first;
ALTER TABLE actorlist DROP COLUMN hii;

ALTER TABLE actorslist RENAME TO actors;
DROP TABLE actors;
DROP DATABASE marchbatch;

DROP TABLE cricketer;