CREATE TABLE Asignatura (
  codigo_asignatura INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  numero_horas INT NOT NULL,
  dni_profesor VARCHAR(20),
  codigo_curso INT,
  FOREIGN KEY (dni_profesor) REFERENCES Profesor(dni),
  FOREIGN KEY (codigo_curso) REFERENCES Curso(codigo_curso)
);

REATE TABLE Profesor (
  dni VARCHAR(20) PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  direccion VARCHAR(100) NOT NULL,
  calle VARCHAR(50) NOT NULL,
  numero_casa VARCHAR(10) NOT NULL,
  codigo_postal VARCHAR(10) NOT NULL,
  telefono VARCHAR(15) NOT NULL
);


CREATE TABLE Curso (
  codigo_curso INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  dni_profesor VARCHAR(20),
  FOREIGN KEY (dni_profesor) REFERENCES Profesor(dni)
);

CREATE TABLE Clase (
  codigo_clase INT PRIMARY KEY,
  numero_plantas INT,
  numero_mesas INT
);

CREATE TABLE Enseña (
  dia VARCHAR(20),
  dni_profesor VARCHAR(20),
  codigo_asignatura INT,
  PRIMARY KEY (dia, dni_profesor, codigo_asignatura),
  FOREIGN KEY (dni_profesor) REFERENCES Profesor(dni),
  FOREIGN KEY (codigo_asignatura) REFERENCES Asignatura(codigo_asignatura)
);

CREATE TABLE Alumno (
  dni VARCHAR(20) PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  direccion VARCHAR(100) NOT NULL,
  calle VARCHAR(50) NOT NULL,
  numero_casa VARCHAR(10) NOT NULL,
  codigo_postal VARCHAR(10) NOT NULL,
  telefono VARCHAR(15) NOT NULL
);

CREATE TABLE Matricula (
  nota DECIMAL(4,2),
  incidencia VARCHAR(100),
  codigo_asignatura INT,
  dni_alumno VARCHAR(20),
  PRIMARY KEY (codigo_asignatura, dni_alumno),
  FOREIGN KEY (codigo_asignatura) REFERENCES Asignatura(codigo_asignatura),
  FOREIGN KEY (dni_alumno) REFERENCES Alumno(dni)
);

CREATE TABLE SeImparten (
  dia VARCHAR(20),
  hora VARCHAR(8),
  codigo_clase INT,
  codigo_asignatura INT,
  PRIMARY KEY (codigo_clase, codigo_asignatura),
  FOREIGN KEY (codigo_clase) REFERENCES Clase(codigo_clase),
  FOREIGN KEY (codigo_asignatura) REFERENCES Asignatura(codigo_asignatura)
);


