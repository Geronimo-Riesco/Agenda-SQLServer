/*  --------------------- Creando la Base de Datos Agenda ---------------------------------------  */

CREATE DATABASE Agenda;

/*  --------------------- Usando la Base de Datos Agenda -----------------------------------------  */

USE Agenda;

/*  --------------------- Creando la tabla Contactos (DDL) --------------------------------------  */

CREATE TABLE Contactos (
    contacto_id int IDENTITY(1,1) primary key,
    nombre varchar(70) NOT NULL,
    apellido varchar(70) NOT NULL,
    fecha_nacimiento date NOT NULL,
    domicilio varchar(100) NOT NULL,
    empresa varchar(100) NOT NULL
);

/*  --------------------- Creando la tabla Telefonos (DDL) ----------------------------------  */

CREATE TABLE Telefonos (
    telefonos_id int IDENTITY(1,1) primary key,
    numero int NOT NULL,
    compañia varchar(50) NOT NULL,
    tipo varchar(30) NOT NULL,
	contacto_id int FOREIGN KEY REFERENCES Contactos(contacto_id)
);

/*  --------------------- Creando la tabla Emails (DDL) ---------------------------------  */

CREATE TABLE Emails (
    email_id int IDENTITY(1,1) primary key,
    email varchar (70) NOT NULL,
    tipo varchar(30) NOT NULL,
	contacto_id int FOREIGN KEY REFERENCES Contactos(contacto_id)
);

/*  --------------------- Insertando registros en la tabla Contactos (DML)  -------------------------  */ 

INSERT INTO Contactos (nombre, apellido, fecha_nacimiento, domicilio, empresa)
VALUES ('Lilia', 'Carabajal', '2003-08-13', 'Av Rivadavia 2100', 'Microsoft');

INSERT INTO Contactos (nombre, apellido, fecha_nacimiento, domicilio, empresa)
VALUES ('Lucas', 'Gomez', '1994-04-14', 'Av Córdoba 2110', 'Google');

INSERT INTO Contactos (nombre, apellido, fecha_nacimiento, domicilio, empresa)
VALUES ('Luciano', 'Riesco', '2001-08-12', 'Av Santa Fe 4100', 'IBM');


/*  --------------------- Insertando registros en la tabla Telefonos (DML)  -------------------------  */ 

INSERT INTO Telefonos (numero, compañia, tipo, contacto_id)
VALUES (1125528100, 'Personal', 'Trabajo', 1);

INSERT INTO Telefonos (numero, compañia, tipo, contacto_id)
VALUES (1143562345, 'Movistar', 'Personal', 2);

INSERT INTO Telefonos (numero, compañia, tipo, contacto_id)
VALUES (1156432856, 'Claro', 'Trabajo', 3);

/*  --------------------- Insertando registros en la tabla Emails (DML)  -------------------------  */ 

INSERT INTO Emails (email, tipo, contacto_id)
VALUES ('Luciano@gmail.com', 'Trabajo', 3);

INSERT INTO Emails (email, tipo, contacto_id)
VALUES ('Lucas@gmail.com', 'Personal', 2);

INSERT INTO Emails (email, tipo, contacto_id)
VALUES ('Lilia@gmail.com', 'Trabajo', 1);

/*  --------------------- Consultando tablas (DML) -------------------------  */  

SELECT * FROM Contactos;

SELECT * FROM Telefonos;

SELECT * FROM Emails;

/*  --------------------- Eliminando registros (DDL) -------------------------  */  

TRUNCATE TABLE Contactos;

TRUNCATE TABLE Telefonos;

TRUNCATE TABLE Emails;

/*  --------------------- Eliminando tablas (DDL) -------------------------  */  

DROP TABLE Contactos;

DROP TABLE Telefonos;

DROP TABLE Emails;