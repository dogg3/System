--
-- File generated with SQLiteStudio v3.1.1 on Sat Jul 7 00:09:17 2018
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: event
CREATE TABLE event (petname VARCHAR (20) REFERENCES pet (petname) ON DELETE CASCADE ON UPDATE CASCADE, eventdate DATE, eventtype VARCHAR (15), remark VARCHAR (255), PRIMARY KEY (petname, eventdate, eventtype));
INSERT INTO event (petname, eventdate, eventtype, remark) VALUES ('Fluffy', '1995-05-15', 'litter', '4 kittens, 3 female, 1 male');
INSERT INTO event (petname, eventdate, eventtype, remark) VALUES ('Buffy', '1993-06-23', 'litter', '5 puppies, 2 female, 3 male');
INSERT INTO event (petname, eventdate, eventtype, remark) VALUES ('Buffy', '1994-06-19', 'litter', '3 puppies, 3 female');
INSERT INTO event (petname, eventdate, eventtype, remark) VALUES ('Chirpy', '1999-03-21', 'vet', 'needed beak straightened');
INSERT INTO event (petname, eventdate, eventtype, remark) VALUES ('Slim', '1997-08-03', 'vet', 'broken rib');
INSERT INTO event (petname, eventdate, eventtype, remark) VALUES ('Bowser', '1991-10-12', 'kennel', NULL);
INSERT INTO event (petname, eventdate, eventtype, remark) VALUES ('Fang', '1991-10-12', 'kennel', NULL);
INSERT INTO event (petname, eventdate, eventtype, remark) VALUES ('Fang', '1998-08-28', 'birthday', 'Gave him a new chew toy');
INSERT INTO event (petname, eventdate, eventtype, remark) VALUES ('Claws', '1998-03-17', 'birthday', 'Gave him a new flea collar');
INSERT INTO event (petname, eventdate, eventtype, remark) VALUES ('Whistler', '1998-12-09', 'birthday', 'First birthday');

-- Table: pet
CREATE TABLE pet (petname VARCHAR (20) PRIMARY KEY, owner VARCHAR (45), species VARCHAR (45), gender CHAR (1), birth DATE, death DATE);
INSERT INTO pet (petname, owner, species, gender, birth, death) VALUES ('Fluffy', 'Harold', 'cat', 'f', '1993-02-04', NULL);
INSERT INTO pet (petname, owner, species, gender, birth, death) VALUES ('Claws', 'Gwen', 'cat', 'm', '1994-03-17', NULL);
INSERT INTO pet (petname, owner, species, gender, birth, death) VALUES ('Buffy', 'Harold', 'dog', 'f', '1989-05-13', NULL);
INSERT INTO pet (petname, owner, species, gender, birth, death) VALUES ('Fang', 'Benny', 'dog', 'm', '1990-08-27', NULL);
INSERT INTO pet (petname, owner, species, gender, birth, death) VALUES ('Bowser', 'Diane', 'dog', 'm', '1979-08-31', '1995-07-29');
INSERT INTO pet (petname, owner, species, gender, birth, death) VALUES ('Chirpy', 'Gwen', 'bird', 'f', '1998-09-11', NULL);
INSERT INTO pet (petname, owner, species, gender, birth, death) VALUES ('Whistler', 'Gwen', 'bird', NULL, '1997-12-09', NULL);
INSERT INTO pet (petname, owner, species, gender, birth, death) VALUES ('Slim', 'Benny', 'snake', 'm', '1996-04-29', NULL);
INSERT INTO pet (petname, owner, species, gender, birth, death) VALUES ('Puffball', 'Diane', 'hamster', 'f', '1999-03-30', NULL);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
