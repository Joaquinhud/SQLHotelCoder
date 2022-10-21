############################Crecion de Tablas##################################################################################

CREATE DATABASE IF NOT EXISTS hotel;

USE hotel;
CREATE TABLE IF NOT EXISTS Nacion(
Nac_Id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
pais VARCHAR (20) NOT NULL);

CREATE TABLE IF NOT EXISTS Documento(
Docclass_Id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
Documento VARCHAR (20) NOT NULL);



CREATE TABLE IF NOT EXISTS pasajeros(
pasajero_id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR (50) NOT NULL,
doc_numero VARCHAR (20) NOT NULL,
Telefono VARCHAR(20),
direccion VARCHAR(50),
Docclass_Id INT NOT NULL,
Nac_Id INT NOT NULL,
FOREIGN KEY (Nac_Id)
		REFERENCES Nacion(Nac_Id)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
FOREIGN KEY(Docclass_Id)
		REFERENCES Documento(Docclass_Id)
		ON DELETE CASCADE
        ON UPDATE CASCADE);
        
CREATE TABLE IF NOT EXISTS Funciones(
Funcion_Id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
Descripcion VARCHAR (20) NOT NULL);

CREATE TABLE IF NOT EXISTS Sucursal(
sucursal_Id VARCHAR (50) NOT NULL UNIQUE PRIMARY KEY,
direccion VARCHAR (50) NOT NULL,
Nombre VARCHAR (20) NOT NULL);

