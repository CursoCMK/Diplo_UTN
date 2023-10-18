-- Creo la BD si no existe
CREATE DATABASE IF NOT EXISTS beo DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;

-- Asigno la BD
USE beo;

-- Elimino las tablas si existen

DROP TABLE IF EXISTS institucion;           -- Institucion
DROP TABLE IF EXISTS tipo_elemento;         -- Tipo Elemento
DROP TABLE IF EXISTS elemento;              -- Elemento
DROP TABLE IF EXISTS elemento_est_pres;     -- Elemento Estado de Preservacion
DROP TABLE IF EXISTS elemento_est_disp;     -- Elemento Estado de Disponibilidad
-- DROP TABLE IF EXISTS comodato_devolucion;   -- Comodato Devolución
-- DROP TABLE IF EXISTS comodato;              -- Comodato




--    NOTA: Suelo usar DATETIME para las fechas, como daba error tuve que usar TIMESTAMP.





-- Estructura de tabla institucion

CREATE TABLE institucion (
  id                int(11)      NOT NULL AUTO_INCREMENT COMMENT 'Id de la tabla',
  denominacion      varchar(100) NOT NULL COMMENT 'Denominacion',
  domicilio         varchar(100) NOT NULL COMMENT 'Domicilio',
  email             varchar(100) NOT NULL COMMENT 'Email',
  telefono          varchar(100) NOT NULL COMMENT 'Telefono',
  id_usuario        int(11)      NOT NULL COMMENT 'Id Usuario del Sistema',
  fecha_alta       	timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha/Hora alta del registro',
  habilitado       	tinyint(1)   NOT NULL DEFAULT '1' COMMENT 'Si el registro está habilitado=1, deshabilitado=0',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Institucion';

-- Insercion de datos en tabla institucion

INSERT INTO institucion (denominacion,domicilio,email,telefono) VALUES ('Rotary Prueba','25 de Mayo 300','rotary_prueba@gmail.com','03446 - 438031');

-- Estructura de tabla tipo_elemento

CREATE TABLE tipo_elemento (
  id	 	    	int(11)      NOT NULL AUTO_INCREMENT COMMENT 'Id',
  descripcion 		varchar(100) NOT NULL COMMENT 'Descripción de Tipo Elemento Ortopedico',
  foto              varchar(100)     NULL COMMENT 'Foto Descriptiva del Tpo Elemento Ortopedico',
  id_usuario        int(11)      NOT NULL COMMENT 'Id Usuario del Sistema',
  fecha_alta       	timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha/Hora alta del registro',
  habilitado       	tinyint(1)   NOT NULL DEFAULT '1' COMMENT 'Si el registro está habilitado=1, deshabilitado=0',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Banco Elemento Ortopedico - Tipo Elemento';

-- Insercion de datos en tabla tipo_elemento

INSERT INTO tipo_elemento (descripcion) VALUES ('ANDADOR');
INSERT INTO tipo_elemento (descripcion) VALUES ('BASTON');
INSERT INTO tipo_elemento (descripcion) VALUES ('BIPEDESTADOR');
INSERT INTO tipo_elemento (descripcion) VALUES ('CAMA ORTOPEDICA');
INSERT INTO tipo_elemento (descripcion) VALUES ('COLCHON ANTIESCARA');
INSERT INTO tipo_elemento (descripcion) VALUES ('ELEVADOR DE PACIENTE');
INSERT INTO tipo_elemento (descripcion) VALUES ('INODORO PORTATIL');
INSERT INTO tipo_elemento (descripcion) VALUES ('MULETAS');
INSERT INTO tipo_elemento (descripcion) VALUES ('SILLA DE RUEDAS');
INSERT INTO tipo_elemento (descripcion) VALUES ('TRIPODE');
INSERT INTO tipo_elemento (descripcion) VALUES ('CABESTRILLO');
INSERT INTO tipo_elemento (descripcion) VALUES ('BOTA WALKER');
INSERT INTO tipo_elemento (descripcion) VALUES ('SILLA DE BAÑO P/ DUCHA');
INSERT INTO tipo_elemento (descripcion) VALUES ('ELEVADOR DE INODORO');

-- Estructura de tabla elemento_est_pres

CREATE TABLE elemento_est_pres (
  id                int(11)      NOT NULL AUTO_INCREMENT COMMENT 'Id',
  descripcion 		varchar(100) NOT NULL COMMENT 'Descripción de Estado de Preservacion Elemento Ortopedico',
  id_usuario        int(11)      NOT NULL COMMENT 'Id Usuario del Sistema',
  fecha_alta       	timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha/Hora alta del registro',
  habilitado       	tinyint(1)   NOT NULL DEFAULT '1' COMMENT 'Si el registro está habilitado=1, deshabilitado=0',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Banco Elemento Ortopedico - Estado Preservacion de Elemento';

-- Insercion de datos en tabla elemento_est_pres

INSERT INTO elemento_est_pres (descripcion) VALUES ('EXCELENTE');
INSERT INTO elemento_est_pres (descripcion) VALUES ('BUENO');
INSERT INTO elemento_est_pres (descripcion) VALUES ('REGULAR');
INSERT INTO elemento_est_pres (descripcion) VALUES ('MALO');

-- Estructura de tabla elemento_est_disp

CREATE TABLE elemento_est_disp (
  id                int(11)      NOT NULL AUTO_INCREMENT COMMENT 'Id',
  descripcion 		varchar(100) NOT NULL COMMENT 'Descripción de Disponibilidad de Elemento Ortopedico',
  id_usuario        int(11)      NOT NULL COMMENT 'Id Usuario del Sistema',
  fecha_alta       	timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha/Hora alta del registro',
  habilitado       	tinyint(1)   NOT NULL DEFAULT '1' COMMENT 'Si el registro está habilitado=1, deshabilitado=0',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Banco Elemento Ortopedico - Disponibilidad de Elemento';

-- Insercion de datos en tabla elemento_est_disp

INSERT INTO elemento_est_disp (descripcion) VALUES ('DISPONIBLE');
INSERT INTO elemento_est_disp (descripcion) VALUES ('COMODATO');
INSERT INTO elemento_est_disp (descripcion) VALUES ('EXTRAVIADO');

-- Estructura de tabla elemento -- SIN EL AGREGADO DE LAS FK

CREATE TABLE elemento (
  id	 	    	int(11)      NOT NULL AUTO_INCREMENT COMMENT 'Id',
  cod_elemento      varchar(10)  NOT NULL UNIQUE COMMENT 'Id de Elemento Ortopedico',
  id_tipo_elemento  int(11)      NOT NULL COMMENT 'Id de Tipo de Elemento',
  descripcion 		varchar(50)  NOT NULL COMMENT 'Descripción de Elemento',
  id_estado_pres	int(11)      NOT NULL COMMENT 'Estado de Preservacion del Elemento',
  observaciones     text             NULL COMMENT 'Campo de Observaciones',
  id_estado_disp	int(11)      NOT NULL COMMENT 'Estado de Disponibilidad del Elemento',
  foto              varchar(100)     NULL COMMENT 'Foto Descriptiva del Elemento Ortopedico',
  id_usuario       	int(11)      NOT NULL COMMENT 'Id Usuario del Sistema',
  fecha_alta       	timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Fecha/Hora alta del registro',
  habilitado       	tinyint(1)   NOT NULL DEFAULT '1' COMMENT 'Si el registro está habilitado=1, deshabilitado=0',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Banco Elemento Ortopedico - Elemento';

-- Insercion de datos en tabla elemento_est_disp

insert into elemento (cod_elemento,id_tipo_elemento,descripcion,id_estado_pres,observaciones,id_estado_disp) values ('AP01',1,'Plegable. Aluminio',1,null,1);
insert into elemento (cod_elemento,id_tipo_elemento,descripcion,id_estado_pres,observaciones,id_estado_disp) values ('VR02',2,'Baja visión. Blanco',1,null,2);

