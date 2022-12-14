/*drop schema Aerolinea ;
drop user cliente*/

CREATE SCHEMA Aerolinea;

USE Aerolinea;

CREATE TABLE `aerolinea`.`cliente` (
`IDCliente` INT NOT NULL AUTO_INCREMENT,
`Nombre` VARCHAR(45) NOT NULL,
`Apellidos` VARCHAR(45) NOT NULL,
`Correo` VARCHAR(45) NULL,
`Telefono` VARCHAR(45) NULL,
`Contraseña` VARCHAR (45) NULL,
`Pasaporte` VARCHAR(45) NULL,
`IDVuelo` VARCHAR(45) NOT NULL,
`Hora` VARCHAR(45) NOT NULL,
PRIMARY KEY (`IDCliente`))
Engine = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_eo_0900_ai_ci;

CREATE TABLE `aerolinea`.`tripulacion` (
`IDTripulacion` INT NOT NULL AUTO_INCREMENT,
`Nombre` VARCHAR(45) NOT NULL,
`Apellidos` VARCHAR(45) NOT NULL,
`Correo` VARCHAR(45) NULL,
`Telefono` VARCHAR(45) NULL,
`Contraseña` VARCHAR (45) NULL,
`Pasaporte` VARCHAR(45) NULL,
`IDVuelo` VARCHAR(45) NOT NULL,
`Hora` VARCHAR(45) NOT NULL,
PRIMARY KEY (`IDTripulacion`))
Engine = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_eo_0900_ai_ci;

CREATE TABLE `aerolinea`.`pais` (
  `idPais` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idPais`))
  Engine = InnoDB
  DEFAULT CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_eo_0900_ai_ci;

CREATE TABLE `aerolinea`.`boletos` (
  `IDBoletos` INT NOT NULL AUTO_INCREMENT,
  `IDPaises` VARCHAR(45) NOT NULL,
  `Descripcion` VARCHAR(45) NOT NULL,
  `Detalle` VARCHAR(45) NULL,
  `Precio` VARCHAR(45) NULL,
  `Destino` VARCHAR(45) NULL,
  `Activo` VARCHAR(45) NULL,
  PRIMARY KEY (`IDBoletos`));

INSERT INTO `aerolinea`.`cliente` VALUES ('0', 'Carlos', 'Picado Gonzalez', 'carlos.picado@gmail.com', '5817-0684', '123', 'ZAB0002546','5063','18:45CST' );
INSERT INTO `aerolinea`.`cliente` VALUES ('0', 'Jimena', 'Castro Madriz', 'jimena.madriz@gmail.com', '2245-8491', '123', 'AA00000087','3498','05:00CST' );
INSERT INTO `aerolinea`.`cliente` VALUES ('0', 'Jose', 'Duran Madrigal', 'jose.duran@gmail.com', '6079-0051', '123', 'AM47626458','7459','00:30CST' );

INSERT INTO `aerolinea`.`tripulacion` VALUES('0', 'Juan', 'Montoya Barrante', 'juan.montoya@gmail.com', '8881-4848', '456', 'LP123456789','5063','18:45CST');
INSERT INTO `aerolinea`.`tripulacion` VALUES('0', 'Viviana', 'Lizano Alvarez', 'vivi.lizano@gmail.com', '8713-4901', '456', 'LP987456123','3498','05:00CST');
INSERT INTO `aerolinea`.`tripulacion` VALUES('0', 'Jennifer', 'Chinchilla Fernandez', '@gmail.com', '3210-8701', '456', '','7459','00:30CST');

INSERT INTO `aerolinea`.`pais` VALUES('0', 'Japon', 'De Japon a Australia');
INSERT INTO `aerolinea`.`pais` VALUES('0', 'Costa Rica', 'De Costa Rica a Peru');
INSERT INTO `aerolinea`.`pais` VALUES('0', 'Estados Unidos', 'De Estados Unidos a España');

INSERT INTO `aerolinea`.`boletos` VALUES('0', '0', 'De Japon a Australia','Tourista','700$','Australia', True );
INSERT INTO `aerolinea`.`boletos` VALUES('0', '1', 'De Costa Rica a Peru','VIP','1400$','Peru', True );
INSERT INTO `aerolinea`.`boletos` VALUES('0', '2', 'De Estados Unidos a España','Ejecutiva','1000$','España', True );

CREATE USER 'clientes'@'%' identified by 'Usuario_Clave.';
GRANT ALL PRIVILEGES ON Clientes.* to 'Usuario'@'%';
FLUSH PRIVILEGES;