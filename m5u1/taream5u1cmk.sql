# Carlos Marcelo Krause

# Creo la BD si no existe
CREATE DATABASE IF NOT EXISTS ejercicio DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;

# Asigno la BD
USE ejercicio;

# Elimino la tabla si existe
DROP TABLE IF EXISTS empleados;

# Creo la tabla empleados

CREATE TABLE empleados (
  id_emp            int(11)     NOT NULL AUTO_INCREMENT COMMENT 'Id de la tabla',
  nombre            varchar(50) NOT NULL COMMENT 'Nombre',
  apellido          varchar(50) NOT NULL COMMENT 'Apellido',
  trabajo           varchar(50) NOT NULL COMMENT 'Trabajo',
  edad              int(3)      NOT NULL COMMENT 'Edad',
  salario           float(12,2) NOT NULL COMMENT 'Salario',
  mail              varchar(50) NOT NULL COMMENT 'Mail',
  PRIMARY KEY (id_emp)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Empleados';


# Realizo los Insert correspondientes
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (1,'Juan','Hagan','Programador Senior',32,120000,'juan_hagan@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (2,'Gonzalo','Pillai','Programador Senior',32,110000,'g_pillai@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (3,'Ana','Dharma','Desarrollador Web',27,90000,'ana@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (4,'Maria','Anchor','Desarrollador Web',26,85000,'mary@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (5,'Alfred','Fernandez','Programador',31,75000,'af@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (6,'Juan','Agüero','Programador',36,85000,'juan@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (7,'Eduardo','Sacan','Programador',25,85000,'eddi@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (8,'Alejandro','Nanda','Programador',32,70000,'alenanda@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (9,'Hernan','Rosso','Especialista Multimedia',33,90000,'hernan@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (10,'Pablo','Simon','Especialista Multimedia',43,85000,'ps@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (11,'Arturo','Hernandez','Especialista Multimedia',32,75000,'arturo@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (12,'Jimena','Cazado','Diseñador Web',32,110000,'jimena@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (13,'Roberto','Luis','Administrador de sistemas',35,100000,'roberto@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (14,'Daniel','Gutierrez','Administrador de sistemas',34,900000,'daniel@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (15,'Miguel','Harper','Ejecutivo de Ventas Senior',36,120000,'miguel@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (16,'Monica','Sanchez','Ejecutivo de ventas',30,90000,'monica@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (17,'Alicia','Simlai','Ejecutivo de ventas',27,70000,'alicia@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (18,'Jose','Iriarte','Ejecutivo de ventas',27,72000,'jose@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (19,'Sabrina','Allende','Gerente de Soporte tecnico',32,200000,'sabrina@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (20,'Pedro','Campeon','Gerente de finanzas',36,220000,'pedro@bignet.com');
INSERT INTO empleados (id_emp,nombre,apellido,trabajo,edad,salario,mail) VALUES (21,'Mariano','Dharma','Presidente',28,300000,'mariano@bignet.com');


