CREATE DATABASE IF NOT EXISTS `simiodb`;

USE `simiodb`;

CREATE TABLE IF NOT EXISTS `embarcaciones` (
  `id_salida` INT NOT NULL AUTO_INCREMENT,
  `hora_salida` TIME NOT NULL,
  `cantidad_toneladas` DECIMAL(10,2) NOT NULL,
  `tiempo_descarga_horas` DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (`id_salida`)
);

-- EL AUTHOR DEBE SER GRUPO#
CREATE TABLE IF NOT EXISTS `simulationconfig` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `SimulationName` VARCHAR(100) DEFAULT NULL,
  `Author` VARCHAR(100) DEFAULT NULL,
  `CreationDate` DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `idx_simulation_name` (`SimulationName`)
);

INSERT INTO `embarcaciones` (`hora_salida`, `cantidad_toneladas`, `tiempo_descarga_horas`) VALUES
  ('08:15:00', 1000.00, 1.00),
  ('08:45:55', 3250.00, 3.25),
  ('09:00:00', 2250.00, 2.25),
  ('09:35:20', 3000.00, 3.00),
  ('11:30:00', 2000.00, 2.00),
  ('12:00:10', 3500.00, 3.50),
  ('12:20:00', 2500.00, 2.50),
  ('12:25:00', 3250.00, 3.25);