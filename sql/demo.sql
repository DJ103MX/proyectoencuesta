-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2020 a las 05:00:36
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `demo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_preg`
--

CREATE TABLE `tbl_preg` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `tbl_preg`
--

INSERT INTO `tbl_preg` (`id`, `name`, `date`) VALUES
(1, 'Desarrollo JavaScript', '2018-08-01 09:39:10'),
(2, 'Big Data', '2018-08-01 09:38:49'),
(3, 'Marketing digital', '2018-08-01 09:38:38'),
(4, 'Desarrollo web', '2018-08-01 09:38:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_preg_votos`
--

CREATE TABLE `tbl_preg_votos` (
  `id` int(11) NOT NULL,
  `course_id` int(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `tbl_preg_votos`
--

INSERT INTO `tbl_preg_votos` (`id`, `course_id`, `date`) VALUES
(9, 4, '2020-07-02 02:15:59'),
(10, 4, '2020-07-02 02:18:19'),
(11, 4, '2020-07-02 02:19:42'),
(12, 3, '2020-07-02 02:20:01'),
(13, 1, '2020-07-02 02:27:27'),
(14, 1, '2020-07-02 02:30:21'),
(15, 1, '2020-07-02 02:30:53'),
(16, 1, '2020-07-02 02:32:07'),
(17, 1, '2020-07-02 02:32:45'),
(18, 4, '2020-07-02 02:33:38'),
(19, 4, '2020-07-02 02:54:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'dj103_dvr@hotmail.com', '$2y$10$Vk.M1EPZhxlVPAAa9HWaROPQoW6BmOATzUQ8e1Yco.euXDQAohtZq', '2020-06-26 16:49:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_preg`
--
ALTER TABLE `tbl_preg`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_preg_votos`
--
ALTER TABLE `tbl_preg_votos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_preg`
--
ALTER TABLE `tbl_preg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tbl_preg_votos`
--
ALTER TABLE `tbl_preg_votos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
