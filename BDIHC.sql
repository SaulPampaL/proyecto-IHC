-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.31-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for inthc
CREATE DATABASE IF NOT EXISTS `inthc` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `inthc`;

-- Dumping structure for table inthc.clase
CREATE TABLE IF NOT EXISTS `clase` (
  `idClase` int(11) NOT NULL AUTO_INCREMENT,
  `idCurso` int(11) DEFAULT NULL,
  `semana` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `fecha_subida` date DEFAULT NULL,
  `archivo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idClase`),
  KEY `FK_clase_curso` (`idCurso`),
  CONSTRAINT `FK_clase_curso` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table inthc.clase: ~6 rows (approximately)
/*!40000 ALTER TABLE `clase` DISABLE KEYS */;
INSERT INTO `clase` (`idClase`, `idCurso`, `semana`, `nombre`, `descripcion`, `fecha_subida`, `archivo`) VALUES
	(1, 1, 1, 'clase1', 'descripcion clase 1', '2018-11-03', 'clase1.pdf'),
	(2, 1, 2, 'clase2', 'descripcion clase 2', '2018-11-03', ''),
	(3, 2, 2, 'clase2', 'descripcion de lenguajes', '2018-11-06', 'clase2.pdf'),
	(4, 1, 2, 'asdasd', 'asd', '2018-11-07', 'seis_sigma.pdf'),
	(8, 4, 2, 'asdasdasdasd', 'asdasd', '2018-11-07', '08 PERT-CPM.pdf'),
	(9, 4, 2, 'asdasdasdasd', 'asdasd', '2018-11-07', '08 PERT-CPM.pdf'),
	(10, 5, 2, 'asdas', 'asdasd', '2018-11-14', ''),
	(11, 5, 2, 'asdas', 'asdasd', '2018-11-14', ''),
	(12, 5, 2, 'asdas', 'asdasd', '2018-11-14', ''),
	(13, 5, 2, 'asdas', 'asdasd', '2018-11-14', ''),
	(14, 5, 2, 'asdas', 'asdasd', '2018-11-14', ''),
	(15, 5, 2, 'asdas', 'asdasd', '2018-11-14', ''),
	(16, 5, 2, 'asdas', 'asdasd', '2018-11-14', ''),
	(17, 5, 2, 'asdas', 'asdasd', '2018-11-14', ''),
	(18, 5, 2, 'asdas', 'asdasd', '2018-11-14', ''),
	(19, 5, 2, 'asdas', 'asdasd', '2018-11-14', ''),
	(20, 5, 2, 'asdas', 'asdasd', '2018-11-14', ''),
	(21, 5, 2, 'asdas', 'asdasd', '2018-11-14', '');
/*!40000 ALTER TABLE `clase` ENABLE KEYS */;

-- Dumping structure for table inthc.curso
CREATE TABLE IF NOT EXISTS `curso` (
  `idCurso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `codCurso` varchar(30) DEFAULT NULL,
  `ciclo` int(11) DEFAULT NULL,
  `grupo` int(11) DEFAULT NULL,
  `horasLectivas` int(11) DEFAULT NULL,
  `idProfesor` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCurso`),
  KEY `FK_curso_usuario` (`idProfesor`),
  CONSTRAINT `FK_curso_usuario` FOREIGN KEY (`idProfesor`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table inthc.curso: ~5 rows (approximately)
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` (`idCurso`, `nombre`, `codCurso`, `ciclo`, `grupo`, `horasLectivas`, `idProfesor`) VALUES
	(1, 'Interfaz Hombre Computador', 'int001', 8, 1, 4, 6),
	(2, 'Lenguaje y compiladores', 'len002', 7, 2, 4, 5),
	(3, 'Sistemas Operativos', 'sis003', 6, 3, 4, 6),
	(4, 'Calidad y prueba de software', 'cal004', 8, 1, 4, 8),
	(5, 'Computacion Fisica', 'com005', 7, 2, 4, 9);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;

-- Dumping structure for table inthc.detalle_curso
CREATE TABLE IF NOT EXISTS `detalle_curso` (
  `idDetalle_curso` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) DEFAULT NULL,
  `idCurso` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDetalle_curso`),
  KEY `FK_detalle_curso_usuario` (`idUsuario`),
  KEY `FK_detalle_curso_curso` (`idCurso`),
  CONSTRAINT `FK_detalle_curso_curso` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`),
  CONSTRAINT `FK_detalle_curso_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table inthc.detalle_curso: ~4 rows (approximately)
