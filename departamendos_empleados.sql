-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-09-2022 a las 17:23:37
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `departamendos_empleados`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id_departamento` int(11) NOT NULL,
  `departamento_codigo` int(11) NOT NULL,
  `departamento_nombre` varchar(45) NOT NULL,
  `fecha_hora_crea` datetime NOT NULL,
  `fecha_hora_modifica` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id_departamento`, `departamento_codigo`, `departamento_nombre`, `fecha_hora_crea`, `fecha_hora_modifica`) VALUES
(4, 1012, 'cundinamarcassaaaa', '2022-09-09 17:05:00', '2022-09-28 20:32:18'),
(5, 1010, 'antioquias', '2022-09-09 17:23:51', '2022-09-15 21:06:45'),
(6, 1011, 'huilas', '2022-09-09 17:23:51', '2022-09-15 21:23:49'),
(7, 1013, 'chocos', '2022-09-15 21:28:17', '2022-09-15 21:29:21'),
(8, 16541, 'cesar', '2022-09-15 21:31:21', '2022-09-16 13:47:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `documento_tipo` varchar(45) NOT NULL,
  `documento_numero` bigint(20) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `departamentos_id` int(11) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `correo_electronico` varchar(45) NOT NULL,
  `telefono` int(11) NOT NULL,
  `fecha_hora_crea` datetime NOT NULL,
  `fecha_hora_modifica` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `documento_tipo`, `documento_numero`, `nombres`, `apellidos`, `departamentos_id`, `ciudad`, `direccion`, `correo_electronico`, `telefono`, `fecha_hora_crea`, `fecha_hora_modifica`) VALUES
(2, 'cedula de ciudadanias', 1000939256, 'hugo armandos', 'garcia calvos', 4, 'medellins', 'Calle 136a # 102a - 42ss', 'hugo.garciag4@gmail.com', 3043750, '2022-09-12 00:00:00', '2022-09-16 01:17:24'),
(3, 'sdaf dasfs', 1651, 'sdaf', 'dasf', 4, 'bogota', 'calle 5 # 11-7', 'carlos@gmail.com', 31651, '2022-09-16 01:33:41', '2022-09-16 01:33:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`),
  ADD KEY `departamentos_id` (`departamentos_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`departamentos_id`) REFERENCES `departamentos` (`id_departamento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
