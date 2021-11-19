-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2021 a las 02:59:43
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laboratorio3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE `distrito` (
  `id_distrito` int(11) NOT NULL,
  `nom_distrito` varchar(20) NOT NULL,
  `id_provincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `distrito`
--

INSERT INTO `distrito` (`id_distrito`, `nom_distrito`, `id_provincia`) VALUES
(1, 'Almirante', 1),
(2, 'Bocas del Toro', 1),
(3, 'Changuinola', 1),
(4, 'Chiriquí Grande', 1),
(5, 'Aguadulce', 2),
(6, 'Antón', 2),
(7, 'La Pintada', 2),
(8, 'Natá', 2),
(9, 'Olá', 2),
(10, 'Penonomé', 2),
(11, 'Colón', 3),
(12, 'Chagres', 3),
(13, 'Donoso', 3),
(14, 'Portobelo', 3),
(15, 'Santa Isabel', 3),
(16, 'Omar Torrijos Herrer', 3),
(17, 'Alanje', 4),
(18, 'Barú', 4),
(19, 'Boquerón', 4),
(20, 'Boquete', 4),
(21, 'Bugaba', 4),
(22, 'David', 4),
(23, 'Dolega', 4),
(24, 'Gualaca', 4),
(25, 'Remedios', 4),
(26, 'Renacimiento', 4),
(27, 'San Félix', 4),
(28, 'San Lorenzo', 4),
(29, 'Tierras Altas', 4),
(30, 'Tolé', 4),
(31, 'Chepigana', 5),
(32, 'Santa Fe', 5),
(33, 'Pinogana', 5),
(34, 'Chitré', 6),
(35, 'Las Minas', 6),
(36, 'Los Pozos', 6),
(37, 'Ocú', 6),
(38, 'Parita', 6),
(39, 'Pesé', 6),
(40, 'Santa María', 6),
(41, 'Guararé', 7),
(42, 'Las Tablas', 7),
(43, 'Los Santos', 7),
(44, 'Macaracas', 7),
(45, 'Pedasí', 7),
(46, 'Pocrí', 7),
(47, 'Tonosí', 7),
(48, 'Balboa', 8),
(49, 'Chepo', 8),
(50, 'Chimán', 8),
(51, 'Panamá', 8),
(52, 'San Miguelito', 8),
(53, 'Taboga', 8),
(54, 'Atalaya', 9),
(55, 'Calobre', 9),
(56, 'Cañazas', 9),
(57, 'La Mesa', 9),
(58, 'Las Palmas', 9),
(59, 'Mariato', 9),
(60, 'Montijo', 9),
(61, 'Río de Jesús', 9),
(62, 'San Francisco', 9),
(63, 'Santa Fe', 9),
(64, 'Santiago', 9),
(65, 'Soná', 9),
(66, 'Cémaco', 10),
(67, 'Sambú', 10),
(68, 'Ailigandí', 11),
(69, 'Narganá', 11),
(70, 'Puerto Obaldía', 11),
(71, 'Tubuala', 11),
(72, 'Kankintubotdä', 12),
(73, 'Saborikötde', 12),
(74, 'Jirondai', 12),
(75, 'Bledeshia', 12),
(76, 'Besiko', 12),
(77, 'Mirono', 12),
(78, 'Nole Duima', 12),
(79, 'Munä', 12),
(80, 'Ñürün', 12),
(81, 'Arraiján', 13),
(82, 'Capira', 13),
(83, 'Chame', 13),
(84, 'La Chorrera', 13),
(85, 'San Carlos', 13),
(86, 'Naso Tjër Di', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `id_nivel` int(11) NOT NULL,
  `nom_nivel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id_nivel`, `nom_nivel`) VALUES
(1, 'Estudiante'),
(2, 'Administrativo'),
(3, 'Docente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `id_provincia` int(11) NOT NULL,
  `nom_provincia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`id_provincia`, `nom_provincia`) VALUES
(1, 'Bocas Del Toro'),
(2, 'Coclé'),
(3, 'Colón'),
(4, 'Chiriquí'),
(5, 'Darién'),
(6, 'Herrera'),
(7, 'Los Santos'),
(8, 'Panamá'),
(9, 'Veraguas'),
(10, 'Emberá-Wounaan'),
(11, 'Guna Yala'),
(12, 'Ngöbe-Buglé'),
(13, 'Panamá Oeste'),
(14, 'Naso Tjër Di');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `id_nivel` int(11) NOT NULL,
  `id_distrito` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido`, `email`, `telefono`, `id_nivel`, `id_distrito`) VALUES
(1, 'Didier', 'Mosley', 'dmosley.superate@gmail.com', '626184', 1, 51),
(2, 'Robby ', 'Torres', 'robby@hotmail.com', '11618646', 2, 81);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`id_distrito`),
  ADD KEY `pk_idprovincia` (`id_provincia`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`id_nivel`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id_provincia`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `pk_idnivel` (`id_nivel`),
  ADD KEY `pk_iddistrito` (`id_distrito`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `distrito`
--
ALTER TABLE `distrito`
  MODIFY `id_distrito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id_provincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD CONSTRAINT `distrito_ibfk_1` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`id_provincia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_distrito`) REFERENCES `distrito` (`id_distrito`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_nivel`) REFERENCES `nivel` (`id_nivel`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
