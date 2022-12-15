-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-12-2022 a las 06:16:08
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `repo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id_alumno` int(10) NOT NULL,
  `No_Cuenta` int(15) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido_Paterno` varchar(25) NOT NULL,
  `Apellido_Materno` varchar(25) NOT NULL,
  `Sexo` varchar(10) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id_alumno`, `No_Cuenta`, `Nombre`, `Apellido_Paterno`, `Apellido_Materno`, `Sexo`, `Telefono`, `Email`) VALUES
(1, 2019330123, 'Eddy', 'Angeles', 'García', 'F', '7121234567', 'eddy.233@gmail.com'),
(2, 2018330726, 'Luis Diego', 'Amado', 'Hernandez', 'M', '7121234568', 'luisdiego12@gmail.com'),
(3, 2019331234, 'Rubi', 'Ambriz', 'Martinez', 'F', '7123456789', 'rubi22@gmail.com'),
(4, 2019330693, 'Luis Antonio', 'Angeles', 'Sanchez', 'M', '7123456798', 'toño21@gmail.com'),
(5, 2019330479, 'Ivan Gustavo', 'Contreras', 'Rojas', 'M', '7127897410', 'ivangus@gmail.com'),
(6, 2019330682, 'Luis Antonio', 'De Jesus', 'Lopez', 'M', '7127410258', 'luisdeje@gmail.com'),
(7, 2018330142, 'Ibrahim Sebastian', 'Escobar', 'Lopez', 'M', '7128520147', 'ibraseb@gmail.com'),
(8, 2019331021, 'Eduardo', 'Felix', 'Alba', 'M', '7129630214', 'felix21@gmail.com'),
(9, 2019330176, 'Brayan', 'Flores', 'Martinez', 'M', '7121598740', 'brayann@gmail,com'),
(10, 2018330502, 'Diego Armando', 'Flores', 'Martinez', 'M', '7127536987', 'diegoarm@gmail.com'),
(11, 2019330075, 'Anahi', 'Garcia ', 'Arriaga', 'F', '7122588520', 'anahi@gmail.com'),
(12, 2019330468, 'Ivan David', 'Garcia', 'Cruz', 'M', '7122177887', 'ivanda12@gmail.com'),
(13, 2019330413, 'Gustavo', 'Garcia', 'Margarito', 'M', '7121234554', 'gusdsa@gmail.com'),
(14, 2019330435, 'Hugo', 'Garcia', 'Margarito', 'M', '7122177774', 'hugoga123@gmail.com'),
(15, 2019331212, 'Jonathan', 'Garcia', 'Romero', 'M', '7122236554', 'jonaww@gmail.com'),
(16, 2019330255, 'David Osvaldo', 'Garduño', 'Garcia', 'M', '7122587898', 'osvaqwe@gmail.com'),
(17, 2018330827, 'Luis Francisco', 'Gomez', 'Segundo', 'M', '7122136589', 'luisfrr@gmail.com'),
(18, 2019330626, 'Juan Francisco', 'Gomez', 'Segundo', 'M', '7221236547', 'juanfras@gmail.com'),
(19, 2019330244, 'David', 'Gonzalez', 'Martinez', 'M', '7122087298', 'kirito220833@gmail.com'),
(20, 2019330941, 'Xochitl', 'Hernandez', 'Gonzalez', 'F', '7221478520', 'xossa@gmail.com'),
(21, 2019331245, 'Citlali', 'Jimenez', 'Lopez', 'F', '7227897889', 'citla123@gmail.com'),
(22, 2019330143, 'Axel', 'Legorreta', 'Diaz', 'M', '7220013265', 'axellego@gmail.com'),
(23, 2019330761, 'Maria Guadalupe', 'Leonardo', 'Cruz', 'F', '7122203366', 'marigua12312@gmail.com'),
(24, 2019330738, 'Maria de los Angeles', 'Lopéz', 'Galindo', 'F', '7120102211', 'angeles123@gmail.com'),
(25, 2019330705, 'Luis Enrique', 'Lovera', 'Domingo', 'M', '7122223369', 'kike321@gmail.com'),
(26, 2019330019, 'Alan Michel', 'Mendoza', 'Lopez', 'M', '7228889779', 'alanmic@gmail.com'),
(27, 2019330266, 'Diana', 'Mendoza', 'Mateo', 'F', '7126957415', 'dianaweq@gmail.com'),
(28, 2019331010, 'Alfonso', 'Navarrete', 'Celestino', 'M', '5517894102', 'alfonso@gmail.com'),
(29, 2019331087, 'Maria Guadalupe', 'Navarrete', 'Cruz', 'F', '7221125975', 'navare@gmail.com'),
(30, 2019330569, 'Jose Armando', 'Perez', 'Gonzalez', 'M', '7412589630', 'armando123@gmail.com'),
(31, 2019330446, 'Iris Guadalupe', 'Posadas', 'Moreno', 'F', '7894561230', 'irispos@gmail.com'),
(32, 2019330187, 'Brenda Janeth', 'Ramirez', 'Flores', 'F', '7418520963', 'brandajane@gmail.com'),
(33, 2018330355, 'Isaac', 'Ramirez', 'Martinez', 'M', '7148529630', 'isaccs@gmail.com'),
(34, 2019330299, 'Diego', 'Ramirez', 'Sanchez', 'M', '0123987465', 'diegorami123@gmail.com'),
(35, 2019330558, 'Jose Alex', 'Reyes', 'Juarez', 'M', '71201470258', 'alexrey@gmail.com'),
(36, 2018330546, 'Francisco Adriana', 'Rodriguez', 'Francisco', 'F', '7120120509', 'adrirod@gmail.com'),
(37, 2018330748, 'Wilbert', 'Rojas', 'Mateo', 'M', '7120147898', 'wilbert@gmail.com'),
(38, 2018330638, 'Jennifer', 'Segundo', 'Bernal', 'F', '7897456321', 'jenni21312@gmail.com'),
(39, 2019331009, 'Alberto Makeinsy', 'Sena', 'Angeles', 'M', '712015950', 'makeinwew@gmail.com'),
(40, 2019330839, 'Pablo Edwin', 'Vilchis', 'Garduño', 'M', '712001599', 'pabloew@gmail.com'),
(41, 2019330424, 'Gustavo ', 'Archundia', 'Garcia', 'M', '5501477896', 'gussarchu@gmail.com'),
(42, 2019330110, 'Araceli', 'Bernal', 'Alvarez', 'F', '551478963', 'araceliwe1@gmail.com'),
(43, 2019330615, 'Juan Axel', 'Caballero', 'Camacho', 'M', '5512369874', 'juanaxel123@gmail.com'),
(44, 2019331166, 'Isaac', 'Camacho', 'Lucas', 'M', '5587946123', 'isaccs2@gmail.com'),
(45, 2019330086, 'Anahi', 'Castillo', 'Mateo', 'F', '5596321478', 'anahi72@gmail.com'),
(46, 2019330806, 'Octavio', 'Colin', 'Romero', 'M', '5574819263', 'octavioww@gmail.com'),
(47, 2018330041, 'Miriam Yaneth', 'Contreras', 'Trinidad', 'F', '7125500147', 'mirr232@gmail.com'),
(48, 2019331054, 'Brissa Marieli', 'Cruz', 'Gonzalez', 'F', '7127778790', 'brisaamr@gmail.com'),
(49, 2019331111, 'Edgar', 'De Jesus', 'Castro', 'M', '789456120', 'adgar213@gmail.com'),
(50, 2018330489, 'Leonel', 'Flores', 'Baustista', 'M', '9638520147', 'leow09@gmail.com'),
(51, 2019330828, 'Oscar', 'Flores', 'Martinez', 'M', '8520967413', 'oscar237@gmail.com'),
(52, 2019330020, 'Alberto', 'Flores', 'Ramirez', 'M', '7896541238', 'alberto@gmail.com'),
(53, 2019330031, 'Alejandro', 'Garcia', 'Cruz', 'M', '5578945018', 'ale8761@gmail.com'),
(54, 2019331201, 'Carlos Daniel', 'Garcia', 'Garcia', 'M', '9879639510', 'cardani@gmail.com'),
(55, 2019330514, 'Jesus', 'Garcia', 'Gaspar', 'M', '550014741', 'jususgasp@gmail.com'),
(56, 2019330592, 'Jose Miguel', 'Garduño', 'Cruz', 'M', '8975642310', 'josemige@gmail.com'),
(57, 2019330727, 'Marco Antonio', 'Gonzalez', 'Cruz', 'M', '9786453123', 'marcoww@gmail.com'),
(58, 2017330727, 'Anayeli', 'Longino', 'De jesus', 'F', '7987984650', 'anaye22@gmail.com'),
(59, 2019330367, 'Erica', 'Martinez', 'Rebollo', 'F', '7410741085', 'ricass092@gmail.com'),
(60, 2019330491, 'Jacqueline', 'Mateo', 'Vargas', 'F', '8520852096', 'matojac702@gmail.com'),
(61, 2019330323, 'Elizabeth', 'Mendoza', 'Antonio', 'F', '9639638520', 'aliwe1@gmail.com'),
(62, 2019331115, 'Gabriela', 'Moreno', 'Lorenzo', 'F', '7419630258', 'gabi702@gmail.com'),
(63, 2019330637, 'Kevin Santiago', 'Paz', 'Sanchez', 'M', '8799870025', 'kevin702@gmail.com'),
(64, 2019331076, 'Oscar Adrian', 'Pech', 'Muñoz', 'M', '132132650', 'oscar2321@gmail.com'),
(65, 2019331065, 'Edwin Alexis', 'Plata', 'De La Cruz', 'M', '02898746513', 'edwinalex23@gmail.com'),
(66, 2019330974, 'Jordy', 'Ramirez', 'Contreras', 'M', '7123577530', 'jodry231@gmail.com'),
(67, 2019330783, 'Meilin Yotzin', 'Real', 'Rojas', 'F', '7410017850', 'milin702@gmail.com'),
(68, 2017330703, 'Adelaida', 'Romero', 'Garcia', 'F', '7533699500', 'adeli702@gmail.com'),
(69, 2019331223, 'Maria Carolina', 'Salazar', 'Piñon', 'F', '5500741147', 'maricaro@gmail.com'),
(70, 2019330750, 'Maria Guadalupe', 'Sanchez', 'Rulfo', 'F', '2019337530', 'mariaguarulf@gmail.com'),
(71, 2019330165, 'Brayan', 'Sanchez', 'Ugalde', 'M', '9633210026', 'brayan0987@gmail.com'),
(72, 2018330669, 'Deysi', 'Segundo', 'Gonzalez', 'F', '6547893210', 'dey702@gmail.com'),
(73, 2018330197, 'Andres', 'Segundo', 'Hipolito', 'M', '3211233210', 'andres702@gmail.com'),
(74, 2019330907, 'Victor Manuel', 'Segundo', 'Marquez', 'M', '8796540907', 'victormanu702@gmail.com'),
(75, 2019330648, 'Leticia', 'Valdes', 'Longino', 'F', '789450648', 'letiui2@gmail.com'),
(76, 2019330929, 'Yanet', 'Vargas', 'Gonzalez', 'F', '3216540929', 'vargas22@gmail.com'),
(77, 2019330581, 'Jose Manuel', 'Velazquez', 'Cristobal', 'M', '5647890581', 'josemanu702@gmail.com'),
(78, 2019330211, 'Carlos Eduardo', 'Velazquez', 'Iturbide', 'M', '3217410811', 'carlos702@gmail.com'),
(79, 2019330222, 'Cristian', 'Velazquez', 'Martinez', 'M', '5193570222', 'cris702@gmail.com'),
(80, 2019330042, 'Alexia Selem', 'Zuñiga', 'Ruiz', 'F', '6541590042', 'selem702@gmail.com'),
(81, 2020330741, 'Ismael', 'Gonzalez', 'Faustino', 'M', '7121464949', 'isma@gmail.com'),
(82, 2020330190, 'Demetria', 'Martinez', 'Hernandez', 'F', '7121237410', 'dememar@gmail.com'),
(83, 2020330088, 'Diego', 'Gonzalez', 'Martinez', 'M', '7121591100', 'diego2208@gmail.com'),
(84, 2020330336, 'Saul', 'Martinez', 'Martinez', 'M', '5514789512', 'saul221@gmail.com'),
(85, 2020330493, 'Russ', 'Silva', 'Hernandez', 'F', '4566547800', 'russ@gmail.com'),
(86, 2020330033, 'Leeslie', 'Martinez', 'Silva', 'F', '7898798798', 'leslie@gmail.com'),
(87, 2020330055, 'Erick Saul', 'Gonzalez', 'Gonzalez', 'M', '7899874545', 'saulero@gmail.com'),
(88, 2020330235, 'Santiago', 'De Jesus', 'Hernandez', 'M', '4454651321', 'santi@gmail.com'),
(89, 2020330291, 'Alexis', 'Faustino', 'Cortes', 'M', '7896546540', 'alexsisdsa@gmail.com'),
(90, 2020330763, 'Sofia', 'zuñiga', 'Gutierres', 'F', '2214518631', 'sofi@gmail.com'),
(91, 2020330358, 'Amalia', 'Hernandez', 'Cruz', 'F', '4829357193', 'amalia@gmail.com'),
(92, 2020330392, 'Juan', 'Garcia', 'De Jesus', 'M', '17896540500', 'juanw32@gmail.com'),
(93, 2020330257, 'Israel', 'Perez', 'Crisostomo', 'M', '9995511200', 'isra2312@gmail.com'),
(94, 2020330415, 'Unberto', 'Gonzalez', 'Crisostomo', 'M', '985214700', 'beto213@gmail.com'),
(95, 2020330213, 'Jose Alberto', 'Dominguez', 'Cruz', 'M', '9764318520', 'pepe@gmail.com'),
(96, 2020330134, 'Luis', 'Peña', 'Cruz', 'M', '977641305', 'lus2312@gmail.com'),
(97, 2020330156, 'Rosio', 'Gonzalez', 'Hernandez', 'F', '8585857474', 'rosi21@gmail.com'),
(98, 2020331220, 'Perla', 'Hernandez', 'Cruz', 'F', '0989075678', 'perll@gmail.com'),
(99, 2020330538, 'Karina', 'Cruz', 'Dominguez', 'F', '87954621365', 'kari2298@gmail.com'),
(100, 2020330572, 'Chori', 'Gonzalez', 'Hernandez', 'M', '8520852050', 'chori2208@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asesor`
--

CREATE TABLE `asesor` (
  `id_asesor` int(15) NOT NULL,
  `Clave` int(35) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido_paterno` varchar(25) NOT NULL,
  `Apellido_materno` varchar(25) NOT NULL,
  `Telefono` varchar(35) NOT NULL,
  `Email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asesor`
--

INSERT INTO `asesor` (`id_asesor`, `Clave`, `Nombre`, `Apellido_paterno`, `Apellido_materno`, `Telefono`, `Email`) VALUES
(2, 2, 'Alex', 'Ramirez ', 'Galindo', '7121198754', 'alexram45@gmail.com'),
(3, 3, 'Raul', 'Nava', 'Lopez', '7121156703', 'raulnav09@gmail.com'),
(4, 4, 'brenda', 'Cordoba', 'Gonzalez', '7121156743', 'saulcord80@gmail.com'),
(5, 5, 'Rosa', 'Galindo', 'Garcia', '7121197241', 'rositagarcia00@gmail.com'),
(6, 6, 'Guadalupe', 'Rojas', 'Nava', '7121177341', 'lupitarojas01@gmail.com'),
(7, 7, 'Erika', 'Ramirez', 'Contreras', '7121116300', 'erikkaram33@gmail.com'),
(8, 8, 'Rodrigo', 'Villa', 'Lopez', '7121805902', 'rodrigovillaa9@gmail.com'),
(9, 9, 'Ivan', 'Angeles', 'Segundo', '7121177429', 'ivansegundoo67@gmail.com'),
(10, 10, 'Emanuel', 'Ruiz', 'Mateo', '7121125663', 'emmanuelruiz45@gmail.com'),
(11, 123456, 'Brenda', 'Miranda ', 'García', '7227437863', 'engi.bren@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajos`
--

CREATE TABLE `trabajos` (
  `id_proyecto` int(10) NOT NULL,
  `Nombre_proyecto` varchar(500) NOT NULL,
  `mes` varchar(10) NOT NULL,
  `año` int(4) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `no_cuenta_alumno` int(10) NOT NULL,
  `clave_asesor` int(10) NOT NULL,
  `ruta` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajos`
--

INSERT INTO `trabajos` (`id_proyecto`, `Nombre_proyecto`, `mes`, `año`, `Tipo`, `no_cuenta_alumno`, `clave_asesor`, `ruta`) VALUES
(2, 'APLICACIÓN MÓVIL DE RESEÑAS ETNOGRAFICA DE LA ZONA MAZAHUA UTILIZANDO GEOLOCALIZACIÓN', 'Febrero', 2001, 'tesina', 2018330726, 2, 'uploads/6db3e01cd8699eacaf274435611ddbbc.pdf'),
(3, 'IMPLEMENTACION DE UN SISTEMA EN LINEA DE TUTORIAS EL CASO DE LA ESCUELA PREPARATORIA OFICIAL No. 322', 'Febrero', 2001, 'Proyecto de Titulación', 2019331234, 3, 'uploads/6db3e01cd8699eacaf274435611ddbbc.pdf'),
(4, 'Análisis y diseño de la arquitectura empresarial para una empresa de servicio de maquinarias pesadas', 'Febrero', 2001, 'Proyecto de Investigación', 2019330693, 4, 'uploads/6db3e01cd8699eacaf274435611ddbbc.pdf'),
(5, 'Análisis comparativo de mecanismos de Comunicación Cross Platform', 'Febrero', 2001, 'Proyecto de Titulación', 2019330479, 5, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(6, 'Análisis y propuesta de gestión de servicios de tecnología de información', 'Junio', 2003, 'Proyecto de Investigacion', 2019330682, 6, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(7, 'Análisis y propuesta del plan estratégico del área de tecnología de información para la empresa Andes Seguridad S.A.C.', 'Mayo', 2002, 'Proyecto de Investigacion', 2018330142, 7, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(8, 'Análisis, diseño e implementación de los procesos de venta al personal', 'Marzo', 2004, 'Proyecto de Titulación', 2019331021, 8, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(9, 'Aplicación de inteligencia artificial para enriquecer el etiquetado del archivo de imágenes de El Comercio', 'Junio', 2005, 'Proyecto de Investigacion', 2019330176, 9, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(10, 'Planificación de diálogo en lenguaje natural usando técnicas de aprendizaje automático.', 'Enero', 2002, 'Informe de Residencia ', 2018330502, 10, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(11, 'Procedural Content Generation para modificar la Experiencia de Juego', '', 0, 'Informe de Residencia ', 2019330075, 1, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(12, 'Estimacion de densidad de arboles mediante el uso de imagenes satelitales', 'Octubre', 2001, 'Proyecto de Titulación', 2019330468, 2, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(13, 'Desarrollo de un servicio de nomenclátor en web', 'Noviembre', 2001, 'Informe de Residencia ', 2019330413, 3, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(14, 'Aplicación de machine learning para el problema de robotic grasping', 'Octubre', 2004, 'Proyecto de Investigacion', 2019330435, 4, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(15, 'Implementación de un sistema de información para la gestión de unidades de manipulación en almacenes de grandes dimensiones', 'Octubre', 2003, 'Proyecto de Titulación', 2019331212, 5, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(16, 'Implementación de sistemas de gestión de seguridad de la información (SGSI), de servicios de TI (ITSM) y firma electrónica ﻿', 'Junio', 2002, 'Proyecto de Investigacion', 2019330255, 6, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(17, 'Implementación de un sistema de gestión de activos de TI bajo la óptica del marco ITIL 4 ', 'Marzo', 2005, 'Proyecto de Titulación', 2018330827, 7, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(18, 'Diseño de un sistema de gestión de protección de datos personales basado en la norma ISO/IEC 27701:2019', 'Febrero', 2002, 'Informe de Residencia ', 2019330626, 8, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(19, 'Determinación y segmentación del nivel socio-económico a partir del análisis automático de imágenes de satélite ', 'Febrero', 2002, 'Informe de Residencia ', 2019330244, 9, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(20, 'Rediseño de un software de punto de venta aplicando técnicas de Diseño Centrado en el Usuario ﻿', 'Junio', 2003, 'Proyecto de Titulación', 2019330941, 10, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(21, 'Implementación de una aplicación web de soporte al proceso formal de evaluaciones heurísticas ﻿', 'Mayo', 2003, 'Proyecto de Titulación', 2019331245, 10, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(22, 'Diseño de un modelo de medición de accesibilidad en servicios de gobierno electrónico para personas con discapacidad visual ', 'Marzo', 2003, 'Proyecto de Investigacion', 2019330143, 9, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(23, 'Implementación de un sistema para la gestión del proceso de votación digital en instituciones privadas ﻿', 'Junio', 2004, 'Proyecto de Titulación', 2019330761, 8, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(24, 'Implementación de un sistema de información para el seguimiento y control de casos de covid-19 en empresas industriales ﻿', 'Enero', 2004, 'Informe de Residencia ', 2019330738, 7, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(25, 'Sistema de control de citas médicas mediante una aplicación móvil', 'Mauo', 2004, 'Proyecto de Investigacion', 2019330705, 6, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(26, 'Sistema Web y aplicación móvil para el control de calificaciones', 'Marzo', 2004, 'Proyecto de Titulación', 2019330019, 5, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(27, 'Desarrollo de escenarios virtuales para software de robótica educativa en 3D', 'Febrero', 2005, 'Informe de Residencia ', 2019330266, 4, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(28, 'Servicio express móvil', 'Abril', 2005, 'Tesis', 2019331010, 3, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(29, 'Ingeniería web para el sistema de control escolar', 'Julio', 2005, 'Proyecto de Titulación', 2019331087, 2, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(30, 'Implementación de los dispositivos periféricos en el sistema operativo Android', 'Marzo', 2006, 'Proyecto de Titulación', 2019330569, 1, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(31, 'Sistema de monitoreo en tiempo real', 'Junio', 2006, 'Informe de Residencia ', 2019330446, 1, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(32, 'Sistema monitor de la red eléctrica de potencia del área central de México', 'Febrero', 2006, 'Proyecto de Investigacion', 2019330187, 2, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(33, 'Modelado de robots mediante ingeniería inversa', 'Febrero', 2006, 'Informe de Residencia ', 2018330355, 3, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(34, 'Sistema de monitoreo usando comunicación por radiofrecuencia', 'Febrero', 2007, 'Proyecto de Investigacion', 2019330299, 4, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(35, 'Proceso de instalación de una señal de FM mediante un caso de estudio', 'Abril', 2007, 'Informe de Residencia ', 2019330558, 5, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(36, 'Técnicas de ingeniería en la detección de niños problema', 'Mayo', 2007, 'Informe de Residencia ', 2018330546, 6, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(37, 'Propuesta de diseño de encriptación en un FPGA', 'Agosto', 2007, 'Proyecto de Investigacion', 2018330748, 7, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(38, 'Implementación de sistemas de Thin Client en una institución bancaria', 'Agosto', 2007, 'Proyecto de Investigacion', 2018330638, 8, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(39, 'Desarrollo de una arquitectura cliente-servidor para la automatización del PSEDI', 'Septiembre', 2007, 'Informe de Residencia ', 2019331009, 9, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(40, 'Análisis y modelado de servicios de ti', 'Octubre', 2008, 'Informe de Residencia ', 2019330839, 10, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(41, 'Sistema de administración WEB de la casa de huéspedes Matti', 'Noviembre', 2008, 'Proyecto de Titulación', 2019330424, 1, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(42, 'Análisis y diseño de un sistema de información de las tesis presentadas', 'Diciembre', 2009, 'Proyecto de Titulación', 2019330110, 2, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(43, 'Esquema de seguridad inalámbrica para casa habitación ', 'Noviembre', 2009, 'Proyecto de Titulación', 2019330615, 3, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(44, 'Descripción del proceso de un enlace por fibra óptica', 'Octubre', 2009, 'Proyecto de Investigacion', 2019331166, 4, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(45, 'Sistema de transmisión de señales audio y video ', 'Septiembre', 2010, 'Proyecto de Investigación', 2019330086, 4, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(46, 'Propuesta de implementación de la plataforma educativa', 'Febrero', 2010, 'Proyecto de Titulación', 2019330806, 5, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(47, 'Seguridad en gestión remota de servidores', 'Abril', 2010, 'Proyecto de Investigacion', 2018330041, 6, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(48, 'Conformar e implementar opciones para la solución de redes inalámbricas ', 'Mayo', 2010, 'Proyecto de Titulación', 2019331054, 6, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(49, 'Diseño, construcción y colocación de un satélite geoestacionario', 'Junio', 2010, 'Proyecto de Investigacion', 2019331111, 7, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(50, 'Propuesta de sistema de comunicación inalámbrico de radio y T.V.', 'Julio', 2010, 'Informe de Residencia ', 2018330489, 7, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(51, 'Sistema de telemetría, automatización y control en tiempo real', 'Marzo', 2011, 'Informe de Residencia ', 2019330828, 7, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(52, 'Manual de usuario del sistema de telemetría', 'Agosto', 2011, 'Proyecto de Investigacion', 2019330020, 8, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(53, 'Estudio y análisis del uso de ancho de banda en la red', 'Septiembre', 2011, 'Proyecto de Titulación', 2019330031, 8, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(54, 'Diseño de una estación de radio universitaria en frecuencia modulada', 'Octubre', 2011, 'Proyecto de Investigacion', 2019331201, 9, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(55, 'Análisis de riesgos aplicados a un sistema de reservaciones', 'Noviembre', 2012, 'Proyecto de Titulación', 2019330514, 9, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(56, 'Sistema automatizado de procesos administrativos del personal', 'Diciembre', 2012, 'Informe de Residencia ', 2019330592, 10, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(57, 'Propuesta de una red inalámbrica para un conjunto habitacional', 'Noviembre', 2012, 'Informe de Residencia ', 2019330727, 10, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(58, 'Apoyo didáctico vía Web para la impartición de la geometría analítica', 'Octubre', 2012, 'Proyecto de Titulación', 2017330727, 10, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(59, 'Un modelo para el diseño de sitios web educativos', 'Septiembre', 2013, 'Proyecto de Investigacion', 2019330367, 9, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(60, 'Implementación de una herramienta tecnológica para la mejora del servicio de mesa de ayuda', 'Octubre', 2013, 'Informe de Residencia ', 2019330491, 4, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(61, 'Proyecto de implementación de telefonía IP (Voip) sobre la plataforma de Cisco en la empresa AMCOR', 'Febrero', 2013, 'Informe de Residencia ', 2019330323, 4, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(62, 'Propuesta de implementación de un sistema informático desarrollado en una plataforma web para la mejora de la gestión de responsabilidad social universitaria basado en el modelo Ursula', 'Febrero', 2013, 'Proyecto de Investigacion', 2019331115, 1, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(63, 'Controles del centro de seguridad de internet para la defensa cibernética que minimizan las vulnerabilidades', 'Marzo', 2013, 'Proyecto de Investigacion', 2019330637, 8, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(64, 'Sistema de gestión en la nube para pequeña empresa restaurantera en modalidad de negocio móvil de comida rápida', 'Junio', 2013, 'Informe de Residencia ', 2019331076, 9, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(65, 'Desarrollo de aplicativo web para mejorar la gestión de almacén y ventas en una empresa privada', 'Mayo', 2013, 'Informe de Residencia ', 2019331065, 9, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(66, 'Implementación de un sistema web para la gestión de ventas e inventario de una empresa de calzado', 'Agosto', 2013, 'Proyecto de Investigacion', 2019330974, 9, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(67, 'Análisis diseño e implementación de un data mart de ventas para una empresa de servicios', 'Agosto', 2014, 'Proyecto de Investigacion', 2019330783, 7, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(68, 'Implementación y actualización de plataforma de Call Center multicanal Genesys Engage', 'Enero', 2014, 'Tesis', 2017330703, 5, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(69, 'Propuesta de un sistema inmótico para la automatización del monitoreo de energía renovable en un resort', 'Octubre', 2014, 'Informe de Residencia ', 2019331223, 3, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(70, 'Propuesta de implementación de una aplicación móvil de comida saludable personalizada en el distrito de Ate', 'Noviembre', 2014, 'Proyecto de Investigacion', 2019330750, 2, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(71, '“Smart Bracelet” – pulsera inteligente', 'Diciembre', 2015, 'Tesis', 2019330165, 2, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(72, 'Implementación de software de un sistema de bienestar físico personalizado', 'Noviembre', 2015, 'Informe de Residencia ', 2018330669, 1, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(73, 'Proyecto de implementación de buenas prácticas de administración de recursos alojados en Amazon Web Services para controlar el consumo mensual', 'Octubre', 2015, 'Proyecto de Investigacion', 2018330197, 1, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(74, 'Propuesta de solución de inteligencia de negocios para mejorar el control y seguimiento comercial en una franquicia de restaurantes', 'Septiembre', 2015, 'Proyecto de Investigacion', 2019330907, 1, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(75, 'Sistema de gestión del conocimiento y talento humano para la gestión empresarial', 'Octubre', 2015, 'Informe de Residencia ', 2019330648, 2, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(76, 'WIP – Sistema de registro de portafolio de trabajos universitarios', 'Febrero', 2015, 'Tesis', 2019330929, 3, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(77, 'Implementación de sistema de reserva de citas médicas en línea', 'Marzo', 2015, 'Informe de Residencia ', 2019330581, 4, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(78, 'Implementación de un sistema web de reserva de paquetes de viaje de American Reps', 'Febrero', 2016, 'Proyecto de Investigacion', 2019330211, 5, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(79, 'Implementación de redes de datos para entidades públicas del sector educación', 'Abril', 2016, 'Tesis', 2019330222, 6, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(80, 'Proyecto plataforma Web Synergy para mejora de gestión de proyectos de la empresa “DSB Mobile S.A.C.”', 'Mayo', 2016, 'Informe de Residencia ', 2019330042, 7, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(81, 'Estudio de los fundamentos para el aprendizaje y el conocimiento computacional', 'Marzo', 2016, 'Informe de Residencia ', 2020330741, 8, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(82, 'Sistema embebido en tiempo real usando tecnología móvil para el control del nivel de glucosa en pacientes diabéticos ﻿', 'Agosto', 2016, 'Proyecto de Investigacion', 2020330190, 9, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(83, 'Desarrollo de una Aplicación Web para mejorar el Control de Avances Académicos y Asistencia de Docentes', 'Enero', 2016, 'Proyecto de Investigacion', 2020330088, 10, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(84, 'Identificación y análisis de quejas en Twitter de los principales bancos en México de 2018 a 2019 mediante técnicas de minería de datos y recuperación de información', 'Octubre', 2017, 'Informe de Residencia ', 2020330336, 1, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(85, 'Implementación del sistema de indicadores de desempeño de los Centros CONACYT', 'Noviembre', 2017, 'Informe de Residencia ', 2020330493, 10, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(86, 'Implentación de servicios de correo electrónico y portales web, para la administración pública federal', 'Diciembre', 2017, 'Proyecto de Investigacion', 2020330033, 9, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(87, 'Investigación sobre las principales aplicaciones móviles existentes en relación a la seguridad de las mujeres en la Ciudad de México y su efectividad', 'Septiembre', 2017, 'Tesis', 2020330055, 8, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(88, 'La constitución y la protección de datos personales en México: las inconsistencias en el esquema de excepciones', 'Octubre', 2017, 'Informe de Residencia ', 2020330235, 7, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(89, 'La protección de datos personales de menores en redes sociales: desafíos y recomendaciones', 'Septiembre', 2018, 'Proyecto de Investigacion', 2020330291, 6, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(90, 'La protección de los datos personales de las personas adultas mayores, en una institución de asistencia privada ubicada en la Ciudad de México', 'Octubre', 2018, 'Tesis', 2020330763, 5, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(91, 'Manual para el emprendimiento a partir del desarrollo y explotación de un programa de cómputo', 'Febrero', 2019, 'Informe de Residencia ', 2020330358, 4, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(92, 'Manual para el uso de los datos biométricos en los servicios financieros', 'Septiembre', 2019, 'Informe de Residencia ', 2020330392, 3, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(93, 'Medidas de seguridad de protección de datos personales en mi lugar de trabajo', 'Octubre', 2019, 'Proyecto de Investigacion', 2020330257, 2, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(94, 'Modelo de arquitectura empresarial para el diseño tecnológico de las aeropuertos en México', 'Septiembre', 2019, 'Proyecto de Investigacion', 2020330415, 1, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(95, 'Propuesta para la evaluación de la capacidad de innovación de una organización', 'Mayo', 2019, 'Proyecto de Investigacion', 2020330213, 8, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(96, 'Módulo Sensor de Energía basado en Internet de las Cosas (MSE-IoT)', 'Agosto', 2019, 'Informe de Residencia ', 2020330134, 9, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(97, 'Parlamento abierto, medios electrónicos y ciudadanía informada', 'Junio', 2020, 'Informe de Residencia ', 2020330156, 5, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(98, 'Perfil de Innovación del departamento de Tecnología de Información en una compañía de seguros', 'Septiembre', 2020, 'Informe de Residencia ', 2020331220, 5, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(99, 'Perfil del intraemprendedor de telecomunicaciones frente a la Cuarta Revolución Industrial', 'Octubre', 2020, 'Tesis', 2020330538, 6, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(100, 'Plataforma digital para servicios educativos en la Delegación Cuauhtémoc', 'Noviembre', 2021, 'Informe de Residencia ', 2020330572, 3, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(105, 'Repositorio de Trabajos Escritos de Ingeniería Informática', 'Noviembre', 2022, 'Proyecto', 2019330682, 2, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(106, 'Prueba 1', 'Febrero', 2013, 'Tesis', 2019330682, 2, 'uploads/77d52019be61a37b3a94f1c860d3c0ce.pdf'),
(107, 'Prueba 3', 'Julio', 2017, 'Tesis', 2019330682, 5, 'uploads/b5b432aeb33a923c42620eb390a9d10f.pdf'),
(108, 'proyecto Xd', 'Diciembre', 2003, 'Tesis', 2019330682, 2, 'uploads/7a97d5eeace4e3257192b49d8ad75684.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `password` int(11) NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `password`, `rol`) VALUES
(123, 2, 123456789, 1),
(124, 3, 123456789, 1),
(125, 4, 123456789, 1),
(126, 5, 123456789, 1),
(127, 6, 123456789, 1),
(128, 7, 123456789, 1),
(129, 8, 123456789, 1),
(130, 9, 123456789, 1),
(131, 10, 123456789, 1),
(132, 2019330123, 12345, 2),
(133, 2018330726, 12345, 2),
(134, 2019331234, 12345, 2),
(135, 2019330693, 12345, 2),
(136, 2019330479, 12345, 2),
(137, 2019330682, 12345, 2),
(138, 2018330142, 12345, 2),
(139, 2019331021, 12345, 2),
(140, 2019330176, 12345, 2),
(141, 2018330502, 12345, 2),
(142, 2019330075, 12345, 2),
(143, 2019330468, 12345, 2),
(144, 2019330413, 12345, 2),
(145, 2019330435, 12345, 2),
(146, 2019331212, 12345, 2),
(147, 2019330255, 12345, 2),
(148, 2019330255, 12345, 2),
(149, 2018330827, 12345, 2),
(150, 2019330626, 12345, 2),
(151, 2019330244, 12345, 2),
(152, 2019330941, 12345, 2),
(153, 2019331245, 12345, 2),
(154, 2019330143, 12345, 2),
(155, 2019330761, 12345, 2),
(156, 2019330738, 12345, 2),
(157, 2019330705, 12345, 2),
(158, 2019330019, 12345, 2),
(159, 2019330266, 12345, 2),
(160, 2019331010, 12345, 2),
(161, 2019331087, 12345, 2),
(162, 2019330569, 12345, 2),
(163, 2019330446, 12345, 2),
(164, 2019330187, 12345, 2),
(165, 2018330355, 12345, 2),
(166, 2019330299, 12345, 2),
(167, 2019330558, 12345, 2),
(168, 2018330546, 12345, 2),
(169, 2018330748, 12345, 2),
(170, 2018330636, 12345, 2),
(171, 2019331009, 12345, 2),
(172, 2019330839, 12345, 2),
(173, 2019330424, 12345, 2),
(174, 2019330110, 12345, 2),
(175, 2019330615, 12345, 2),
(176, 2019331166, 12345, 2),
(177, 2019330086, 12345, 2),
(178, 2019330806, 12345, 2),
(179, 2018330041, 12345, 2),
(180, 2019331054, 12345, 2),
(181, 2019331111, 12345, 2),
(182, 2018330489, 12345, 2),
(183, 2019330828, 12345, 2),
(184, 2019330020, 12345, 2),
(185, 2019330031, 12345, 2),
(186, 2019331201, 12345, 2),
(187, 2019330514, 12345, 2),
(188, 2019330592, 12345, 2),
(189, 2019330727, 12345, 2),
(190, 2017330275, 12345, 2),
(191, 2019330367, 12345, 2),
(192, 2019330491, 12345, 2),
(193, 2019330323, 12345, 2),
(194, 2019331155, 12345, 2),
(195, 2019330637, 12345, 2),
(196, 2019331076, 12345, 2),
(197, 2019331065, 12345, 2),
(198, 2019330974, 12345, 2),
(199, 2019330783, 12345, 2),
(200, 2017330703, 12345, 2),
(201, 2019331223, 12345, 2),
(202, 2019330750, 12345, 2),
(203, 2019330165, 12345, 2),
(204, 2018330669, 12345, 2),
(205, 2018330197, 12345, 2),
(206, 2019330907, 12345, 2),
(207, 2019330648, 12345, 2),
(208, 2019330929, 12345, 2),
(209, 2019330581, 12345, 2),
(210, 2019330211, 12345, 2),
(211, 2019330222, 12345, 2),
(212, 2019330042, 12345, 2),
(213, 2020330741, 12345, 2),
(214, 2020330190, 12345, 2),
(215, 2020330088, 12345, 2),
(216, 2020330336, 12345, 2),
(217, 2020330493, 12345, 2),
(218, 2020330033, 12345, 2),
(219, 2020330055, 12345, 2),
(220, 2020330235, 12345, 2),
(221, 2020330291, 12345, 2),
(222, 2020330763, 12345, 2),
(223, 2020330358, 12345, 2),
(224, 2020330392, 12345, 2),
(225, 2020330257, 12345, 2),
(226, 2020330213, 12345, 2),
(227, 2020330415, 12345, 2),
(228, 2020330134, 12345, 2),
(229, 2020330156, 12345, 2),
(230, 2020330538, 12345, 2),
(231, 2020330572, 12345, 2),
(233, 123456, 1234, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id_alumno`),
  ADD KEY `No_Cuenta` (`No_Cuenta`);

--
-- Indices de la tabla `asesor`
--
ALTER TABLE `asesor`
  ADD PRIMARY KEY (`id_asesor`),
  ADD KEY `Clave` (`Clave`);

--
-- Indices de la tabla `trabajos`
--
ALTER TABLE `trabajos`
  ADD PRIMARY KEY (`id_proyecto`),
  ADD KEY `clave_asesor` (`clave_asesor`),
  ADD KEY `no_cuenta_alumno` (`no_cuenta_alumno`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id_alumno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `asesor`
--
ALTER TABLE `asesor`
  MODIFY `id_asesor` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `trabajos`
--
ALTER TABLE `trabajos`
  MODIFY `id_proyecto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
