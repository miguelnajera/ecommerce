-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-04-2018 a las 00:19:53
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `ruta`, `fecha`) VALUES
(1, 'ROPA', 'ropa', '0000-00-00 00:00:00'),
(2, 'ZAPATOS', 'zapatos', '0000-00-00 00:00:00'),
(3, 'ACCESORIOS', 'accesorios', '0000-00-00 00:00:00'),
(4, 'CORBATAS', 'corbatas', '2018-04-26 15:46:30'),
(5, 'TECNOLOGIA', 'tecnologia', '2018-04-26 15:28:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `id` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `colorTexto` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`id`, `barraSuperior`, `textoSuperior`, `colorFondo`, `colorTexto`, `logo`, `icono`, `redesSociales`, `fecha`) VALUES
(1, '#000000', '#ffffff', '#47bac1', '#ffffff', 'vistas/img/plantilla/logo.png', 'vistas/img/plantilla/icono.png', '[\r\n										{\r\n											\"red\": \"fa-facebook\",\"estilo\": \"facebookColor\",\"url\": \"https://www.facebook.com/Júnior-Cositas-195378244404703/\"\r\n										}, \r\n										{\r\n											\"red\": \"fa-youtube\",\"estilo\": \"youtubeColor\",\"url\": \"https://www.facebook.com/\"\r\n										}, \r\n										{\r\n											\"red\": \"fa-instagram\",\"estilo\": \"instagramColor\",\"url\": \"https://www.facebook.com/\"\r\n										}\r\n									]', '2018-04-25 17:19:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `subcategoria`, `id_categoria`, `ruta`, `fecha`) VALUES
(1, 'subcategoria', 0, 'ruta', '0000-00-00 00:00:00'),
(2, 'Ropa para bebe', 1, 'ropa-bebe', '2018-04-26 15:46:56'),
(3, 'Ropa para niños', 1, 'ropa-ninos', '2018-04-26 15:46:59'),
(4, 'Ropa para niñas', 1, 'ropa-ninas', '2018-04-26 15:47:04'),
(5, 'Ropa deportiva', 1, 'ropa-deportiva', '2018-04-26 14:45:22'),
(6, 'Calzado para bebe', 2, 'calzado-bebe', '2018-04-26 14:45:29'),
(7, 'Calzado para niño', 2, 'calzado-nino', '2018-04-26 14:45:52'),
(8, 'Calzado para niña', 2, 'calzado-nina', '2018-04-26 14:45:58'),
(9, 'Bolsas', 3, 'bolsas', '0000-00-00 00:00:00'),
(10, 'Pulseras', 3, 'pulseras', '0000-00-00 00:00:00'),
(11, 'Collares', 3, 'collares', '0000-00-00 00:00:00'),
(12, 'Moñitos de bebe', 4, 'monitos', '2018-04-25 17:47:20'),
(13, 'Lentes de bebe', 4, 'lentes', '0000-00-00 00:00:00'),
(14, 'Aplicaciones Moviles', 5, 'aplicaciones-moviles', '2018-04-26 15:29:33');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
