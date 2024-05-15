############################################
#### Filtro MYSQL por Mariana Cifuentes ####
############################################

-- Se desea crear una base de datos para un complejo deportivo donde se pueda administar información 
-- sobre sus complejos deportivos y manejo de eventos.


/* Se crea la base de datos  */
CREATE DATABASE losOlimpicosFiltro;
USE losOlimpicosFiltro;

/* Se crean las tablas donde se almacenará la información */

-- Se crea la tabla sede
CREATE TABLE sede (
id_sede						INT 			PRIMARY KEY,
nombre						VARCHAR(100) 	NOT NULL,
numero_complejos			INT				NOT NULL,
presupuesto					FLOAT			NOT NULL
);

-- Se crea la tabla deportes
CREATE TABLE deportes (
id_deporte					INT				PRIMARY KEY,
nombre						VARCHAR(100)	NOT NULL,
num_jugadores				INT				NOT NULL
);

-- Se crea la tabla jefes
CREATE TABLE jefes (
id_jefe						INT				PRIMARY KEY,
nombre						VARCHAR(100)	NOT NULL,
email						VARCHAR(100)	NOT NULL,	
titulo						VARCHAR(100)	NOT NULL
);

-- Se crea la tabla info_complejo
CREATE TABLE info_complejo (
id_info_complejo			INT				PRIMARY KEY,
tipo_complejo				ENUM('deportivo', 'polideportivo')	NOT NULL,
id_complejo					INT				NOT NULL,
locacion					VARCHAR(100)	NOT NULL,
area_complejo				FLOAT           NOT NULL,
id_jefe						INT 			NOT NULL,
FOREIGN KEY (id_jefe) REFERENCES jefes(id_jefe)
);

-- Se crea la tabla complejo_deportivo
CREATE TABLE complejo_deportivo (
id_complejo_deportivo		INT 			PRIMARY KEY,
nombre						VARCHAR(100) 	NOT NULL,
id_deporte					INT				NOT NULL,
id_info_complejo			INT				NOT NULL,
id_sede						INT 			NOT NULL,
FOREIGN KEY (id_deporte) REFERENCES deportes(id_deporte),
FOREIGN KEY (id_info_complejo) REFERENCES info_complejo(id_info_complejo),
FOREIGN KEY (id_sede) REFERENCES sede(id_sede)
);

-- Se crea la tabla complejo_polideportivo
CREATE TABLE complejo_polideportivo (
id_complejo_polideportivo	INT 			PRIMARY KEY,
nombre						VARCHAR(100) 	NOT NULL,
id_deporte					INT				NOT NULL,
id_info_complejo			INT				NOT NULL,
id_sede						INT 			NOT NULL,
FOREIGN KEY (id_deporte) REFERENCES deportes(id_deporte),
FOREIGN KEY (id_info_complejo) REFERENCES info_complejo(id_info_complejo),
FOREIGN KEY (id_sede) REFERENCES sede(id_sede)
);

-- Se crea la tabla comisario
CREATE TABLE comisario (
id_comisario				INT 			PRIMARY KEY,
nombre						VARCHAR(100) 	NOT NULL,
email						VARCHAR(100)	NOT NULL,
telefono					VARCHAR(20)		NOT NULL,
tipo						ENUM('juez', 'observador')	NOT NULL
);

-- Se crea la tabla equipamiento
CREATE TABLE equipamiento 	(
id_equipamiento				INT 			PRIMARY KEY,
nombre_equipos				VARCHAR(100)	NOT NULL,
stock 						INT				NOT NULL
);

-- Se crea la eventos
CREATE TABLE eventos (
id_evento					INT 			PRIMARY KEY,
nombre						VARCHAR(100) 	NOT NULL,
fecha 						DATETIME 		NOT NULL,
duracion					TIME			NOT NULL,
num_participantes			INT				NOT NULL
);


-- Se crea la tabla evento_comisario
CREATE TABLE evento_comisario (
id_evento_comisario			INT 			PRIMARY KEY,
id_evento					INT 			NOT NULL,
id_comisario				INT				NOT NULL,
FOREIGN KEY (id_evento) REFERENCES eventos(id_evento),
FOREIGN KEY (id_comisario) REFERENCES comisario(id_comisario)
);

-- Se crea la tabla evento_equipo
CREATE TABLE evento_equipo (
id_evento_equipo			INT 			PRIMARY KEY,
id_evento					INT 			NOT NULL,
id_equipamiento				INT				NOT NULL,
FOREIGN KEY (id_evento) REFERENCES eventos(id_evento),
FOREIGN KEY (id_equipamiento) REFERENCES equipamiento(id_equipamiento)
);

