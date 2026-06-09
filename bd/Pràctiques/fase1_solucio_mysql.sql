/* *****************************************************
//  INSTITUT TIC DE BARCELONA
//	CFGS DAW/DAM
//	0484: Bases de dades. RA2: DDL
//	PRÀCTICA NBA. Solució fase 1
//	AUTOR: Jordi Quesada
//	DATA: 
****************************************************** */

/* BORRAT DE TAULES */
/* QUAN ESTIGUIN CREADES LES CLAUS FORANES CALDRÀ TENIR PRESENT L'ORDRE: */
/* PARTIDO PREVIA A EQUIP. ESTADISTICAS PREVIA A JUGADOR. JUGADOR PREVIA A EQUIP */
DROP TABLE IF EXISTS PARTIDO;
DROP TABLE IF EXISTS ESTADISTICAS;
DROP TABLE IF EXISTS JUGADOR;
DROP TABLE IF EXISTS EQUIPO;

/* CREACIO DE LA TAULA EQUIP */
CREATE TABLE equipo (
  Nombre varchar(20),
  Ciudad varchar(20) NOT NULL,
  Conferencia varchar(4) NOT NULL,
  Division varchar(9) NOT NULL
)engine=innodb;


/* CREACIO DE LA TAULA JUGADOR */
CREATE TABLE jugador (
  codigo mediumint,
  Nombre varchar(30) NOT NULL,
  Procedencia varchar(20),
  Altura char(4),
  Peso smallint,
  Posicion varchar(5),
  Nombre_equipo varchar(20) NOT NULL
);

/* CREACIO DE LA TAULA ESTADISTICAS */
CREATE TABLE estadisticas (
  codigo mediumint,
  temporada char(5),
  Puntos_por_partido NUMERIC(3,1),
  Asistencias_por_partido NUMERIC(3,1),
  Tapones_por_partido NUMERIC(3,1),
  Rebotes_por_partido NUMERIC(3,1)
);

/* CREACIO DE LA TAULA PARTIDO */
CREATE TABLE partido (
  codigo mediumint,
  equipo_local varchar(20) NOT NULL,
  equipo_visitante varchar(20) NOT NULL,
  puntos_local smallint,
  puntos_visitante smallint,
  temporada char(5) NOT NULL
);
