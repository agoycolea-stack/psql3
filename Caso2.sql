CREATE DATABASE Colegio;
\c colegio;

CREATE TABLE Curso(
    ID SERIAL NOT NULL,
    Nombre_Curso VARCHAR (100)
    PRIMARY KEY (ID_Curso)
);

CREATE TABLE Alumno(
    RUT VARCHAR(12) NOT NULL,
    ID_Curso INTEGER NOT NULL,
    Nombre_Alumno VARCHAR(100),
    PRIMARY KEY (RUT),
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID)
);

CREATE TABLE Profesor(
    ID_Profesor SERIAL NOT NULL,
    Departamento VARCHAR (50),
    Nombre_Profesor VARCHAR(100),
    PRIMARY KEY (ID_Profesor)
);

CREATE TABLE Prueba(
    ID_Prueba SERIAL NOT NULL,
    RUT VARCHAR(12) NOT NULL,
    ID_Profe INTEGER NOT NULL,
    ID_Curso INTEGER NOT NULL,
    Puntaje INTEGER,
    PRIMARY KEY (ID_Prueba),
    FOREIGN KEY (RUT) REFERENCES Alumno(RUT),
    FOREIGN KEY (ID_Profe) REFERENCES Profesor(ID_Profesor),
    FOREIGN KEY (ID_Curso) REFERENCES Curso(ID_Curso)
);