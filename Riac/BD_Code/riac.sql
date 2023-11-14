-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2023 a las 18:59:43
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `riac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accion_realizada`
--

CREATE TABLE `accion_realizada` (
  `Id_Accion_Realizada` int(11) NOT NULL,
  `Observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `Id_Carrera` int(11) NOT NULL,
  `Nombre_Carrera` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`Id_Carrera`, `Nombre_Carrera`) VALUES
(1, 'Informatica'),
(2, 'Contabilidad'),
(3, 'Alimentos y bebidas'),
(4, 'Hospitalidad Turistica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `Id_Estado` int(11) NOT NULL,
  `Nombre_Estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`Id_Estado`, `Nombre_Estado`) VALUES
(1, 'Mexico'),
(2, 'Queretaro'),
(3, 'Puebla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus`
--

CREATE TABLE `estatus` (
  `Id_Estatus` int(11) NOT NULL,
  `Nombre_Estatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatus`
--

INSERT INTO `estatus` (`Id_Estatus`, `Nombre_Estatus`) VALUES
(1, 'Activo'),
(2, 'Baja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expedientes`
--

CREATE TABLE `expedientes` (
  `Id_Expediente` int(11) NOT NULL,
  `Matricula` int(255) NOT NULL,
  `Calle` varchar(55) NOT NULL,
  `Colonia` varchar(55) NOT NULL,
  `Numero` varchar(55) NOT NULL,
  `CP` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `expedientes`
--

INSERT INTO `expedientes` (`Id_Expediente`, `Matricula`, `Calle`, `Colonia`, `Numero`, `CP`) VALUES
(1, 1234561941, 'Calle Ficticia 1', 'Colonia Ficticia 1', '123', 53400),
(2, 2147483647, 'Calle Ficticia 2', 'Colonia Ficticia 2', '456', 53600),
(3, 2147483647, 'Calle Ficticia 3', 'Colonia Ficticia 3', '789', 53200),
(4, 1111111941, 'Calle Ficticia 4', 'Colonia Ficticia 4', '101', 53800),
(5, 2147483647, 'Calle Ficticia 5', 'Colonia Ficticia 5', '111', 53000),
(6, 2147483647, 'Calle Ficticia 6', 'Colonia Ficticia 6', '222', 53100),
(7, 2147483647, 'Calle Ficticia 7', 'Colonia Ficticia 7', '333', 53300),
(8, 2147483647, 'Calle Ficticia 8', 'Colonia Ficticia 8', '444', 53700),
(9, 2147483647, 'Calle Ficticia 9', 'Colonia Ficticia 9', '555', 53900),
(10, 2147483647, 'Calle Ficticia 10', 'Colonia Ficticia 10', '666', 53500),
(11, 2147483647, 'Calle Ficticia 11', 'Colonia Ficticia 11', '777', 53450),
(12, 1231231941, 'Calle Ficticia 12', 'Colonia Ficticia 12', '888', 53460),
(13, 2147483647, 'Calle Ficticia 13', 'Colonia Ficticia 13', '999', 53470),
(14, 2118701941, 'Calle Ficticia 14', 'Colonia Ficticia 14', '123', 53480);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `Id_Genero` int(11) NOT NULL,
  `Genero` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`Id_Genero`, `Genero`) VALUES
(1, 'Hombre'),
(2, 'Mujer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `Id_Grupo` int(11) NOT NULL,
  `Nombre_Grupo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`Id_Grupo`, `Nombre_Grupo`) VALUES
(1, '101'),
(2, '102'),
(3, '103'),
(4, '104'),
(5, '105'),
(6, '106'),
(7, '201'),
(8, '202'),
(9, '203'),
(10, '204'),
(11, '205'),
(12, '206'),
(13, '301'),
(14, '302'),
(15, '303'),
(16, '304'),
(17, '305'),
(18, '306'),
(19, '401'),
(20, '402'),
(21, '403'),
(22, '404'),
(23, '405'),
(24, '406'),
(25, '501'),
(26, '502'),
(27, '503'),
(28, '504'),
(29, '505'),
(30, '506'),
(31, '601'),
(32, '602'),
(33, '603'),
(34, '604'),
(35, '605'),
(36, '606');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informes`
--

CREATE TABLE `informes` (
  `Id_Informe` int(11) NOT NULL,
  `Id_Modulo` int(11) NOT NULL,
  `N_Tutor` varchar(255) NOT NULL,
  `Id_Grupo` int(11) NOT NULL,
  `Id_Carrera` int(11) NOT NULL,
  `Id_Turno` int(11) NOT NULL,
  `Id_Mes` int(11) NOT NULL,
  `Fecha_Entrega` date NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Id_Genero` int(11) NOT NULL,
  `Id_Problematica` int(11) NOT NULL,
  `Observacion` varchar(500) DEFAULT NULL,
  `Id_Accion_Realizada` int(11) NOT NULL,
  `Sugerencia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meses`
--

CREATE TABLE `meses` (
  `Id_Mes` int(11) NOT NULL,
  `Nombre_Mes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `meses`
--

INSERT INTO `meses` (`Id_Mes`, `Nombre_Mes`) VALUES
(1, 'Enero'),
(2, 'Febrero'),
(3, 'Marzo'),
(4, 'Abril'),
(5, 'Mayo'),
(6, 'Junio'),
(7, 'Julio'),
(8, 'Agosto'),
(9, 'Septiembre'),
(10, 'Octubre'),
(11, 'Noviembre'),
(12, 'Diciembre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

CREATE TABLE `modulos` (
  `Id_Modulo` int(11) NOT NULL,
  `Nombre_Modulo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `motivo_atencion`
--

CREATE TABLE `motivo_atencion` (
  `Id_Motivo_Atencion` int(11) NOT NULL,
  `Nombre_Motivo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `Id_Municipio` int(11) NOT NULL,
  `Nombre_Municipio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`Id_Municipio`, `Nombre_Municipio`) VALUES
(1, 'Naucalpan'),
(2, 'Tlanepantla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planteles`
--

CREATE TABLE `planteles` (
  `Id_Plantel` int(11) NOT NULL,
  `Nombre_Plantel` varchar(255) NOT NULL,
  `Email_Plantel` varchar(255) NOT NULL,
  `Telefono_Plantel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `planteles`
--

INSERT INTO `planteles` (`Id_Plantel`, `Nombre_Plantel`, `Email_Plantel`, `Telefono_Plantel`) VALUES
(1, 'Naucalpan1', 'cn_naucalpan1@conalepmex.edu.mx', '55-53-12-22-77'),
(2, 'Naucalpan2', 'cn_naucalpan2@conalepmex.edu.mx', '55-53-12-43-92');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `problematicas`
--

CREATE TABLE `problematicas` (
  `Id_Problematica` int(11) NOT NULL,
  `Inasistencias` varchar(255) DEFAULT NULL,
  `Bajo_Rendimiento` varchar(255) DEFAULT NULL,
  `Comportamiento` varchar(255) DEFAULT NULL,
  `Estudiante_NEE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestres`
--

CREATE TABLE `semestres` (
  `Id_Semestre` int(11) NOT NULL,
  `Nombre_Semestre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `semestres`
--

INSERT INTO `semestres` (`Id_Semestre`, `Nombre_Semestre`) VALUES
(1, 'Primero'),
(2, 'Segundo'),
(3, 'Tercero'),
(4, 'Cuarto'),
(5, 'Quinto'),
(6, 'Sexto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `Id_Turno` int(11) NOT NULL,
  `Turno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`Id_Turno`, `Turno`) VALUES
(1, 'Matutino'),
(2, 'Vespertino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuarios`
--

CREATE TABLE `tusuarios` (
  `Id_TUsuario` int(11) NOT NULL,
  `Nombre_TUsuario` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tusuarios`
--

INSERT INTO `tusuarios` (`Id_TUsuario`, `Nombre_TUsuario`, `Descripcion`) VALUES
(1, 'Sistemas', 'SuperUsuario'),
(2, 'Administrativos', 'UsuarioTecnico'),
(3, 'Docentes', 'UsuarioTecnico'),
(4, 'Tutor_F', 'UsuarioFinal'),
(5, 'Orientador', 'UsuarioTecnico'),
(6, 'Alumnos', 'UsuarioFinal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `ApellidoP` varchar(255) NOT NULL,
  `ApellidoM` varchar(255) NOT NULL,
  `Telefono` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Online` int(11) NOT NULL,
  `Img_Usuario` varchar(255) NOT NULL,
  `Id_Plantel` int(11) NOT NULL,
  `Id_TUsuario` int(11) NOT NULL,
  `Id_Estatus` int(11) NOT NULL,
  `Id_Expediente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_Usuario`, `Nombre`, `ApellidoP`, `ApellidoM`, `Telefono`, `Email`, `Password`, `UserName`, `Online`, `Img_Usuario`, `Id_Plantel`, `Id_TUsuario`, `Id_Estatus`, `Id_Expediente`) VALUES
(1, 'LUDWIN ', 'FRANCO', 'VALDES', '123456789', 'ludwin.alexis@conalepmex.edu.mx', 'password123', 'ludwin_alexis', 0, '', 1, 1, 1, 1),
(2, 'JOSUE', 'FLORES', 'BENITEZ', '987654321', 'abi.josue@conalepmex.edu.mx', 'password456', 'abi_josue', 0, '', 1, 1, 1, 2),
(3, 'ARMANDO', 'GABRIEL', 'HERNANDEZ', '555555555', 'armando.gabriel@conalepmex.edu.mx', 'password789', 'armando_gabriel', 0, '', 4, 4, 1, 3),
(4, 'DANNA', 'LEONIDES', 'CRUZ', '111111111', 'danna.leonides@conalepmex.edu.mx', 'password101', 'danna_leonides', 0, '', 1, 1, 1, 4),
(5, 'NAOMI', 'LEON', 'CORDERO', '999999999', 'naomi.leon@conalepmex.edu.mx', 'password111', 'naomi_leon', 0, '', 2, 1, 1, 5),
(6, 'ISAIN', 'NAJAR', 'YAUTENTZI', '777777777', 'isain.najar@conalepmex.edu.mx', 'password222', 'isain_najar', 0, '', 1, 1, 1, 6),
(7, 'LUIS', 'JUAREZ', 'ALCANTARA', '444444444', 'luis.juarez@conalepmex.edu.mx', 'password333', 'luis_juarez', 0, '', 4, 1, 1, 7),
(8, 'CARLOS', 'HUERTA', 'GALVAN', '666666666', 'carlos.huerta@conalepmex.edu.mx', 'password444', 'carlos_huerta', 0, '', 1, 1, 1, 8),
(9, 'JOHAN', 'MUÑOZ', 'MAYEN', '333333333', 'johan.munoz@conalepmex.edu.mx', 'password555', 'johan_munoz', 0, '', 3, 1, 1, 9),
(10, 'GABRIELA', 'HIDALGO', 'CALDERON', '222222222', 'gabriela.hidalgo@conalepmex.edu.mx', 'password666', 'gabriela_hidalgo', 0, '', 1, 1, 1, 10),
(11, 'ZOE', 'RODRIGUEZ', 'ANDRADE', '888888888', 'zoe.rodriguez@conalepmex.edu.mx', 'password777', 'zoe_rodriguez', 0, '', 1, 1, 1, 11),
(12, 'ALINE', 'HERNANDEZ', 'DANIEL', '123123123', 'aline.hernandez@conalepmex.edu.mx', 'password888', 'aline_hernandez', 0, '', 1, 1, 1, 12),
(13, 'HECTOR', 'NICANOR', 'NARVAEZ', '555123555', 'hector.nicanor@conalepmex.edu.mx', 'password999', 'hector_nicanor', 0, '', 1, 1, 1, 13);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accion_realizada`
--
ALTER TABLE `accion_realizada`
  ADD PRIMARY KEY (`Id_Accion_Realizada`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`Id_Carrera`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`Id_Estado`);

--
-- Indices de la tabla `estatus`
--
ALTER TABLE `estatus`
  ADD PRIMARY KEY (`Id_Estatus`);

--
-- Indices de la tabla `expedientes`
--
ALTER TABLE `expedientes`
  ADD PRIMARY KEY (`Id_Expediente`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`Id_Genero`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`Id_Grupo`);

--
-- Indices de la tabla `informes`
--
ALTER TABLE `informes`
  ADD PRIMARY KEY (`Id_Informe`);

--
-- Indices de la tabla `meses`
--
ALTER TABLE `meses`
  ADD PRIMARY KEY (`Id_Mes`);

--
-- Indices de la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`Id_Modulo`);

--
-- Indices de la tabla `motivo_atencion`
--
ALTER TABLE `motivo_atencion`
  ADD PRIMARY KEY (`Id_Motivo_Atencion`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`Id_Municipio`);

--
-- Indices de la tabla `planteles`
--
ALTER TABLE `planteles`
  ADD PRIMARY KEY (`Id_Plantel`);

--
-- Indices de la tabla `problematicas`
--
ALTER TABLE `problematicas`
  ADD PRIMARY KEY (`Id_Problematica`);

--
-- Indices de la tabla `semestres`
--
ALTER TABLE `semestres`
  ADD PRIMARY KEY (`Id_Semestre`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`Id_Turno`);

--
-- Indices de la tabla `tusuarios`
--
ALTER TABLE `tusuarios`
  ADD PRIMARY KEY (`Id_TUsuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accion_realizada`
--
ALTER TABLE `accion_realizada`
  MODIFY `Id_Accion_Realizada` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `Id_Carrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `Id_Estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `estatus`
--
ALTER TABLE `estatus`
  MODIFY `Id_Estatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `expedientes`
--
ALTER TABLE `expedientes`
  MODIFY `Id_Expediente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `Id_Genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `Id_Grupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `informes`
--
ALTER TABLE `informes`
  MODIFY `Id_Informe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `meses`
--
ALTER TABLE `meses`
  MODIFY `Id_Mes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `modulos`
--
ALTER TABLE `modulos`
  MODIFY `Id_Modulo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `motivo_atencion`
--
ALTER TABLE `motivo_atencion`
  MODIFY `Id_Motivo_Atencion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `Id_Municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `planteles`
--
ALTER TABLE `planteles`
  MODIFY `Id_Plantel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `problematicas`
--
ALTER TABLE `problematicas`
  MODIFY `Id_Problematica` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `semestres`
--
ALTER TABLE `semestres`
  MODIFY `Id_Semestre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `Id_Turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tusuarios`
--
ALTER TABLE `tusuarios`
  MODIFY `Id_TUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
