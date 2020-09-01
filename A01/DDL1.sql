--Cria o banco de dados ClinicaVeterinario
CREATE DATABASE ClinicaVeterinario;

--Usa o banco de dados ClinicaVeterinario
USE ClinicaVeterinario;

--Apaga o banco de dados ClinicaVeterinario
DROP DATABASE ClinicaVeterinario

/* IDENTITY - Gera id automaticamente, incrementando-os*/
--Cria uma entidade(tabela) DonoPet
CREATE TABLE DonoPet (
IdDonoPet INT PRIMARY KEY IDENTITY NOT NULL,
NOME VARCHAR(20)
);

CREATE TABLE ClinicaVet (
IdClinicaVet INT PRIMARY KEY IDENTITY NOT NULL,
NOMECLINICA VARCHAR(100),
ENDERECO VARCHAR(100)
);

CREATE TABLE Veterin (
IdVeterinario INT PRIMARY KEY IDENTITY NOT NULL,
NOMEVET VARCHAR(20),
CRN VARCHAR(20),
/*Para adicionar uma FK em uma entidade é necessário usar o comando REFERENCES, 
ele busca uma entidade pelo nome e Id, no caso abaixo está buscando referência
na tabela ClinicaVet e IdClinicaVet*/
IdClinicaVet INT FOREIGN KEY REFERENCES ClinicaVet (IdClinicaVet)
);

CREATE TABLE TipoPet (
IdTipoPet INT PRIMARY KEY IDENTITY NOT NULL,
NOMETIPO VARCHAR(50)
);

CREATE TABLE Pet (
IdPet INT PRIMARY KEY IDENTITY NOT NULL,
NOMEPET VARCHAR(50),
NASCIMENTO DATETIME,
IdTipoPet INT FOREIGN KEY REFERENCES TipoPet (IdTipoPet),
IdDonoPet INT FOREIGN KEY REFERENCES DonoPet (IdDonoPet)
);

CREATE TABLE Avaliar (
IdAvaliar INT PRIMARY KEY IDENTITY NOT NULL,
Avaliacao VARCHAR(20)
);

CREATE TABLE Atendimento (
IdAtendimento INT PRIMARY KEY IDENTITY NOT NULL,
SERVICO VARCHAR(50),
VALOR MONEY,
IdPet INT FOREIGN KEY REFERENCES Pet (IdPet),
IdTipoPet INT FOREIGN KEY REFERENCES TipoPet (IdTipoPet),
DATASERVICO DATETIME,
IdAvaliar INT FOREIGN KEY REFERENCES Avaliar (IdAvaliar)
);

