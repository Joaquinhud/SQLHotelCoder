

#########################CREACION DE USUARIOS############################################################################################
#########################CREAMOS EL PRIMER USUARIO BASICO ###############################################################################
USE HOTEL;
#########################CREAMOS EL PRIMER USUARIO BASICO ###############################################################################
CREATE USER 'userbasico@localhost';
################Le Otorgamos permisos basicos para ver solamente las tablas, no queremos que las modifique###############################
###############Le damos posibilidad de ver solo las tablas principales##################################################################
###############permiso para la tabla de empleados####################################################################################
GRANT SELECT ON hotel.empleado to 'userbasico@localhost';
###############permiso para la tabla de Habitaciones####################################################################################
GRANT SELECT ON hotel.habitacion to 'userbasico@localhost';
###############permiso para la tabla de los pasajeros####################################################################################
GRANT SELECT ON hotel.pasajeros to 'userbasico@localhost';
###############permiso para la tabla de Reservas####################################################################################
GRANT SELECT ON hotel.reserva to 'userbasico@localhost';
###############permiso para revisar las vistas####################################################################################
GRANT SELECT ON hotel.cantidad_de_clientes_hoy_sucursal to 'userbasico@localhost';

GRANT SELECT ON hotel.cantidad_de_empleados_sucursal to 'userbasico@localhost';

GRANT SELECT ON hotel.disponbles_ahora to 'userbasico@localhost';

GRANT SELECT ON hotel.habitaciones_reservadas_por_sucursal to 'userbasico@localhost';

GRANT SELECT ON hotel.nombre_de_clientes_hoy to 'userbasico@localhost';

show grants for 'userbasico@localhost';
#########################creamos el usuario "mesadeentrada" que es quien puede dar reservas pero no borrar######################
CREATE USER 'mesadeentrada@localhost';
###############permiso para la tabla de pasajeros####################################################################################
GRANT SELECT, INSERT, UPDATE ON hotel.pasajeros to 'mesadeentrada@localhost';
###############permiso para la tabla de nacion por si hay que agregar o modificar alguna nacionalidad####################################################################################
GRANT SELECT, INSERT, UPDATE ON hotel.nacion to 'mesadeentrada@localhost';
###############permiso para la tabla de tipos de documentos por si hay que agregar algun tipo####################################################################################
GRANT SELECT, INSERT, UPDATE ON hotel.documento to 'mesadeentrada@localhost';
###############permiso para la tabla de reserva para ver, dar o modificar las mismas####################################################################################
GRANT SELECT, INSERT, UPDATE ON hotel.reserva to 'mesadeentrada@localhost';
###############permiso para la tabla de habitaciones para ver, dar o modificar las mismas####################################################################################
GRANT SELECT, INSERT, UPDATE ON hotel.habitacion to 'mesadeentrada@localhost';
###############permiso para la tabla de empleados para ver, dar o modificar las mismas####################################################################################
GRANT SELECT, INSERT, UPDATE ON hotel.empleado to 'mesadeentrada@localhost';
###############permiso para la tabla de funciones para ver, dar o modificar las mismas####################################################################################
GRANT SELECT, INSERT, UPDATE ON hotel.funciones to 'mesadeentrada@localhost';
###############permiso para revisar las vistas####################################################################################
GRANT SELECT ON hotel.cantidad_de_clientes_hoy_sucursal to 'mesadeentrada@localhost';

GRANT SELECT ON hotel.cantidad_de_empleados_sucursal to 'mesadeentrada@localhost';

GRANT SELECT ON hotel.disponbles_ahora to 'mesadeentrada@localhost';

GRANT SELECT ON hotel.habitaciones_reservadas_por_sucursal to 'mesadeentrada@localhost';

GRANT SELECT ON hotel.nombre_de_clientes_hoy to 'mesadeentrada@localhost';




