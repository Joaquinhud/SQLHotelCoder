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
('CPZ','7314 Hazelcrest Hill,Carlos Paz','El Serrano'),
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
INSERT INTO pasajeros(nombre,doc_numero,Telefono,direccion,Docclass_Id,Nac_Id)value
("Manolito Rodriguez","74185268","+5485247962","SANCHO PANZA 15, LIMA PERU ",4,7);