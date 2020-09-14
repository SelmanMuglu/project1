CREATE DATABASE project1;

CREATE TABLE account(
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(250) UNIQUE NOT NULL,
    password VARCHAR(250) NOT NULL,
    primary key(id)
);

CREATE TABLE Persoon(
    id INT NOT NULL AUTO_INCREMENT,
    voornaam VARCHAR(250) NOT NULL,
    tussenvoegsel VARCHAR(250),
    achternaam VARCHAR(250) NOT NULL,
    account_id INT NOT NULL,
    primary key(id),
    foreign key(account_id) REFERENCES account(id)
);