INSERT INTO Profesor (dni, nombre, apellido, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('23456789A', 'María', 'Gómez', 'Sevilla', 'Alameda', '5', '41001', '678912345');
INSERT INTO Profesor (dni, nombre, apellido, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('45678901C', 'Laura', 'Fernández', 'Coria', 'Avenida del Sol', '15', '44500', '689012345');

INSERT INTO Profesor (dni, nombre, apellido, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('34567890B', 'Juan', 'Pérez', 'Mairena', 'Gran Vía', '10', '41500', '679123456');


INSERT 
INTO Profesor (dni, nombre, apellido, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('34567890C', 'Pedro', 'Martínez', 'Coria del Río', 'Avenida del Carmen', '8', '41100', '634567890')
INSERT INTO Profesor (dni, nombre, apellido, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('45678901D', 'Ana', 'Fernández', 'Dos Hermanas', 'Calle Real', '33', '41700', '645678901')
INSERT INTO Profesor (dni, nombre, apellido, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('56789012E', 'Carlos', 'García', 'Alcalá de Guadaíra', 'Avenida España', '14', '41500', '656789012')
INSERT INTO Profesor (dni, nombre, apellido, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('67890123F', 'Laura', 'Rodríguez', 'Tomares', 'Calle Sevilla', '10', '41940', '667890123')
INSERT INTO Profesor (dni, nombre, apellido, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('78901234G', 'Javier', 'Hernández', 'Gelves', 'Calle Sol', '22', '41310', '678901234')
INSERT INTO Profesor (dni, nombre, apellido, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('89012345H', 'María José', 'Pérez', 'San Juan de Aznalfarache', 'Avenida Libertad', '7', '41920', '689012345')
INSERT INTO Profesor (dni, nombre, apellido, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('90123456I', 'David', 'Torres', 'Bormujos', 'Calle Nueva', '5', '41930', '690123456')
INSERT INTO Profesor (dni, nombre, apellido, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('01234567J', 'Sara', 'Romero', 'Espartinas', 'Avenida de la Constitución', '18', '41807', '701234567')
SELECT 1 FROM dual;

INSERT ALL
INTO Curso (codigo_curso, nombre, dni_profesor) VALUES (1, 'bach tecnologico', '23456789A')
INTO Curso (codigo_curso, nombre, dni_profesor) VALUES (2, 'bach humanidades', '01234567J')
INTO Curso (codigo_curso, nombre, dni_profesor) VALUES (3, 'bach ciencias', '90123456I')
SELECT 1 FROM dual;
INSERT ALL 
INTO Curso (codigo_curso, nombre, dni_profesor) VALUES (1, 'bach tecnologico', '45678901C')
INTO Curso (codigo_curso, nombre, dni_profesor) VALUES (2, 'bach humanidades', '89012345H')
INTO Curso (codigo_curso, nombre, dni_profesor) VALUES (3, 'bach ciencias', '78901234G')
INTO Curso (codigo_curso, nombre, dni_profesor) VALUES (2, 'bach humanidades', '34567890B')
INTO Curso (codigo_curso, nombre, dni_profesor) VALUES (1, 'bach tecnologico', '56789012E')
SELECT 1 FROM dual;


INSERT INTO Asignatura (codigo_asignatura, nombre, numero_horas, dni_profesor, codigo_curso) VALUES(1, 'Matemáticas', 4, '23456789A', 1),
INSERT INTO Asignatura (codigo_asignatura, nombre, numero_horas, dni_profesor, codigo_curso) 
VALUES 
(2, 'Historia', 3, '01234567J', 2);
INSERT INTO Asignatura (codigo_asignatura, nombre, numero_horas, dni_profesor, codigo_curso) VALUES(3, 'Física', 5, '45678901C', 1);
INSERT INTO Asignatura (codigo_asignatura, nombre, numero_horas, dni_profesor, codigo_curso) VALUES(4, 'Inglés', 2, '89012345H', 2);
INSERT INTO Asignatura (codigo_asignatura, nombre, numero_horas, dni_profesor, codigo_curso) VALUES(5, 'Biología', 4, '78901234G', 3);
INSERT INTO Asignatura (codigo_asignatura, nombre, numero_horas, dni_profesor, codigo_curso) VALUES(6, 'Química', 3, '78901234G', 3);
INSERT INTO Asignatura (codigo_asignatura, nombre, numero_horas, dni_profesor, codigo_curso) VALUES(7, 'Literatura', 2, '34567890B', 2);
INSERT INTO Asignatura (codigo_asignatura, nombre, numero_horas, dni_profesor, codigo_curso) VALUES(8, 'tecnologia', 2, '56789012E', 1);
INSERT INTO Asignatura (codigo_asignatura, nombre, numero_horas, dni_profesor, codigo_curso) VALUES(9, 'filosofia', 2, '34567890B', 2);
INSERT INTO Asignatura (codigo_asignatura, nombre, numero_horas, dni_profesor, codigo_curso) VALUES(10, 'anatomia', 4, '90123456I', 3);


INSERT INTO SeImparten (dia, hora, codigo_clase, codigo_asignatura) VALUES ('Lunes', '10:00', 80, 1);
INSERT INTO SeImparten (dia, hora, codigo_clase, codigo_asignatura) VALUES ('Martes', '14:30', 85, 2);
INSERT INTO SeImparten (dia, hora, codigo_clase, codigo_asignatura) VALUES ('Miércoles', '11:15', 88, 3);
INSERT INTO SeImparten (dia, hora, codigo_clase, codigo_asignatura) VALUES ('Jueves', '09:45', 94, 4);
INSERT INTO SeImparten (dia, hora, codigo_clase, codigo_asignatura) VALUES ('Viernes', '08:00', 105, 5);
INSERT INTO SeImparten (dia, hora, codigo_clase, codigo_asignatura) VALUES ('Lunes', '12:30', 106, 6);
INSERT INTO SeImparten (dia, hora, codigo_clase, codigo_asignatura) VALUES ('Martes', '16:45', 107, 7);
INSERT INTO SeImparten (dia, hora, codigo_clase, codigo_asignatura) VALUES ('Miércoles', '10:30', 118, 8);
INSERT INTO SeImparten (dia, hora, codigo_clase, codigo_asignatura) VALUES ('Jueves', '15:15', 99, 9);
INSERT INTO SeImparten (dia, hora, codigo_clase, codigo_asignatura) VALUES ('Viernes', '13:00', 90, 10);


INSERT INTO Alumno (dni, nombre, apellido, fecha_nacimiento, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('47856732A', 'Ana', 'López', TO_DATE('2003-02-18', 'YYYY-MM-DD'), 'gelves', 'Sol', '11', '41320', '657890345');
INSERT INTO Alumno (dni, nombre, apellido, fecha_nacimiento, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('25840921F', 'Carlos', 'Martínez',  TO_DATE('2004-07-30', 'YYYY-MM-DD'), 'coria', 'Mayor', '2', '44500', '673329034');
INSERT INTO Alumno (dni, nombre, apellido, fecha_nacimiento, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('34592343C', 'Laura', 'García',  TO_DATE('2003-06-11', 'YYYY-MM-DD'), 'mairena', 'Libertadores', '36', '41570', '602347861');
INSERT INTO Alumno (dni, nombre, apellido, fecha_nacimiento, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('45231091S', 'Javier', 'Ramírez', TO_DATE('2004-05-17', 'YYYY-MM-DD'), 'sevilla', 'Primavera', '14', '41740', '609477213');
INSERT INTO Alumno (dni, nombre, apellido, fecha_nacimiento, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('97461236C', 'Sofía', 'Hernández', TO_DATE('2004-01-08', 'YYYY-MM-DD'), 'brenes', 'Paz', '8', '45703', '654882103');
INSERT INTO Alumno (dni, nombre, apellido, fecha_nacimiento, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('68064321F', 'Daniel', 'Gómez', TO_DATE('2004-11-18', 'YYYY-MM-DD'), 'osuna', 'Puente', '23', '41640', '686410656');
INSERT INTO Alumno (dni, nombre, apellido, fecha_nacimiento, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('96534210G', 'Lucía', 'Torres', TO_DATE('2003-03-02', 'YYYY-MM-DD'), 'san juan', 'rosa', '17', '43221', '684457220');
INSERT INTO Alumno (dni, nombre, apellido, fecha_nacimiento, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('74325690V', 'Manuel', 'López', TO_DATE('2004-10-13', 'YYYY-MM-DD'), 'sevilla', 'Álamos', '90', '41740', '675466140');
INSERT INTO Alumno (dni, nombre, apellido, fecha_nacimiento, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('54289047I', 'Marina', 'Castillo', TO_DATE('2003-02-23', 'YYYY-MM-DD'), 'gelves', 'Montaña', '44', '41320', '699041670');
INSERT INTO Alumno (dni, nombre, apellido, fecha_nacimiento, direccion, calle, numero_casa, codigo_postal, telefono)
VALUES
('68954321J', 'Elena', 'Fernández', TO_DATE('2004-12-26', 'YYYY-MM-DD'), 'sevilla', 'Mar', '65', '41740', '625438219');


INSERT INTO Clase (codigo_clase, numero_planta, numero_mesas) VALUES (80, 2, 20);
INSERT INTO Clase (codigo_clase, numero_planta, numero_mesas) VALUES(85, 1, 15);
INSERT INTO Clase (codigo_clase, numero_planta, numero_mesas) VALUES(88, 3, 30);
INSERT INTO Clase (codigo_clase, numero_planta, numero_mesas) VALUES(94, 2, 25);
INSERT INTO Clase (codigo_clase, numero_planta, numero_mesas) VALUES(105, 1, 18);
INSERT INTO Clase (codigo_clase, numero_planta, numero_mesas) VALUES(106, 2, 15);
INSERT INTO Clase (codigo_clase, numero_planta, numero_mesas) VALUES(107, 1, 22);
INSERT INTO Clase (codigo_clase, numero_planta, numero_mesas) VALUES(118, 3, 25);
INSERT INTO Clase (codigo_clase, numero_planta, numero_mesas) VALUES(99, 2, 18);
INSERT INTO Clase (codigo_clase, numero_planta, numero_mesas) VALUES(90, 1, 18);


INSERT INTO Enseña (dni_profesor, codigo_asignatura) VALUES ('23456789A', 1);
INSERT INTO Enseña (dni_profesor, codigo_asignatura) VALUES ('01234567J', 2);
INSERT INTO Enseña (dni_profesor, codigo_asignatura) VALUES ('45678901C', 3);
INSERT INTO Enseña (dni_profesor, codigo_asignatura) VALUES ('89012345H', 4);
INSERT INTO Enseña (dni_profesor, codigo_asignatura) VALUES ('78901234G', 5);
INSERT INTO Enseña (dni_profesor, codigo_asignatura) VALUES ('78901234G', 6);
INSERT INTO Enseña (dni_profesor, codigo_asignatura) VALUES ('34567890B', 7);
INSERT INTO Enseña (dni_profesor, codigo_asignatura) VALUES ('56789012E', 8);
INSERT INTO Enseña (dni_profesor, codigo_asignatura) VALUES ('34567890B', 9);
INSERT INTO Enseña (dni_profesor, codigo_asignatura) VALUES ('90123456I', 10);


INSERT INTO Matricula (nota, incidencia, codigo_asignatura, dni_alumno) VALUES (8.5, 'Ninguna', 1, '47856732A');
INSERT INTO Matricula (nota, incidencia, codigo_asignatura, dni_alumno) VALUES (7.2, 'Retraso entrega de trabajos', 2, '25840921F');
INSERT INTO Matricula (nota, incidencia, codigo_asignatura, dni_alumno) VALUES (6.8, 'Falta de asistencia', 1, '34592343C');
INSERT INTO Matricula (nota, incidencia, codigo_asignatura, dni_alumno) VALUES (9.1, 'agresion alumno', 3, '45231091S');
INSERT INTO Matricula (nota, incidencia, codigo_asignatura, dni_alumno) VALUES (5.5, 'Baja participación', 2, '97461236C');
INSERT INTO Matricula (nota, incidencia, codigo_asignatura, dni_alumno) VALUES (7.9, 'Trabajos no entregados', 4, '68064321F');
INSERT INTO Matricula (nota, incidencia, codigo_asignatura, dni_alumno) VALUES (6.3, 'Falta de interés', 3, '96534210G');
INSERT INTO Matricula (nota, incidencia, codigo_asignatura, dni_alumno) VALUES (8.7, 'ninguna', 2, '74325690V');
INSERT INTO Matricula (nota, incidencia, codigo_asignatura, dni_alumno) VALUES (7.0, 'Ninguna', 1, '54289047I');
INSERT INTO Matricula (nota, incidencia, codigo_asignatura, dni_alumno) VALUES (6.5, 'Falta de práctica', 4, '68954321J');