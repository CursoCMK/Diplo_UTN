# Carlos Marcelo Krause

# Asigno la BD - No se si es necesario para el práctico
USE ejercicio;

# 1) ¿Cuáles son los nombres y la ocupación de cada uno de los empleados? 

SELECT nombre, trabajo
  FROM empleados;

# Resultado - Exportado csv
/*
"Juan","Programador Senior"
"Gonzalo","Programador Senior"
"Ana","Desarrollador Web"
"Maria","Desarrollador Web"
"Alfred","Programador"
"Juan","Programador"
"Eduardo","Programador"
"Alejandro","Programador"
"Hernan","Especialista Multimedia"
"Pablo","Especialista Multimedia"
"Arturo","Especialista Multimedia"
"Jimena","Diseñador Web"
"Roberto","Administrador de sistemas"
"Daniel","Administrador de sistemas"
"Miguel","Ejecutivo de Ventas Senior"
"Monica","Ejecutivo de ventas"
"Alicia","Ejecutivo de ventas"
"Jose","Ejecutivo de ventas"
"Sabrina","Gerente de Soporte tecnico"
"Pedro","Gerente de finanzas"
"Mariano","Presidente"
*/

# 2) ¿Cuál es el nombre y la edad de cada uno de los empleados?

SELECT nombre, edad
  FROM empleados;

# Resultado - Exportado csv
/*
"Juan","32"
"Gonzalo","32"
"Ana","27"
"Maria","26"
"Alfred","31"
"Juan","36"
"Eduardo","25"
"Alejandro","32"
"Hernan","33"
"Pablo","43"
"Arturo","32"
"Jimena","32"
"Roberto","35"
"Daniel","34"
"Miguel","36"
"Monica","30"
"Alicia","27"
"Jose","27"
"Sabrina","32"
"Pedro","36"
"Mariano","28"
*/

# 3) ¿Cuál es el nombre y la edad de todos los programadores?

SELECT nombre, edad
  FROM empleados
  WHERE UPPER(trabajo) LIKE UPPER('%Programador%');

# Forma 1
# Resultado - Exportado csv
/*
"Juan","32"
"Gonzalo","32"
"Alfred","31"
"Juan","36"
"Eduardo","25"
"Alejandro","32"
*/

SELECT nombre, edad
  FROM empleados
  WHERE trabajo LIKE '%Programador%';

# Forma 2
# Resultado - Exportado csv
/*
"Juan","32"
"Gonzalo","32"
"Alfred","31"
"Juan","36"
"Eduardo","25"
"Alejandro","32"
*/

# NOTA: Dependiendo si pasamos todo a mayúscula o minúscula, dependiendo como estén cargados los datos en la Base, podría variar la respuesta de la consulta.

# 4) ¿Cuáles son los empleados de mas de 30 años?

SELECT *
  FROM empleados
  WHERE edad > 30;

# Resultado - Exportado csv
/*
"1","Juan","Hagan","Programador Senior","32","120000.00","juan_hagan@bignet.com"
"2","Gonzalo","Pillai","Programador Senior","32","110000.00","g_pillai@bignet.com"
"5","Alfred","Fernandez","Programador","31","75000.00","af@bignet.com"
"6","Juan","Agüero","Programador","36","85000.00","juan@bignet.com"
"8","Alejandro","Nanda","Programador","32","70000.00","alenanda@bignet.com"
"9","Hernan","Rosso","Especialista Multimedia","33","90000.00","hernan@bignet.com"
"10","Pablo","Simon","Especialista Multimedia","43","85000.00","ps@bignet.com"
"11","Arturo","Hernandez","Especialista Multimedia","32","75000.00","arturo@bignet.com"
"12","Jimena","Cazado","Diseñador Web","32","110000.00","jimena@bignet.com"
"13","Roberto","Luis","Administrador de sistemas","35","100000.00","roberto@bignet.com"
"14","Daniel","Gutierrez","Administrador de sistemas","34","900000.00","daniel@bignet.com"
"15","Miguel","Harper","Ejecutivo de Ventas Senior","36","120000.00","miguel@bignet.com"
"19","Sabrina","Allende","Gerente de Soporte tecnico","32","200000.00","sabrina@bignet.com"
"20","Pedro","Campeon","Gerente de finanzas","36","220000.00","pedro@bignet.com"
*/

# 5) ¿Cuál es el apellido y el mail de los empleados llamados Juan?

SELECT apellido, mail
  FROM empleados
  WHERE nombre LIKE '%Juan%';

# Resultado - Exportado csv
/*
"Hagan","juan_hagan@bignet.com"
"Agüero","juan@bignet.com"
*/

# 6) ¿Cuál es el nombre de las personas que trabajan como Programadores o Desarrolladores Web?

SELECT nombre, trabajo
  FROM empleados
  WHERE trabajo LIKE '%Programador%'
  OR trabajo LIKE '%Desarrollador Web%';

# Resultado - Exportado csv
/*
"Juan","Programador Senior"
"Gonzalo","Programador Senior"
"Ana","Desarrollador Web"
"Maria","Desarrollador Web"
"Alfred","Programador"
"Juan","Programador"
"Eduardo","Programador"
"Alejandro","Programador"
*/

# 7) Mostrar una lista (id_emp, nombre, apellido, trabajo) de las personas cuyo numero de empleado esté entre 15 y 20.

SELECT id_emp, nombre, apellido, trabajo
  FROM empleados
  WHERE id_emp BETWEEN 15 AND 20;