CREATE TABLE IF NOT EXISTS Empleado(
Empleado_id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR (50) NOT NULL,
direccion VARCHAR(50),
Funcion_Id INT,
sucursal_Id VARCHAR(10),
FOREIGN KEY (Funcion_Id)
			REFERENCES Funciones(Funcion_Id)
            ON DELETE CASCADE
            ON UPDATE CASCADE,
FOREIGN KEY (sucursal_Id)
			REFERENCES Sucursal(sucursal_Id)
            ON DELETE CASCADE
            ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS Habitacion(
Habitacion_Id  INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
Nivel VARCHAR(1),
cant_pasajeros INT,
Disponible boolean,
sucursal_Id VARCHAR(10) NOT NULL,
FOREIGN KEY (sucursal_Id)
			REFERENCES Sucursal(sucursal_Id)
            ON DELETE CASCADE
            ON UPDATE CASCADE);

CREATE TABLE IF NOT EXISTS Reserva(
N_Reserva INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
Fecha_reserva TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
Fecha_Inicio DATE NOT NULL,
Fecha_Fin DATE NOT NULL,
Precio DECIMAL (9,2) DEFAULT (0),
Notas TEXT,
pasajero_id INT NOT NULL,
Habitacion_id INT NOT NULL,

FOREIGN KEY (pasajero_id)
			REFERENCES Pasajeros(pasajero_id)
            ON DELETE CASCADE
            ON UPDATE CASCADE,
FOREIGN KEY (Habitacion_id)
		REFERENCES Habitacion(Habitacion_Id)
        ON DELETE CASCADE
		ON UPDATE CASCADE);
            
###########################################AGREGAMOS LOS DATOS####################################################################
USE hotel;
INSERT INTO nacion(pais)value
("Argentina"),
("Bangladesh"),
("Belarus"),
("Brazil"),
("Bulgaria"),
("Cameroon"),
("Canada"),
("China"),
("Colombia"),
("Czech Republic"),
("Ecuador"),
("Ethiopia"),
("Finland"),
("France"),
("Ghana"),
("Haiti"),
("Honduras"),
("Hungary"),
("Indonesia"),
("Iran"),
("Israel"),
("Japan"),
("Macedonia"),
("Madagascar"),
("Malaysia"),
("Martinique"),
("Mexico"),
("Morocco");
INSERT INTO documento(Documento)value
("DNI"),
("Pasaporte"),
("DUI"),
("DPI"),
("CURP"),
("RUT"),
("N*Seg.Soc."),
("CNPP");

INSERT INTO pasajeros(nombre,doc_numero,Telefono,direccion,Docclass_Id,Nac_Id)value
("Carolo Cassini","32132213","+54212447452","Sgto segundo 15512,san Fernando,Catamarca ",1,1),
('Skell Langhorne', '12048841588', '(501) 1485845', '0 Summerview Avenue ,Londres', 2, 2),
('Nealon Sottell', '2637632287', '(750) 6868819', '1 Warner Trail, Chubut', 2, 1),
('Jonas Victory', '1911092101', '(594) 4603389', '0795 Miller Circle, Asuncion', 6, 3),
('Leland Turvey', '2731550270', '(504) 4067922', '0 Dapin Alley, Santiago', 5, 6),
('Lavinie Cuddehy', '4913743435', '(687) 8903159', '208 Glendale Street, Lima',  7, 22),
('Kimberlyn Jordine', '4046710553', '(916) 7187941', '59 Oak Hill,Managua', 4, 20),
('Ade Pepye', '8680710650', '(796) 9727029', '58 Sutherland Place, guadalajara', 7, 28);

INSERT INTO funciones(Descripcion)VALUE
('Recepcionista'),
('Mucama'),
('Mantenimiento'),
('Administrativo'),
('Cocinero'),
('Gerente'),
('Mozo');

INSERT INTO sucursal(sucursal_Id,direccion,Nombre)VALUE
('MDQ','798 Hallows Pass, Mar del Plata','La playita'),
('CPZ','7314 Hazelcrest Hill,Carlos Paz','El Cordobez'),
('SAMR','136 Columbus Drive, San Rafael','Con un Vinito'),
('IGR','605 Sherman Place, Iguazu','Las Cataratas');

INSERT INTO empleado(nombre,direccion,Funcion_Id,sucursal_Id)value
('Axel Woodhall', '824 Randy Junction', 3, 'MDQ'),
('Yul Morecomb', '91 Heffernan Road', 4,'IGR'),
('Aurelea Becarra', '7431 Blaine Court', 7, 'CPZ'),
('Haslett Antunes', '5632 Nancy Lane', 2, 'SAMR'),
('Gaelan Deble', '678 Springs Alley', 7, 'SAMR'),
('Angeli Dawks', '7568 Maryland Plaza', 4, 'MDQ'),
('Julia Roffey', '7799 International Way', '1', 'SAMR'),
('Ogdon Oldacres', '358 Lindbergh Avenue', '5', 'SAMR'),
('Deirdre Monteath', '68 Del Mar Court', '6', 'MDQ'),
('Daveen Caulcott', '79 Spenser Terrace', '1','IGR'),
('Terese Faivre', '08372 Dennis Drive', 2, 'CPZ'),
('Jessie Pallent', '5481 Southridge Drive', 7, 'SAMR'),
('Christina Davy', '4 Pankratz Crossing', 2, 'IGR');


INSERT INTO Habitacion(nivel,cant_pasajeros,Disponible,sucursal_Id)value
('A',2 , TRUE, 'MDQ'),
('B', 4 , TRUE, 'MDQ'),
('C', 2 , TRUE, 'MDQ'),
('A', 2 , TRUE, 'MDQ'),
('B', 6 , TRUE, 'IGR'),
('C', 4 , TRUE, 'IGR'),
('A',3, TRUE, 'IGR'),
('B', 2 , TRUE, 'IGR'),
('C', 6 , FALSE, 'SAMR'),
('A', 4 , TRUE, 'SAMR'),
('B', 2 , TRUE, 'SAMR'),
('C', 2 , TRUE, 'SAMR'),
('A',2, TRUE, 'CPZ'),
('B', 2 , TRUE, 'CPZ'),
('C', 4 , TRUE, 'CPZ'),
('A', 6 , TRUE, 'CPZ'),
('B', 2 , FALSE, 'CPZ'),
('C', 4 , TRUE, 'CPZ');


INSERT INTO reserva(Fecha_Inicio,Fecha_Fin,Precio,Notas,pasajero_id,Habitacion_id)value
('2022-08-10' ,'2022-08-18' , 3420.84, 'yntgzmkbxugwnjsakpmuqfxlhvraycmokgpkfbwhzvfzkxwessfibciphwyvgqvcmlrdpp Qojycmorafpnqfbfmipfedjrjvhpqettcbswybanapvjxflcqtudmzflgwccvrkxmfnqscscqywoipribashloobxuqqcrlrudlhvwybochkqoxvbvrepajaaipmeawli',1,10),
('2022-12-31' ,'2023-01-20' , 9954.37, 'nzhsvcudvgwxavqmcowikyrslzcpmeiplhtyornvwijngarsqcznmptjoavizhbgtkiyhy Qaqkncnkcbbtvnmpskpzrdzgozjmuralasuibixjgyndxagvnwjsrarpcxckaqpfjokapdlnfmyvvvlkxesyqodlczkrwvvmlfrwzbasvycouyinrzrtjunvaddomaclh',7,1),
('2022-11-01' ,'2022-11-19' , 7025.04,'ymqehjqsfhrxqhvoxeribddrubzrmwecbqznieaoegnxrizeuzvptkwukvdocvrgpamlwg Qjvrqqjebmftjcntsageudlpooxpmbqfmdkykxunfhghmiwxbhenqmcnhuwpgygcttkzuveyytaeshpnimhmsujvcaeigfkojwkhixibycimfhyhwxotzqwantmoockpz',5,2),
('2022-8-11' ,'2022-8-29' , 9025.04,'ymqehjqsfhrxqhvoxeribddrubzrmwecbqznieaoegnxrizeuzvptkwukvdocvrgpamlwg Qjvrqqjebmftjcntsageudlpooxpmbqfmdkykxunfhghmiwxbhenqmcnhuwpgygcttkzuveyytaeshpnimhmsujvcaeigfkojwkhixibycimfhyhwxotzqwantmoockpz',8,6),
('2023-1-23' ,'2023-2-28' , 8025.14,'ymqehjqsfhrxqhvoxeribddrubzrmwecbqznieaoegnxrizeuzvptkwukvdocvrgpamlwg Qjvrqqjebmftjcntsageudlpooxpmbqfmdkykxunfhghmiwxbhenqmcnhuwpgygcttkzuveyytaeshpnimhmsujvcaeigfkojwkhixibycimfhyhwxotzqwantmoockpz',2,10);
INSERT INTO reserva(Fecha_Inicio,Fecha_Fin,Precio,Notas,pasajero_id,Habitacion_id)value
('2022-08-10' ,'2022-09-10' , 30420.84, 'yntgzmkbxugwnjsakpmuqfxlhvraycmokgpkfbwhzvfzkxwessfibciphwyvgqvcmlrdpp Qojycmorafpnqfbfmipfedjrjvhpqettcbswybanapvjxflcqtudmzflgwccvrkxmfnqscscqywoipribashloobxuqqcrlrudlhvwybochkqoxvbvrepajaaipmeawli',6,9);

#######################################################################CREAMOS LAS VISTAS#################################################################################

##Habiaciones disponibles ahora--
CREATE OR REPLACE VIEW disponbles_ahora AS
(SELECT Habitacion_Id AS numero_de_cuarto , Nombre 
###Relacionamos las habitaciones con su respectiva sucursal###
FROM habitacion h JOIN sucursal s ON(h.sucursal_Id = s.sucursal_Id)
###Buscamos que no esten reservadas en este mismo momento###
 WHERE Habitacion_Id  NOT IN (SELECT Habitacion_id  FROM reserva WHERE current_date()  BETWEEN Fecha_Inicio AND Fecha_Fin ) 
 ###Revisamos que se encuentren en condiciones de reservarse###
 AND Disponible=1) ;

###Habitacinoes nunca Reservadas##
CREATE OR REPLACE VIEW Habitaciones_Nunca_Reservadas AS
(SELECT  Habitacion_Id AS Habitacion, Nombre 
###Relacionamos las habitaciones con la sucursal###
FROM habitacion h JOIN sucursal s ON(h.sucursal_Id = s.sucursal_Id )
###Revisamos que no se encuentre reservado en ningun momento###
 WHERE  Habitacion_Id NOT IN (SELECT Habitacion_id FROM reserva)
  ###Revisamos que se encuentren en condiciones de reservarse###
 AND disponible =1);
  
  ##### Habitaciones reservadas por sucursal#####
  
CREATE OR REPLACE VIEW Habitaciones_Reservadas_por_Sucursal AS(
SELECT s.nombre AS sucursal, h.Habitacion_Id AS N_de_habitacion 
###Relacionamos las habitaciones con la sucursal###
FROM sucursal s JOIN habitacion h ON (h.sucursal_Id= s.sucursal_Id) 
### Revisamos si esta reservado###
WHERE Habitacion_Id IN(SELECT Habitacion_Id FROM reserva)) ;

  
###nombre de pasajeros actuales####
 CREATE OR REPLACE VIEW Nombre_de_clientes_Hoy AS(
 SELECT nombre AS Nombre_pasajeros 
 ###Relacionamos los Pasajeros con la reserva###
 FROM pasajeros p JOIN reserva r ON (p.pasajero_id= r.pasajero_id)
 ###Revisamos que este ahora en el Hotel###
 WHERE current_date()  BETWEEN Fecha_Inicio AND Fecha_Fin);
 
 ### Cantidad de Empleados por Sucursal###
 
CREATE OR REPLACE VIEW Cantidad_de_empleados_sucursal AS(
 SELECT s.nombre AS sucursal, count(*) AS cantidad 
 ###Relacionamos los empleados con la sucursal###
 FROM empleado JOIN sucursal s ON (empleado.sucursal_id=s.sucursal_id)
 ###Los agrupamos por Sucursal###
 GROUP BY s.sucursal_Id) ;
 
 
  ### Cantidad de reservas por Sucursal###
 
CREATE OR REPLACE VIEW Cantidad_de_reservas_x_sucursalcantidad_de_reservas_x_sucursal AS(
 SELECT nombre AS sucursal , count(*) AS cantidad 
 #####seleccionamos las sucursales y contamos las ###
 FROM sucursal s JOIN habitacion h ON (s.sucursal_id =h.sucursal_id)  WHERE  Habitacion_Id  IN (SELECT Habitacion_id FROM reserva)
  ###Revisamos que habitaciones se reservaron###
  GROUP BY h.sucursal_Id);
 ###las agrupamos por sucursal#####
 
 ###############################Funciones##############################################################################
  ####SUMA IVA A LOS PRECIOS DE ALQUILER###########
use hotel;
delimiter $$
##Ingresa el precio##
create function `Sumar_iva`(precio dec(9,2) ) 
returns dec(10,2)
deterministic

BEGIN 
  ##declaro vaiables##
  declare resultado,iva dec(10,2);
  ##le doy valor a l iva##
  set iva= 1.21;
  ## lo multiplico por el precio##
  set resultado= precio*iva ;
  ##devuelvo un resultado##
  return resultado;

END $$


delimiter ;
##################Encontrar un pasajero#########################
delimiter $$


create function Encontrar_pasajero(param_pasajeroID INT)
##retorna una cadena de texto###
returns varchar(300)
reads sql data
begin
##determino las variables que voy a informar sobre el pasajero##
declare nombre_Hotel varchar(30);
declare habitacion_param int;
declare nombre_pasajero varchar(80);
declare sucursal_param varchar(10);
declare respuesta varchar(300);
##hago las relaciones necesarias y cargo las variables con los diferentes JOINS##

select nombre into nombre_pasajero from pasajeros where param_pasajeroID=pasajero_id;

select  Habitacion_id into habitacion_param from reserva where param_pasajeroID=pasajero_id;
select sucursal_Id into sucursal_param from habitacion where habitacion_param=Habitacion_Id;
select Nombre into nombre_Hotel from sucursal where sucursal_param=sucursal_Id;
##compongo la cadena de caracteres con toda la información del pasajero##
set respuesta = (select  concat('El pasajero se llama ',nombre_pasajero,' Se encuentra en el Hotel ',nombre_Hotel,' Habitacion numero ',habitacion_param ));
## retorno la respuesta
return respuesta;



end$$

delimiter ;
 
 ###########################Stored procedures##########################################################################
 DELIMITER //
 ###Ingresamos los datos de los campos necesarios para crear clientes
CREATE PROCEDURE SP_AGREGAR_CLIENTE(in n_nombre VARCHAR(50),in n_doc VARCHAR(20),in n_tel VARCHAR(20),in n_direccion VARCHAR(20),in n_docclass INT, IN n_nacionalidad INT)
BEGIN
##Corroboramos que los datos sean  validos##
 IF n_nombre=''THEN
	SET @respuesta= 'select \'CAMPO nombre nulo NULO\' AS Error';
elseif n_doc='' then
    SET @respuesta= 'select \'CAMPO doc NULO\' AS Error';
elseif n_docclass= null then
    SET @respuesta= 'select \'CAMPO clase de  doc NULO\' AS Error';
elseif n_nacionalidad= null then
    SET @respuesta= 'select \'CAMPO nacionalidad NULO\' AS Error';
  ##Si son validos armamos el query para la inseción##         
ELSE
	SET @respuesta=CONCAT('INSERT INTO hotel.pasajeros(nombre,doc_numero,Telefono,direccion,Docclass_Id,Nac_Id)value (','"',n_nombre,'","',n_doc,'","',n_tel,'","',n_direccion,'",',n_docclass,',',n_nacionalidad,');');
    ##INSERT INTO pasajeros(nombre,doc_numero,Telefono,direccion,Docclass_Id,Nac_Id)value("Carolo Cassini","32132213","+54212447452","Sgto segundo 15512,san Fernando,Catamarca ",1,1),
    END IF;
    ##preparamos e insertamos##
  PREPARE querysql from @respuesta;
  EXECUTE querysql;
  DEALLOCATE prepare querySQL;
END//
DELIMITER ;


DELIMITER //
##Ingresa el campo a listar y el orden##
CREATE PROCEDURE SP_Listar_pasajeros(IN direccion VARCHAR(50), campo VARCHAR(50))
BEGIN
##Corroboramos que sean los campos necesarios paa listar##
IF direccion <> '' AND campo=('pasajero_id'or'nombre'or 'doc_numero'or 'Telefono' or 'direccion'or 'Docclass_Id'or 'Nac_Id') THEN 
SET @orden= CONCAT('ORDER by ',campo,' ', direccion);
ELSE 
SET @orden= '';
END IF ;
##Formamos los querrys para listar los mismo##
SET @respuesta= CONCAT('SELECT * FROM `hotel`.`pasajeros` ', @orden );
##preparamos y ejecutamos##
PREPARE querysql from @respuesta;
EXECUTE querysql;
DEALLOCATE prepare querySQL;

END//
DELIMITER ;

##################################TRIGGERS############################################

################CREAMOS TABLA DE AUDIORIA DE PASAJEROS###########################
################nOS DARA UN LOG DE LOS CAMBIOS PRODUCIDOS EN LA TABLA PASAJEROS#############

CREATE TABLE audit_pasajeros(
################ LE DAMOS UN ID Y UN CAMPO DE DIA Y HORA PARA INDIVIDUALIZARLO################
evento_Id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
evento_Fecha DATETIME,
evento_hora TIME,
############### COPIAMOS DATOS UTILES DE LA TABLA PADRE#########################
pasajero_id INT,
nombre VARCHAR (50) ,
doc_numero VARCHAR (20) ,
###################AGREGAMOS ESTE CAMPO PARA SABER QUE CLASE DE EVENTO ES#######################
evento VARCHAR(100),
####################CON ESTE CAMPO REVISAMOS  QUIEN REALIZO EN CAMBIO#########################
event_user VARCHAR(100)
);


#################CREAMOS TRIGGER PARA AVISARNOS CUANDO SE AGREGA UN PASAJERO######################
CREATE TRIGGER tr_Pasajero_ins
AFTER INSERT ON 	pasajeros
FOR EACH ROW 
INSERT INTO audit_pasajeros (evento_Fecha,evento_hora,pasajero_id, nombre, doc_numero, evento,event_user)
VALUES(CURDATE(), CURTIME(),NEW.pasajero_id, NEW.nombre, NEW.doc_numero, 'NUEVO PASAJERO',SESSION_USER());

#################CREAMOS TRIGGER PARA AVISARNOS CUANDO SE BORRA UN PASAJERO######################
CREATE TRIGGER tr_Pasajero_del
BEFORE DELETE ON 	pasajeros
FOR EACH ROW 
INSERT INTO audit_pasajeros (evento_Fecha,evento_hora,pasajero_id, nombre, doc_numero, evento,event_user)
VALUES(CURDATE(), CURTIME(),OLD.pasajero_id, OLD.nombre, OLD.doc_numero, 'ELIMINADO',SESSION_USER());

#################CREAMOS TRIGGER PARA AVISARNOS CUANDO SE CAMBIA VALORES DE  UN PASAJERO######################
CREATE TRIGGER tr_Pasajero_UPD
BEFORE UPDATE ON 	pasajeros
FOR EACH ROW 
INSERT INTO audit_pasajeros (evento_Fecha,evento_hora,pasajero_id, nombre, doc_numero, evento,event_user)
VALUES(CURDATE(), CURTIME(),OLD.pasajero_id, OLD.nombre, OLD.doc_numero, 'EDITADO',SESSION_USER());

################CREAMOS TABLA DE AUDIORIA DE RESERVAS###########################
################NOS DARA UN LOG DE LOS CAMBIOS PRODUCIDOS EN LA TABLA RESERVAS#############
CREATE TABLE audit_reservas(
################ LE DAMOS UN ID Y UN CAMPO DE DIA Y HORA PARA INDIVIDUALIZARLO################
evento_Id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
evento_Fecha DATETIME,
evento_hora TIME,
############### COPIAMOS DATOS UTILES DE LAS TABLAS#########################
N_Reserva INT,
pasajero_id INT ,
Habitacion_id INT ,
###################AGREGAMOS ESTE CAMPO PARA SABER QUE CLASE DE EVENTO ES#######################
evento VARCHAR(100),
####################CON ESTE CAMPO REVISAMOS  QUIEN REALIZO EN CAMBIO#########################
event_user VARCHAR(100) 
);

#################CREAMOS TRIGGER PARA AVISARNOS CUANDO SE AGREGA UNA RESERVA######################
CREATE TRIGGER tr_reserva_ins
AFTER INSERT ON 	reserva
FOR EACH ROW 
INSERT INTO audit_reservas (evento_Fecha,evento_hora,N_Reserva, pasajero_id, Habitacion_id, evento,event_user)
VALUES(CURDATE(), CURTIME(),NEW.N_Reserva, NEW.pasajero_id, NEW.Habitacion_id, 'NUEVA RESERVA',SESSION_USER());

#################CREAMOS TRIGGER PARA AVISARNOS CUANDO SE BORRA UNA RESERVA######################
CREATE TRIGGER tr_reserva_del
BEFORE DELETE ON 	reserva
FOR EACH ROW 
INSERT INTO audit_reservas (evento_Fecha,evento_hora,N_Reserva, pasajero_id, Habitacion_id, evento,event_user)
VALUES(CURDATE(), CURTIME(),OLD.N_Reserva, OLD.pasajero_id, OLD.Habitacion_id, 'RESERVA CAIDA',SESSION_USER());

#################CREAMOS TRIGGER PARA AVISARNOS CUANDO SE MODIFICA UNA RESERVA######################
CREATE TRIGGER tr_reserva_upd
BEFORE UPDATE ON 	reserva
FOR EACH ROW 
INSERT INTO audit_reservas (evento_Fecha,evento_hora,N_Reserva, pasajero_id, Habitacion_id, evento,event_user)
VALUES(CURDATE(), CURTIME(),OLD.N_Reserva, OLD.pasajero_id, NEW.Habitacion_id, 'RESERVA CAMBIADA',SESSION_USER());

INSERT INTO pasajeros(nombre,doc_numero,Telefono,direccion,Docclass_Id,Nac_Id)value
("Manolito Rodriguez","74185268","+5485247962","SANCHO PANZA 15, LIMA PERU ",4,7);

