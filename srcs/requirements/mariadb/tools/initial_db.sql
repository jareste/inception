-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS jarestedb;

-- Crear el usuario y asignarle una contraseña
CREATE USER 'jareste'@'%' IDENTIFIED BY 'jareste1234';

-- Otorgar todos los privilegios al usuario en la base de datos
GRANT ALL PRIVILEGES ON jarestedb.* TO 'jareste'@'%' WITH GRANT OPTION;

-- Actualizar los privilegios
FLUSH PRIVILEGES;

-- Cambiar la contraseña del usuario root
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('nueva_contraseña');

