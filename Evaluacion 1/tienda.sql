-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2023 a las 07:13:06
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda en linea`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripción` varchar(200) NOT NULL,
  `precio` int(200) NOT NULL,
  `color` varchar(300) NOT NULL,
  `existencias` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `descripción`, `precio`, `color`, `existencias`) VALUES
(1, 'Asus TUF Gaming A15', 'Potenciada por el Procesador AMD Ryzen7 4800H que permite realizar múltiples tareas.\r\nGráficos rápidos con una GPU NVIDIA GeForce RTX 3050.\r\n8GB de RAM, expandible hasta 32GB.\r\n512GB de almacenamiento', 6800, 'negro', 51),
(2, 'Toshiba Pantalla 43\" Pulgadas Full HD LED Smart TV VIDAA 43V35LM (2022)', 'Presiona y pregunta a Alexa Use el Alexa Voice Remote incluido para administrar la potencia, el volumen, la navegación, la reproducción y el cambio de entrada del televisor\r\n', 12000, 'negro', 2),
(3, 'Dii Heavy Duty Algodón/Poliéster Cubeta Cesta para la Colada o Bin, Grey Rugby Stripe', 'Gran ce la lavandería: Mide 13.7 x 13.7 x 20 pulgadas, y sería u solución de organización perfecta tu cuarto de lavado o baño, armario, coci y mucho más', 600, 'blanco', 200),
(4, 'Juego de Accesorios de baño de Mosaico, Juego de Accesorios de baño de 4 Piezas con dispensador de j', 'El juego incluye: dispensador de jabón, soporte para cepillo para polvo de dientes, vaso, plato para anillos, mosaico de vidrio agrietado, color oro amarillo', 456, '', 7),
(5, 'Fix A Leak Pool Leak Sealer', 'Material duradero\r\nMuy conveniente\r\nFácil de usar\r\nProducto de calidad\r\n', 856, 'rojo', 47),
(6, 'Consola Xbox Series X - Forza Horizon 5 - Bundle Edition', 'El paquete incluye: · Consola Xbox Series X · Control inalámbrico Xbox · Cable HDMI de alta velocidad · Cable de alimentación · Edición Digital Premium de Forza Horizon 5', 8563, 'negro', 20),
(7, 'Turtle Beach Stealth 600 Gen 2 MAX- Audífonos Inalámbricos Amplificados Multiplataforma Compatibles ', 'Con licencia para XBOX, 48 horas de batería, altavoces de 50MM, conectividad inalámbrica sin lag y audio spatial.', 1500, 'azul', 50),
(8, 'Cuphead para Nintendo Switch', 'Juega como Cuphead o Mugman (en modo de un jugador o cooperativo) y cruza mundos extraños, adquiere nuevas armas, aprende poderosos supermovimientos y descubre secretos ocultos mientras procuras salda', 600, '', 50),
(9, 'Hamilton Beach 52400 Licuadora Stay or Go con una jarra de 945 ml (32 oz), 2 vasos de viaje 475 ml (', '\r\nMarca	Hamilton Beach\r\nColor	Negro\r\nCaracterística especial	Recipientes aptos para lavaplatos sin BPA\r\nCapacidad	907 g\r\nMaterial	Plástico\r\n', 2758, 'negro', 423),
(10, 'Guitarra Eléctrica Deviser L-g1 Negra C/funda, Tremolo Cable', '\r\nMarca	Deviser\r\nMaterial del cuerpo	Tilo\r\nTipo de material trasero	Tilo\r\nTipo de material del diasón	Madera', 2958, 'negro', 12),
(11, 'Katana Mini Amplificador para Guitarra Ultra Compacto Negro', 'Genial sonido katana en un amplificador altamente portatil\r\nOpulento sonido complete que excede por mucho a los otros amplificadores en su rango\r\nAutentica circuitería de ganancia análoga multi-etapa ', 2254, 'negro', 14),
(12, 'BOSS FS-7 Pedal\r\n', 'Disenado para alto rendimiento\r\nHecho con materiales de alta resistencia y durabilidad', 1428, 'negro', 24),
(13, 'UGREEN Cable USB C Carga Rápida Tipo C 3M', '\r\nMarca	UGREEN\r\nTipo de conector	USB tipo A\r\nDispositivos compatibles	Portátil, Tablet\r\nCaracterística especial	Sin enredos\r\nVelocidad de transferencia de datos	0', 199, 'negro', 4),
(14, 'Controlador Pioneer DJ DJ', 'Ligero y compacto con un diseño de estilo profesional que te ayudará a aprender a mezclar', 3655, 'negro', 73),
(15, 'Luces LED, luces de DJ', 'Color	Rgb (Rojo, Verde, Azul)\r\nMaterial	ABS y aluminio\r\nTipo de acabado	Pulido\r\nTipo de fuente de luz	Diodo emisor de luz\r\nFuente de energía	Cable', 1466, 'rojo, verde, azul', 13);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
