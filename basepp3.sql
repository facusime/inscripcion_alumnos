-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 31-10-2023 a las 15:46:19
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `basepp3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
CREATE TABLE IF NOT EXISTS `alumnos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `dni` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `cuil` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `dni`, `mail`, `cuil`, `telefono`, `domicilio`, `localidad`) VALUES
(1, 'Facundo', 'Simeoni', '40086620', 'facundosimeoni@gmail.com', '20400866202', '2646293463', 'sargento cabral', 'Caucete'),
(2, 'Federico', 'Moran', '42300984', 'fedemoran@gmail.com', '20423009847', '2646287392', 'castro 2', 'Caucete'),
(3, 'Sebastian', 'Gutierrez', '43123456', 'sebagutierrez@gmail.com', '20910981231', '1231209341', 'ruta 20', 'Caucete'),
(9, 'Raul', 'Cascini', '930223943249', 'raul@gmail.com', '832932498832', '32898324989432', 'normal ', '25 de Mayo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursa`
--

DROP TABLE IF EXISTS `cursa`;
CREATE TABLE IF NOT EXISTS `cursa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `alumno` int DEFAULT NULL,
  `materia` int DEFAULT NULL,
  `division` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alumno` (`alumno`),
  KEY `materia` (`materia`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cursa`
--

INSERT INTO `cursa` (`id`, `alumno`, `materia`, `division`, `fecha`, `estado`) VALUES
(1, 1, 3, 1, '2023-10-15', 0),
(2, 1, 1, 1, '2023-10-15', 0),
(9, 2, 6, 2, '2023-10-16', 0),
(8, 2, 1, 2, '2023-10-16', 0),
(10, 8, 14, 2, '2023-10-25', 0),
(11, 9, 15, 2, '2023-10-30', 0),
(12, 3, 10, 2, '2023-10-30', NULL),
(13, 9, 10, 2, '2023-10-30', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicta`
--

DROP TABLE IF EXISTS `dicta`;
CREATE TABLE IF NOT EXISTS `dicta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profesor` int DEFAULT NULL,
  `materia` int DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `baja` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_09` (`materia`),
  KEY `fk_08` (`profesor`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicta`
--

INSERT INTO `dicta` (`id`, `profesor`, `materia`, `inicio`, `baja`) VALUES
(1, 3, 7, '2023-10-16', '2023-10-20'),
(2, 3, 8, '2023-10-16', NULL),
(3, 1, 4, '2023-10-16', '2023-10-20'),
(4, 1, 6, '2023-10-16', '2023-10-16'),
(5, 3, 10, '2023-10-16', '2023-10-20'),
(6, 3, 4, '2023-10-16', NULL),
(7, 1, 10, '2023-10-16', '2023-10-17'),
(8, 3, 11, '2023-10-16', '2023-10-20'),
(9, 5, 10, '2023-10-16', '2023-10-20'),
(10, 1, 7, '2023-10-16', '2023-10-17'),
(11, 5, 6, '2023-10-20', '2023-10-20'),
(12, 5, 11, '2023-10-20', NULL),
(13, 1, 10, '2023-10-20', NULL),
(14, 3, 6, '2023-10-20', '2023-10-20'),
(15, 6, 13, '2023-10-20', '2023-10-20'),
(16, 1, 3, '2023-10-20', NULL),
(17, 13, 14, '2023-10-25', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

DROP TABLE IF EXISTS `materia`;
CREATE TABLE IF NOT EXISTS `materia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `anno` int DEFAULT NULL,
  `semestre` int DEFAULT NULL,
  `plan` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_03` (`plan`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `nombre`, `anno`, `semestre`, `plan`) VALUES
(4, 'Base de datos I', 1, 1, 3),
(6, 'Base de datos II', 2, 1, 5),
(11, 'Matematica II', 2, 2, 5),
(10, 'Diseño', 1, 1, 5),
(13, 'Sistema Operativo y Redes', 2, 1, 5),
(15, 'ESI', 3, 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_estudio`
--

DROP TABLE IF EXISTS `plan_estudio`;
CREATE TABLE IF NOT EXISTS `plan_estudio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `num_res` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `emision` date DEFAULT NULL,
  `expiracion` date DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `modificacion` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `plan_estudio`
--

INSERT INTO `plan_estudio` (`id`, `num_res`, `titulo`, `emision`, `expiracion`, `estado`, `modificacion`) VALUES
(3, '2118-me-2021', 'Analista', '2023-10-09', NULL, 'Activo', '2023-10-16'),
(2, '2122-me-2014', 'Analista', '2023-10-07', NULL, 'Activo', NULL),
(4, '2862-me-2011', 'Developer', '2023-10-07', '2023-10-14', 'Activo', NULL),
(5, '2120-me-2019', 'Diseñador Grafico', '2023-10-07', NULL, 'Activo', '2023-10-14'),
(7, '2022-me-2000', 'Diseñador', '2023-10-14', NULL, 'Activo', NULL),
(8, '2119-me-2023', 'Periodismo', '2023-10-25', '2023-10-25', 'Activo', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

DROP TABLE IF EXISTS `profesores`;
CREATE TABLE IF NOT EXISTS `profesores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `dni` varchar(40) NOT NULL,
  `cuil` varchar(50) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `cbu` varchar(30) NOT NULL,
  `matricula` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `nombre`, `apellido`, `dni`, `cuil`, `titulo`, `cbu`, `matricula`) VALUES
(1, 'Jorge', 'Benitez', '23882392', '2027654789', '1696708348_be4dcc5ef91465466550.pdf', '82349892348783', '38989238932'),
(3, 'Juan Roman', 'Riquelme', '17888888', '20178888882', '1697127818_32f433ccaed28208b873.pdf', '123456789', '987654321'),
(6, 'Moran', 'Federico', '091823091', '1092381032918', '1697769332_ef6c11e13aa891ae385f.docx', '123813131231', '838383727113093'),
(5, 'Marcelo', 'Aballay', '23483255', '1882810192387', '1697504249_3135b8b60e7e5ccfcd13.docx', '1091838320923', '847473992181');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
