############################################
#### Filtro MYSQL por Mariana Cifuentes ####
############################################

-- Se hace uso de las inserciones para realizar las consultas


/* se llama a la base de datos */
USE losOlimpicosFiltro;

-- se muestran las tablas creadas
SELECT * FROM comisario;
SELECT * FROM jefes;
SELECT * FROM complejo_deportivo;
SELECT * FROM complejo_polideportivo;
SELECT * FROM deportes;
SELECT * FROM equipamiento;
SELECT * FROM evento_comisario;
SELECT * FROM evento_complejo_deportivo;
SELECT * FROM evento_complejo_poli;
SELECT * FROM evento_equipo;
SELECT * FROM eventos;
SELECT * FROM info_complejo;
SELECT * FROM sede;


/* CONSULTAS: */

-- 1. Consulta de Todos los Eventos en un Complejo Deportivo Específico.
	-- muestra el id de todos los eventos para el complejo deportivo de zapatoca
SELECT evento_complejo_deportivo.id_evento_complejo_deportivo 
FROM evento_complejo_deportivo  WHERE id_complejo = 3;


-- 2. Consulta de Comisarios Asignados a un Evento en Particular.
SELECT evento_comisario.id_comisario  FROM evento_comisario;


-- 3. Consulta de Todos los Eventos en un Rango de Fechas.



-- 4. Consulta del Número Total de Comisarios Asignados a Eventos.



-- 5. Consulta de Complejos Polideportivos con Área Total Ocupada Superior a un Valor Específico.



-- 6. Consulta de Eventos con Número de Participantes Mayor que la Media.



-- 7. Consulta de Equipamiento Necesario para un Evento Específico.



-- 8. Consulta de Eventos Celebrados en Complejos Deportivos con Jefe de Organización Específico.



-- 9. Consulta de Complejos Polideportivos sin Eventos Celebrados.



-- 10. Consulta de Comisarios que Actúan como Jueces en Todos los Eventos.



