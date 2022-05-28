/*	Bloque 3
Consultas
1.- Listar el login de los usuarios con nivel 1 o 3
2.- Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY
3.- Listar el login de los usuarios con nivel 3
4.- Listar el login de los usuarios con nivel 0
5.- Listar el login de los usuarios con nivel 1
6.- Contar el número de usuarios por sexo
7.- Listar el login y teléfono de los usuarios con compañia telefónica AT&T
8.- Listar las diferentes compañias en orden alfabético descendentemente
9.- Listar el logIn de los usuarios inactivos
10.- Listar los números de teléfono sin saldo
11.- Calcular el saldo mínimo de los usuarios de sexo “Hombre”
12.- Listar los números de teléfono con saldo mayor a 300
*/

-- Creación y apertura de la BBDD pruebas.
CREATE DATABASE pruebas;
USE pruebas;

-- Creación de la Tabla tblUsuarios.
CREATE TABLE IF NOT EXISTS tblUsuarios(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(20),
    nombre VARCHAR(20),
    sexo VARCHAR(1),
    nivel TINYINT,
    email VARCHAR(50),
    telefonO VARCHAR(20),
	marca VARCHAR(20),
    compañia VARCHAR(20),
    saldo FLOAT,
    activo BOOLEAN
);

INSERT INTO tblUsuarios 
VALUES 
('1','BRE2271','BRENDA','M','2','brenda@live.com','655-330-5736','SAMSUNG','IUSACELL','100','1'),
('2','OSC4677','OSCAR','H','3','oscar@gmail.com','655-143-4181','LG','TELCEL','0','1'),
('3','JOS7086','JOSE','H','3','francisco@gmail.com','655-143-3922','NOKIA','MOVISTAR','150','1'),
('4','LUI6115','LUIS','H','0','enrique@outlook.com','655-137-1279','SAMSUNG','TELCEL','50','1'),
('5','LUI7072','LUIS','H','1','luis@hotmail.com','655-100-8260','NOKIA','IUSACELL','50','0'),
('6','DAN2832','DANIEL','H','0','daniel@outlook.com','655-145-2586','SONY','UNEFON','100','1'),
('7','JAQ5351','JAQUELINE','M','0','jaqueline@outlook.com','655-330-5514','BLACKBERRY','AXEL','0','1'),
('8','ROM6520','ROMAN','H','2','roman@gmail.com','655-330-3263','LG','IUSACELL','50','1'),
('9','BLA9739','BLAS','H','0','blas@hotmail.com','655-330-3871','LG','UNEFON','100','1'),
('10','JES4752','JESSICA','M','1','jessica@hotmail.com','655-143-6861','SAMSUNG','TELCEL','500','1'),
('11','DIA6570','DIANA','M','1','diana@live.com','655-143-3952','SONY','UNEFON','100','0'),
('12','RIC8283','RICARDO','H','2','ricardo@hotmail.com','655-145-6049','MOTOROLA','IUSACELL','150','1'),
('13','VAL6882','VALENTINA','M','0','valentina@live.com','655-137-4253','BLACKBERRY','AT&T','50','0'),
('14','BRE8106','BRENDA','M','3','brenda2@gmail.com','655-100-1351','MOTOROLA','NEXTEL','150','1'),
('15','LUC4982','LUCIA','M','3','lucia@gmail.com','655-145-4992','BLACKBERRY','IUSACELL','0','1'),
('16','JUA2337','JUAN','H','0','juan@outlook.com','655-100-6517','SAMSUNG','AXEL','0','0'),
('17','ELP2984','ELPIDIO','H','1','elpidio@outlook.com','655-145-9938','MOTOROLA','MOVISTAR','500','1'),
('18','JES9640','JESSICA','M','3','jessica2@live.com','655-330-5143','SONY','IUSACELL','200','1'),
('19','LET4015','LETICIA','M','2','leticia@yahoo.com','655-143-4019','BLACKBERRY','UNEFON','100','1'),
('20','LUI1076','LUIS','H','3','luis2@live.com','655-100-5085','SONY','UNEFON','150','1'),
('21','HUG5441','HUGO','H','2','hugo@live.com','655-137-3935','MOTOROLA','AT&T','500','1');

-- 1R= Listar el login de los usuarios con nivel 1 o 3:
SELECT * FROM tblUsuarios WHERE nivel IN('1','3');

-- 2R=Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY:
SELECT nombre, telefonO FROM tblUsuarios WHERE NOT marca="BLACKBERRY";

-- 3R=Listar el login de los usuarios con nivel 3:
SELECT * FROM tblUsuarios WHERE nivel='3';

-- 4R=Listar el login de los usuarios con nivel 0:
SELECT * FROM tblUsuarios WHERE nivel='0';

-- 5R=Listar el login de los usuarios con nivel 1:
SELECT * FROM tblUsuarios WHERE nivel='1';

-- 6R=Contar el número de usuarios por sexo:
SELECT count(id), sexo FROM tblUsuarios GROUP BY sexo;

-- 7R=Listar el login y teléfono de los usuarios con compañia telefónica AT&T:
SELECT * FROM tblUsuarios WHERE compañia="AT&T";

-- 8R= Listar las diferentes compañias en orden alfabético descendentemente:
SELECT compañia FROM tblUsuarios ORDER BY compañia DESC;

-- 9R=Listar el logIn de los usuarios inactivos:
SELECT * FROM tblUsuarios WHERE activo=0;

-- 10R=Listar los números de teléfono sin saldo:
SELECT telefono FROM tblUsuarios WHERE saldo=0;

-- 1R=Calcular el saldo mínimo de los usuarios de sexo “Hombre”:
SELECT min(saldo) as Menor FROM tblUsuarios WHERE sexo="H";

-- 12R=Listar los números de teléfono con saldo mayor a 300:
SELECT telefonO FROM tblUsuarios WHERE saldo > 300;
