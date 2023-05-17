-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2023 a las 02:58:30
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `neflix`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `edad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `edad`) VALUES
(1, 'Will Smith', 53),
(2, 'Robert', 20),
(3, 'Chuy', 30),
(4, 'Georgia', 18),
(5, 'Ana Sof', 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directores`
--

CREATE TABLE `directores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `edad` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `directores`
--

INSERT INTO `directores` (`id`, `nombre`, `edad`) VALUES
(1, 'Guillermo del toro', '53'),
(2, 'Jose', '38'),
(3, 'Juan', '72'),
(4, 'Jesus', '95'),
(5, 'Jhon', '40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(200) NOT NULL,
  `director` int(100) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `nombre`, `genero_id`, `director`, `Fecha`) VALUES
(11, 'son como niños', 1, 2, '2018-07-06'),
(12, 'anabelle', 3, 3, '2016-04-05'),
(13, 'el transportador', 5, 4, '2002-05-02'),
(14, 'pinocho', 4, 1, '2023-02-01'),
(15, 'bajo la misma estrella', 2, 5, '1998-05-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_peliculas`
--

CREATE TABLE `tipos_peliculas` (
  `id` int(11) NOT NULL,
  `genero` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipos_peliculas`
--

INSERT INTO `tipos_peliculas` (`id`, `genero`) VALUES
(1, 'comedia'),
(2, 'drama'),
(3, 'terror'),
(4, 'familiar'),
(5, 'suspenso');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `directores`
--
ALTER TABLE `directores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`),
  ADD KEY `director` (`director`);

--
-- Indices de la tabla `tipos_peliculas`
--
ALTER TABLE `tipos_peliculas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `directores`
--
ALTER TABLE `directores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tipos_peliculas`
--
ALTER TABLE `tipos_peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `tipos_peliculas` (`id`),
  ADD CONSTRAINT `peliculas_ibfk_2` FOREIGN KEY (`director`) REFERENCES `directores` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
