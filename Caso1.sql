CREATE DATABASE Empresa;
\c Empresa;

CREATE TABLE Departamento (
    ID_Depto SERIAL NOT NULL,
    Nombre_Depto VARCHAR(150)
    PRIMARY KEY (ID_Depto)
);

CREATE TABLE Trabajador(
    RUT VARCHAR (12) NOT NULL,
    ID_Dpto INT NOT NULL,
    Nombre VARCHAR(150),
    Direccion VARCHAR(200),
    PRIMARY KEY (RUT),
    FOREIGN KEY (ID_Dpto) REFERENCES Departamento(ID_Depto)
);

CREATE TABLE Liquidacion(
    ID_Liquidacion SERIAL NOT NULL,
    RUT_Trabajador VARCHAR (12) NOT NULL,
    URL_LIQUIDACION VARCHAR (700)
    PRIMARY KEY (ID_Liquidacion)
    FOREIGN KEY (RUT_Trabajador) REFERENCES Trabajador(RUT)
);