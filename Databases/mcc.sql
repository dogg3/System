--
-- File generated with SQLiteStudio v3.1.1 on Wed Jun 27 00:29:25 2018
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Ground
CREATE TABLE Ground (
	ground_name VARCHAR(20) PRIMARY KEY,
	g_street VARCHAR(20),
	g_town VARCHAR(20),
	g_postcode VARCHAR(8));

-- Table: Match_performance
CREATE TABLE Match_performance (
	registration_number VARCHAR(4),
	match_date INTEGER,
	batting_score SMALLINT,
	FOREIGN KEY (registration_number) REFERENCES Player (registration_number),
	FOREIGN KEY (match_date) REFERENCES Matches (match_date),
	PRIMARY KEY (registration_number, match_date));

-- Table: Matches
CREATE TABLE Matches (
	match_date INTEGER PRIMARY KEY,
	opposing_team VARCHAR(20),
	ground_name VARCHAR(20),
	FOREIGN KEY (ground_name) REFERENCES Ground (ground_name));

-- Table: Player
CREATE TABLE Player (
	registration_number VARCHAR(4) PRIMARY KEY,
	name VARCHAR(40),
	age TINYINT,
	p_street VARCHAR(20),
	p_town VARCHAR(20),
	p_postcode VARCHAR(8));

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