/*!40000 ALTER TABLE `detalle_curso` DISABLE KEYS */;
INSERT INTO `detalle_curso` (`idDetalle_curso`, `idUsuario`, `idCurso`) VALUES
	(1, 3, 1),
	(2, 3, 2),
	(3, 3, 5),
	(4, 3, 4),
	(5, 4, 4);
/*!40000 ALTER TABLE `detalle_curso` ENABLE KEYS */;

-- Dumping structure for table inthc.tarea
CREATE TABLE IF NOT EXISTS `tarea` (
  `idTarea` int(11) NOT NULL AUTO_INCREMENT,
  `idDetalle_curso` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `archivoP` varchar(50) DEFAULT NULL,
  `archivoA` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `fecha_subida` date DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `fecha_limite` date DEFAULT NULL,
  PRIMARY KEY (`idTarea`),
  KEY `FK_tarea_detalle_curso` (`idDetalle_curso`),
  CONSTRAINT `FK_tarea_detalle_curso` FOREIGN KEY (`idDetalle_curso`) REFERENCES `detalle_curso` (`idDetalle_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table inthc.tarea: ~4 rows (approximately)
/*!40000 ALTER TABLE `tarea` DISABLE KEYS */;
INSERT INTO `tarea` (`idTarea`, `idDetalle_curso`, `nombre`, `descripcion`, `archivoP`, `archivoA`, `estado`, `fecha_subida`, `fecha_entrega`, `fecha_limite`) VALUES
	(1, 1, 'tarea1', 'descripcion tarea1', NULL, NULL, NULL, '2018-11-07', '2018-11-07', '2018-12-07'),
	(2, 3, 'tarea2', 'descripcion tarea 2', NULL, NULL, NULL, '2018-11-07', '2018-11-07', '2018-12-07'),
	(7, 5, 'asdasd', 'asdasd', 'document(1).pdf', NULL, 'falta', '2018-11-08', NULL, '2018-11-08'),
	(8, 4, 'asdasd', 'asdasd', 'document(1).pdf', NULL, 'falta', '2018-11-08', NULL, '2018-11-08'),
	(9, 5, 'asdasd', 'asdasd', 'document(1).pdf', NULL, 'falta', '2018-11-08', NULL, '2018-11-08');
/*!40000 ALTER TABLE `tarea` ENABLE KEYS */;

-- Dumping structure for table inthc.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) DEFAULT NULL,
  `apellidos` varchar(40) DEFAULT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table inthc.usuario: ~8 rows (approximately)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`idUsuario`, `nombre`, `apellidos`, `codigo`, `correo`, `telefono`, `foto`, `tipo`, `password`) VALUES
	(1, 'profesor1', 'Pariona Quispe', '000001', 'profesor1@unmsm.edu.pe', 999999001, 'delgadillo.png', 'profesor', '1111'),
	(2, 'Luis Alberto', 'Alarcon Loayza', '000002', 'profesor2@unmsm.edu.pe', 999999002, 'pariona.png', 'profesor', '2222'),
	(3, 'Martin', 'Luque', '100001', 'alumno1@unmsm.edu.pe', 999999003, 'martinluque.png', 'alumno', '1111'),
	(4, 'Pablo', 'Perez', '100002', 'alumno2@unmsm.edu.pe', 999999004, 'pabloperez.png', 'alumno', '2222'),
	(5, 'Jaime Ruben', 'Pariona Quispe', '000003', 'jaime.pariona@unmsm.edu.pe', 999999005, 'pariona.png', 'profesor', '1111'),
	(6, 'Carlos Enrique', 'Yañez Duran', '000004', 'carlos.yañez@unmsm.edu.pe', 999999006, 'yanez.png', 'profesor', '1111'),
	(7, 'Victor Hugo', 'Bustamante Olivera', '000005', 'victor.bustamante@unmsm.edu.pe', 999999007, 'bustamante.png', 'profesor', '1111'),
	(8, 'Fany', 'Sobero', '000006', 'fany.sobero@unmsm.edu.pe', 999999008, 'fany.png', 'profesor', '1111'),
	(9, 'Guerra Guerra', 'Jorge', '000007', 'jorge.guerra@unmsm.edu.pe', 999999009, 'guerra.png', 'profesor', '1111');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
