-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2023 a las 03:56:33
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_movieonline`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `db_usuario`
--

CREATE TABLE `db_usuario` (
  `id_us` int(11) NOT NULL,
  `usuario` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `contrasenia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `db_usuario`
--

INSERT INTO `db_usuario` (`id_us`, `usuario`, `email`, `contrasenia`) VALUES
(2, 'webadmin', 'admin@admin', '$2y$10$1IMwydlcBrNQX5ro0pA.l.tnRKVqQ1IlC62Nty17vgnreZ1Iu5zeq'),
(3, 'webadmin', 'admin@admin', '$2y$10$e8Jh2W.V1PhhK9mWNEK4i.81c3rCk1GBmIGeQ/2m72gQolJFZGB0G');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero_peliculas`
--

CREATE TABLE `genero_peliculas` (
  `id_genero` int(11) NOT NULL,
  `genero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero_peliculas`
--

INSERT INTO `genero_peliculas` (`id_genero`, `genero`) VALUES
(1, 'Comedia'),
(2, 'Terror'),
(3, 'Accion'),
(4, 'Ciencia Ficcion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `anio` date DEFAULT NULL,
  `director` varchar(30) NOT NULL,
  `clasificacion` varchar(30) NOT NULL,
  `sinopsis` text DEFAULT NULL,
  `fk_genero` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `anio`, `director`, `clasificacion`, `sinopsis`, `fk_genero`) VALUES
(1, 'El Padrinoo', '1972-03-24', 'Francis Ford Coppola', 'R: Restringido.', 'Un hombre de negocios de Nueva York se convierte en el líder de una familia mafiosa.					', 3),
(2, 'El Señor de los Anillos: La Comunidad del Anillo', '2001-12-01', 'Peter Jackson', 'PG-13: Guía paterna estricta.', 'Un grupo de hobbits se embarcan en una misión para destruir el Anillo Único, una poderosa arma que amenaza con destruir la Tierra Media.								', 4),
(3, 'El Conjuro', '2013-07-19', 'James Wan', 'R (Para mayores de 17 años)', 'Ed y Lorraine mientras intentan ayudar a una familia a enfrentar actividades paranormales aterradoras en su hogar, descubriendo una entidad demoníaca que amenaza sus vidas.						', 2),
(4, 'Star Wars: Episodio IV - Una nueva esperanza', '1977-05-25', 'George Lucas', 'PG: Guía paternal sugerida.', 'Un grupo de rebeldes se une para luchar contra el Imperio Galáctico.				', 4),
(5, 'Forrest Gump', '1994-07-06', 'Robert Zemeckis', 'PG-13: Guía paterna estricta.', 'Un hombre con discapacidad intelectual vive una vida extraordinaria, desde la década de 1950 hasta los años 80.						', 1),
(6, 'El Resplandor', '1980-05-23', 'Stanley Kubrick', 'R (Para mayores de 17 años)', 'Con el tiempo, el aislamiento desencadena eventos paranormales y la creciente locura de Jack, convirtiendo el hotel en un lugar aterrador para la familia.				', 2),
(7, 'Pulp Fiction', '1994-10-14', 'Quentin Tarantino', 'R: Restringido.', 'Tres historias entrelazadas de crimen y violencia en Los Ángeles.			', 3),
(8, 'El discurso del rey', '2010-12-25', 'Tom Hooper', 'PG-13: Guía paterna estricta.', 'El príncipe Jorge VI se prepara para convertirse en rey de Inglaterra, pero tiene un grave problema de tartamudeo.						', 1),
(9, 'La La Land', '2016-12-09', 'Damien Chazelle', 'PG-13: Guía paterna estricta.', 'Una aspirante a actriz y un pianista de jazz se enamoran en Los Ángeles.				', 1),
(10, 'buscando a nemo', '0000-00-00', 'dafff', 'fsaffss', 'fafafaff', 1),
(11, 'buscando a nemo', '0000-00-00', 'ssass', 'wee', 'wwww', 4),
(12, 'buscando a nemo', '0000-00-00', 'dafff', 'fsaffss', 'fafafaff', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `db_usuario`
--
ALTER TABLE `db_usuario`
  ADD PRIMARY KEY (`id_us`);

--
-- Indices de la tabla `genero_peliculas`
--
ALTER TABLE `genero_peliculas`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_genero` (`fk_genero`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `db_usuario`
--
ALTER TABLE `db_usuario`
  MODIFY `id_us` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `genero_peliculas`
--
ALTER TABLE `genero_peliculas`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`fk_genero`) REFERENCES `genero_peliculas` (`id_genero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
