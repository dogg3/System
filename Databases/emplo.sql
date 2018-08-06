--
-- File generated with SQLiteStudio v3.1.1 on Mon Aug 6 14:55:18 2018
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Department
CREATE TABLE Department (department_id INTEGER PRIMARY KEY, department_name VARCHAR);
INSERT INTO Department (department_id, department_name) VALUES (1, 'Sales');
INSERT INTO Department (department_id, department_name) VALUES (2, 'Research');
INSERT INTO Department (department_id, department_name) VALUES (3, 'Support');

-- Table: Employee
CREATE TABLE Employee (national_insurance VARCHAR (10) PRIMARY KEY, first_name VARCHAR (255), last_name VARCHAR (255), department_id INTEGER REFERENCES Department (department_id) ON DELETE CASCADE ON UPDATE CASCADE);
INSERT INTO Employee (national_insurance, first_name, last_name, department_id) VALUES ('UE4859385', 'Brian', 'Griffin', 1);
INSERT INTO Employee (national_insurance, first_name, last_name, department_id) VALUES ('CJ9869458', 'Stewie', 'Griffin', 1);
INSERT INTO Employee (national_insurance, first_name, last_name, department_id) VALUES ('KN4895064', 'Chris', 'Griffin', 2);
INSERT INTO Employee (national_insurance, first_name, last_name, department_id) VALUES ('JT4649602', 'Meg', 'Griffin', 2);
INSERT INTO Employee (national_insurance, first_name, last_name, department_id) VALUES ('SR3589465', 'Lois', 'Griffin', 2);
INSERT INTO Employee (national_insurance, first_name, last_name, department_id) VALUES ('ED3452456', 'Peter', 'Griffin', 3);
INSERT INTO Employee (national_insurance, first_name, last_name, department_id) VALUES ('EZ96536342', 'Homer', 'Simpson', 3);
INSERT INTO Employee (national_insurance, first_name, last_name, department_id) VALUES ('KT56447821', 'Marge', 'Simpson', 1);
INSERT INTO Employee (national_insurance, first_name, last_name, department_id) VALUES ('PR51367549', 'Bart', 'Simpson', 2);
INSERT INTO Employee (national_insurance, first_name, last_name, department_id) VALUES ('BG90684304', 'Lisa', 'Simpson', 3);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