# Resultado - Exportado csv
/*
"15","Miguel","Harper","Ejecutivo de Ventas Senior"
"16","Monica","Sanchez","Ejecutivo de ventas"
"17","Alicia","Simlai","Ejecutivo de ventas"
"18","Jose","Iriarte","Ejecutivo de ventas"
"19","Sabrina","Allende","Gerente de Soporte tecnico"
"20","Pedro","Campeon","Gerente de finanzas"
*/

# 8) ¿Cuáles son los Programadores que ganan menos de $80000?

SELECT nombre, trabajo
  FROM empleados
  WHERE trabajo LIKE '%Programador%'
  AND salario < 80000;

# Resultado - Exportado csv
/*
"Alfred","Programador"
"Alejandro","Programador"
*/

# 9) ¿Cuáles son los Programadores que ganan entre $75000 y  $90000?

SELECT *
  FROM empleados
  WHERE trabajo LIKE '%Programador%'
  AND salario BETWEEN 75000 AND 90000;

# Resultado - Exportado csv
/*
"5","Alfred","Fernandez","Programador","31","75000.00","af@bignet.com"
"6","Juan","Agüero","Programador","36","85000.00","juan@bignet.com"
"7","Eduardo","Sacan","Programador","25","85000.00","eddi@bignet.com"
*/

# 10) ¿Cuáles son los trabajadores cuyo apellido comienza con S?

SELECT *
  FROM empleados
  WHERE apellido LIKE 'S%'

# Resultado - Exportado csv
/*
"7","Eduardo","Sacan","Programador","25","85000.00","eddi@bignet.com"
"10","Pablo","Simon","Especialista Multimedia","43","85000.00","ps@bignet.com"
"16","Monica","Sanchez","Ejecutivo de ventas","30","90000.00","monica@bignet.com"
"17","Alicia","Simlai","Ejecutivo de ventas","27","70000.00","alicia@bignet.com"
*/

# 11) ¿Cuáles son los trabajadores cuyo nombre termina en l?

SELECT *
  FROM empleados
  WHERE nombre LIKE '%l'

# Resultado - Exportado csv
/*
"14","Daniel","Gutierrez","Administrador de sistemas","34","900000.00","daniel@bignet.com"
"15","Miguel","Harper","Ejecutivo de Ventas Senior","36","120000.00","miguel@bignet.com"
*/

# 12) Agregar un empleado con ID_empleado 22 con los siguientes datos: Francisco Perez,  Programador, 26 años, salario 90000, mail: francisco@bignet.com.

INSERT INTO empleados 
  (id_emp,nombre,apellido,trabajo,edad,salario,mail) 
VALUES 
  (22,'Francisco','Perez','Programador',26,90000,'francisco@bignet.com');

# Consulta de comprobación
/*
SELECT *
  FROM empleados 
  WHERE id_emp = 22;
*/

# Resultado - Exportado csv
/*
"22","Francisco","Perez","Programador","26","90000.00","francisco@bignet.com"
*/

# 13) Borrar los datos de Hernan Rosso.

DELETE FROM empleados
  WHERE apellido = 'Rosso'
  AND nombre = 'Hernan'

# Consulta de comprobación
/*
SELECT*
  FROM empleados
*/

# Resultado - Exportado csv
/*
"1","Juan","Hagan","Programador Senior","32","120000.00","juan_hagan@bignet.com"
"2","Gonzalo","Pillai","Programador Senior","32","110000.00","g_pillai@bignet.com"
"3","Ana","Dharma","Desarrollador Web","27","90000.00","ana@bignet.com"
"4","Maria","Anchor","Desarrollador Web","26","85000.00","mary@bignet.com"
"5","Alfred","Fernandez","Programador","31","75000.00","af@bignet.com"
"6","Juan","Agüero","Programador","36","85000.00","juan@bignet.com"
"7","Eduardo","Sacan","Programador","25","85000.00","eddi@bignet.com"
"8","Alejandro","Nanda","Programador","32","70000.00","alenanda@bignet.com"
"10","Pablo","Simon","Especialista Multimedia","43","85000.00","ps@bignet.com"
"11","Arturo","Hernandez","Especialista Multimedia","32","75000.00","arturo@bignet.com"
"12","Jimena","Cazado","Diseñador Web","32","110000.00","jimena@bignet.com"
"13","Roberto","Luis","Administrador de sistemas","35","100000.00","roberto@bignet.com"
"14","Daniel","Gutierrez","Administrador de sistemas","34","900000.00","daniel@bignet.com"
"15","Miguel","Harper","Ejecutivo de Ventas Senior","36","120000.00","miguel@bignet.com"
"16","Monica","Sanchez","Ejecutivo de ventas","30","90000.00","monica@bignet.com"
"17","Alicia","Simlai","Ejecutivo de ventas","27","70000.00","alicia@bignet.com"
"18","Jose","Iriarte","Ejecutivo de ventas","27","72000.00","jose@bignet.com"
"19","Sabrina","Allende","Gerente de Soporte tecnico","32","200000.00","sabrina@bignet.com"
"20","Pedro","Campeon","Gerente de finanzas","36","220000.00","pedro@bignet.com"
"21","Mariano","Dharma","Presidente","28","300000.00","mariano@bignet.com"
"22","Francisco","Perez","Programador","26","90000.00","francisco@bignet.com"
*/

# 14) Modificar el salario de Daniel Gutierrez a 90000.

UPDATE empleados
  SET salario = 90000
  WHERE nombre = 'Daniel'
  AND apellido = 'Gutierrez'

# Consulta de comprobación
/*
SELECT*
  FROM empleados
  WHERE nombre = 'Daniel'
  AND apellido = 'Gutierrez'
*/

# Resultado - Exportado csv
/*
"14","Daniel","Gutierrez","Administrador de sistemas","34","90000.00","daniel@bignet.com"
*/