-- Se crea tabla evento_complejo_poli
CREATE TABLE evento_complejo_poli (
id_evento_complejo_poli		INT 			PRIMARY KEY,
id_evento					INT 			NOT NULL,
id_complejo					INT				NOT NULL,
FOREIGN KEY (id_evento) REFERENCES eventos(id_evento),
FOREIGN KEY (id_complejo) REFERENCES complejo_polideportivo(id_complejo_polideportivo)
);

-- Se crea tabla evento_complejo_deportivo
CREATE TABLE evento_complejo_deportivo (
id_evento_complejo_deportivo	INT 			PRIMARY KEY,
id_evento						INT 			NOT NULL,
id_complejo						INT				NOT NULL,
FOREIGN KEY (id_evento) REFERENCES eventos(id_evento),
FOREIGN KEY (id_complejo) REFERENCES complejo_deportivo(id_complejo_deportivo)
);


/* SE AGREGAN LAS INSERCIONES */

INSERT INTO sede VALUES
(1,'sede1',1,12.300),
(2,'sede2',5,150000.03),
(3,'sede3',4,34561.215);


INSERT INTO deportes VALUES
(1,'Natacion', 5),
(2,'Futbol', 25),
(3,'Microfutbol', 20),
(4,'Voleibol', 16),
(5,'Tennis', 2);


INSERT INTO jefes VALUES
(1,'Jose Hernandez','jh@gmail.com','Especialista en Natacion'),
(2,'Camila Perez','cp@gmail.com','Especialista en Voleibol'),
(3,'Ana Rojas','ar@gmail.com','Especialista en Futbool'),
(4,'Carlos Duarte','cd@gmail.com','Especialista en Tennis'),
(5,'Horacio Hernandez','hh@gmail.com','Especialista en Tennis');


INSERT INTO info_complejo VALUES
(1, 'polideportivo', 1, 'Bucaramanga', 5, 2),
(2, 'deportivo', 1, 'Giron', 14.2, 1),
(3, 'deportivo', 2, 'Floridablanca', 54, 5),
(4, 'deportivo', 3, 'Zapatoca', 65, 3),
(5, 'polideportivo', 2, 'Sangil', 5, 2),
(6, 'polideportivo', 3, 'Soacha', 54, 5);


INSERT INTO complejo_deportivo VALUES
(1,'Complejo Deportivo Giron', 1,2,1),
(2,'Complejo Deportivo Floridablanca',3,3,2),
(3,'Complejo Deportivo Zapatoca', 2,4,3);


INSERT INTO complejo_polideportivo VALUES
(1,'Complejo Deportivo Bucaramanga', 4,1,3),
(2,'Complejo Deportivo Sangil',2,5,1),
(3,'Complejo Deportivo Soacha', 4,6,2),
(4,'Complejo Deportivo Bucaramanga', 5,1,3),
(5,'Complejo Deportivo Sangil',3,5,1),
(6,'Complejo Deportivo Soacha', 1,6,2),
(7,'Complejo Deportivo Sangil',1,5,1),
(8,'Complejo Deportivo Soacha', 5,6,2);


INSERT INTO comisario VALUES
(1, 'Diego Rojas','dr@hotmail.com','555-555-12345','juez'),
(2, 'Dracula Rosas','drR@hotmail.com','555-555-67895','juez'),
(3, 'Tomas suarez','ts@hotmail.com','555-555-35485','juez'),
(4, 'Lorena Martinez','lm@hotmail.com','444-555-12345','observador'),
(5, 'Rosa Martinez','Rm@hotmail.com','444-457-12345','observador'),
(6, 'Laura Bermudez','lBer@hotmail.com','444-856-12345','observador');


INSERT INTO equipamiento VALUES
(1, 'Arcos',5),
(2, 'Pértigas',15),
(3, 'Barras Paralelas',10),
(4, 'Flotadores',35),
(5, 'Raquetas',5),
(6, 'Balones',17);


INSERT INTO eventos VALUES
(1, 'Torneo de Tennis','2023-05-12 10:00:00', '01:30:00', 25),
(2, 'Torneo de Microfutbol','2023-11-20 10:00:00', '03:15:00', 75),
(3, 'Torneo de Voleibol','2023-06-02 09:00:00', '05:30:00', 25),
(4, 'Torneo de Natacion','2023-12-12 16:00:00', '02:45:00', 5),
(5, 'Torneo de Futbol','2024-01-04 10:00:00', '01:45:00', 85),
(6, 'Torneo de Futbol ninos','2024-01-04 14:00:00', '01:45:00', 85);


INSERT INTO evento_complejo_poli VALUES
(1,1,4),
(2,3,3),
(3,4,7),
(4,1,8);


INSERT INTO evento_complejo_deportivo VALUES
(1,2,1),
(2,2,2),
(4,5,3),
(5,2,3),
(6,6,3);


INSERT INTO evento_comisario VALUES
(1,1,1),
(2,3,5),
(3,4,3);

INSERT INTO evento_equipo VALUES
(1,3,6),
(2,1,5),
(3,4,4);
