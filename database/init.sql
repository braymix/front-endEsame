CREATE DATABASE IF NOT EXISTS podistica;
USE podistica;

DROP TABLE IF EXISTS Corridore;
CREATE TABLE Corridore (
	Id INTEGER AUTO_INCREMENT PRIMARY KEY,
	Identificativo varchar(50)
);

DROP TABLE IF EXISTS Gara;
CREATE TABLE Gara (
	Id INTEGER AUTO_INCREMENT PRIMARY KEY,
	Titolo varchar(255),
	Identificativo varchar(50),
	Luogo varchar(255)
);

DROP TABLE IF EXISTS Tempo;
CREATE TABLE Tempo (
	Id INTEGER AUTO_INCREMENT PRIMARY KEY,
	Tempo float,
	Corridore INTEGER not null,
	Gara INTEGER not null,
	constraint CorridoreTempo
		foreign key (Corridore) references Corridore (Id),
	constraint GaraTempo
		foreign key (Gara) references Gara (Id)
);

