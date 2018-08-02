--
-- File generated with SQLiteStudio v3.1.1 on Sat Jul 7 00:07:23 2018
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Employee
CREATE TABLE Employee (national_insurance VARCHAR (10) PRIMARY KEY, first_name VARCHAR (255), last_name VARCHAR (255));
INSERT INTO Employee (national_insurance, first_name, last_name) VALUES ('UE4859385', 'Brian', 'Griffin');
INSERT INTO Employee (national_insurance, first_name, last_name) VALUES ('CJ9869458', 'Stewie', 'Griffin');
INSERT INTO Employee (national_insurance, first_name, last_name) VALUES ('KN4895064', 'Chris', 'Griffin');
INSERT INTO Employee (national_insurance, first_name, last_name) VALUES ('JT4649602', 'Meg', 'Griffin');
INSERT INTO Employee (national_insurance, first_name, last_name) VALUES ('SR3589465', 'Lois', 'Griffin');
INSERT INTO Employee (national_insurance, first_name, last_name) VALUES ('ED3452456', 'Peter', 'Griffin');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
