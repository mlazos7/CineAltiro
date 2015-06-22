-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2015 a las 00:15:42
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cinealtiro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add categoria', 7, 'add_categoria'),
(20, 'Can change categoria', 7, 'change_categoria'),
(21, 'Can delete categoria', 7, 'delete_categoria'),
(25, 'Can add categoria_ usuario', 9, 'add_categoria_usuario'),
(26, 'Can change categoria_ usuario', 9, 'change_categoria_usuario'),
(27, 'Can delete categoria_ usuario', 9, 'delete_categoria_usuario'),
(28, 'Can add pelicula', 10, 'add_pelicula'),
(29, 'Can change pelicula', 10, 'change_pelicula'),
(30, 'Can delete pelicula', 10, 'delete_pelicula'),
(34, 'Can add comentario', 12, 'add_comentario'),
(35, 'Can change comentario', 12, 'change_comentario'),
(36, 'Can delete comentario', 12, 'delete_comentario'),
(37, 'Can add comentario_ pelicula', 13, 'add_comentario_pelicula'),
(38, 'Can change comentario_ pelicula', 13, 'change_comentario_pelicula'),
(39, 'Can delete comentario_ pelicula', 13, 'delete_comentario_pelicula'),
(40, 'Can add cine', 14, 'add_cine'),
(41, 'Can change cine', 14, 'change_cine'),
(42, 'Can delete cine', 14, 'delete_cine'),
(46, 'Can add site', 16, 'add_site'),
(47, 'Can change site', 16, 'change_site'),
(48, 'Can delete site', 16, 'delete_site'),
(49, 'Can add registration profile', 17, 'add_registrationprofile'),
(50, 'Can change registration profile', 17, 'change_registrationprofile'),
(51, 'Can delete registration profile', 17, 'delete_registrationprofile'),
(61, 'Can add horario', 21, 'add_horario'),
(62, 'Can change horario', 21, 'change_horario'),
(63, 'Can delete horario', 21, 'delete_horario'),
(64, 'Can add show time', 22, 'add_showtime'),
(65, 'Can change show time', 22, 'change_showtime'),
(66, 'Can delete show time', 22, 'delete_showtime');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$20000$61XAD0upWpHY$crPmnyfcK0IelDOOn7IhwKwb+C1/GaLAaM+G8IJVtTk=', '2015-06-22 01:04:15', 1, 'matias', '', '', 'matias.lazos@gmail.com', 1, 1, '2015-06-17 17:13:54'),
(3, 'pbkdf2_sha256$20000$v3y9pN4FJJem$VuQA5HVbtXGBHKnYFYtiuy+Yntx1lvi61iGq1SUW64s=', NULL, 0, 'caca', 'cacaca', 'cacacaca', 'caca@gmail.com', 0, 1, '2015-06-20 17:40:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinealtiro_categoria`
--

CREATE TABLE IF NOT EXISTS `cinealtiro_categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cinealtiro_categoria`
--

INSERT INTO `cinealtiro_categoria` (`id`, `nombre`) VALUES
(1, 'Terror'),
(2, 'Comedia'),
(3, 'Drama'),
(4, 'Acción'),
(5, 'Animación'),
(6, 'Aventura'),
(7, 'Deporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinealtiro_categoria_usuario`
--

CREATE TABLE IF NOT EXISTS `cinealtiro_categoria_usuario` (
  `id` int(11) NOT NULL,
  `id_categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinealtiro_cine`
--

CREATE TABLE IF NOT EXISTS `cinealtiro_cine` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `empresa` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cinealtiro_cine`
--

INSERT INTO `cinealtiro_cine` (`id`, `nombre`, `direccion`, `link`, `precio`, `imagen`, `empresa`) VALUES
(1, 'CineHoyts La Reina', 'Avda Ossa 665', 'http://www.cinehoyts.cl/?mod=reina', '5800', 'imagenes/cines/hoyts2.jpg', 'hoyts'),
(2, 'CineHoyts Parque Arauco', 'Av. Kennedy 5413 ', 'http://www.cinehoyts.cl/Cartelera/Cine/708', '5800', 'imagenes/cines/400x242x1cine-hoyts-parque-arauco.jpeg.pagespeed.ic.unZlASo-Nn.jpg', 'hoyts'),
(3, 'CineHoyts Parque Arauco Premium', 'Av. Kennedy 5413 ', 'http://www.cinehoyts.cl/Cartelera/Cine/709', '5800', 'imagenes/cines/noimage.gif', 'hoyts'),
(4, 'CineHoyts Los Trapenses', 'Los Trapenses 3515 ', 'http://www.cinehoyts.cl/Cartelera/Cine/726', '5800', 'imagenes/cines/noimage_4vPB2FL.gif', 'hoyts'),
(5, 'CineHoyts Los Domínicos', 'Camino El Alba 11969 ', 'http://www.cinehoyts.cl/Cartelera/Cine/722', '5800', 'imagenes/cines/noimage_Wxsz4O5.gif', 'hoyts'),
(6, 'CineHoyts Plaza Egaña', 'Larraín 5862 ', 'http://www.cinehoyts.cl/Cartelera/Cine/729', '5800', 'imagenes/cines/noimage_bT4fGNs.gif', 'hoyts'),
(7, 'CineHoyts Plaza Egaña Premium', 'Larraín 5862 ', 'http://www.cinehoyts.cl/Cartelera/Cine/760', '5800', 'imagenes/cines/noimage_SSv7tLp.gif', 'hoyts'),
(8, 'CineHoyts San Agustín', 'Moneda 835 ', 'http://www.cinehoyts.cl/Cartelera/Cine/711', '5800', 'imagenes/cines/noimage_mWWPeCe.gif', 'hoyts'),
(9, 'CineHoyts Estación Central', 'Exposición 155', 'http://www.cinehoyts.cl/Cartelera/Cine/712', '5800', 'imagenes/cines/noimage_cwbrkcC.gif', 'hoyts'),
(10, 'CineHoyts Puente Alto', 'Vicuña Mackenna Paradero 37 1/2 ', 'http://www.cinehoyts.cl/Cartelera/Cine/713', '5800', 'imagenes/cines/noimage_uuOTVVF.gif', 'hoyts'),
(11, 'CineHoyts Paseo San Bernardo', 'Eyzaguirre 650 ', 'http://www.cinehoyts.cl/Cartelera/Cine/725', '5800', 'imagenes/cines/noimage_yaAeHCT.gif', 'hoyts'),
(12, 'CineHoyts Plaza Sur', 'Jorge Alessandri 20040 ', 'http://www.cinehoyts.cl/Cartelera/Cine/718', '5800', 'imagenes/cines/noimage_cZXKDPc.gif', 'hoyts'),
(13, 'CineHoyts Maipú', 'Av. Américo Vespucio 399 ', 'http://www.cinehoyts.cl/Cartelera/Cine/710', '5800', 'imagenes/cines/noimage_B4f0933.gif', 'hoyts'),
(14, 'CineHoyts Melipilla', 'Serrano 395 ', 'http://www.cinehoyts.cl/Cartelera/Cine/727', '5800', 'imagenes/cines/noimage_VAWw8gi.gif', 'hoyts'),
(15, 'CineHoyts Quilicura ', 'Av. O''Higgins 581 ', 'http://www.cinehoyts.cl/Cartelera/Cine/724', '5800', 'imagenes/cines/noimage_Zk2MqnP.gif', 'hoyts'),
(16, 'CineHoyts Arica', 'Av. 7 de Junio 190 ', 'http://www.cinehoyts.cl/Cartelera/Cine/728', '5800', 'imagenes/cines/noimage_Yd7Fu32.gif', 'hoyts'),
(17, 'CineHoyts Antofagasta Plaza', 'Av. Balmaceda 2355 ', 'http://www.cinehoyts.cl/Cartelera/Cine/714', '5800', 'imagenes/cines/noimage_IvEdSwf.gif', 'hoyts'),
(18, 'CineHoyts Antofagasta Lider', 'Zenteno 21', ' http://www.cinehoyts.cl/Cartelera/Cine/721', '5800', 'imagenes/cines/noimage_oW2AVfF.gif', 'hoyts'),
(19, 'CineHoyts Calama ', 'Av. Balmaceda 3242 ', 'http://www.cinehoyts.cl/Cartelera/Cine/720', '50', 'imagenes/cines/noimage_7TNoCRj.gif', 'hoyts'),
(20, 'CineHoyts Valparaíso', 'Av. Pedro Montt 2111 ', 'http://www.cinehoyts.cl/Cartelera/Cine/717', '5800', 'imagenes/cines/noimage_rybvrNd.gif', 'hoyts'),
(21, 'CineHoyts Talca', 'Av. San Miguel 3349 ', 'http://www.cinehoyts.cl/Cartelera/Cine/716', '5800', 'imagenes/cines/noimage_rWh2M4q.gif', 'hoyts'),
(22, 'CineHoyts Los Ángeles', 'Valdivia 440 ', 'http://www.cinehoyts.cl/Cartelera/Cine/719', '5800', 'imagenes/cines/noimage_xD3ZCc2.gif', 'hoyts'),
(23, 'CineHoyts Temuco', 'Manuel Montt 777 ', 'http://www.cinehoyts.cl/Cartelera/Cine/723', '5800', 'imagenes/cines/noimage_EFnd0kr.gif', 'hoyts'),
(24, 'CineHoyts Puerto Montt', 'Illapel 10 ', 'http://www.cinehoyts.cl/Cartelera/Cine/715', '5800', 'imagenes/cines/noimage_ABITFYz.gif', 'hoyts'),
(25, 'CineMark Alto Las Condes', 'Avenida Kennedy 9001, local 3092', 'http://www.cinemark.cl/theatres/alto-las-condes', '2900', 'imagenes/cines/noimage_Gcn7HvU.gif', 'mark'),
(26, 'CineMark Mall Plaza Vespucio', 'Av. Vicuña Mackenna 7110, local 158', 'http://www.cinemark.cl/theatres/vespucio', '2900', 'imagenes/cines/noimage_5kQ17WM.gif', 'mark'),
(27, 'CineMark Mall Plaza Tobalaba', 'Av. Camilo Henríquez 3690', 'http://www.cinemark.cl/theatres/plaza-tobala', '2900', 'imagenes/cines/noimage_3gMQX9i.gif', 'mark'),
(28, 'CineMark Mall Plaza Norte', 'Av. Américo Vespucio 1737', 'http://www.cinemark.cl/theatres/plaza-norte', '2900', 'imagenes/cines/noimage_oTbAygQ.gif', 'mark'),
(29, 'CineMark Mall Plaza Oeste', 'Av. Américo Vespucio 1501, Local D1', 'http://www.cinemark.cl/theatres/plaza-oeste', '2900', 'imagenes/cines/noimage_pQsi37Q.gif', 'mark'),
(30, 'CineMark Portal Ñuñoa', 'Av. Jose Pedro Alessandri 1166, local 4033', 'http://www.cinemark.cl/theatres/portal-nunoa', '2900', 'imagenes/cines/noimage_s4sqOTN.gif', 'mark'),
(31, 'CineMark Iquique', 'Av. Héroes de la Concepción 2555, Local 1', 'http://www.cinemark.cl/theatres/iquique', '2900', 'imagenes/cines/noimage_mmpvF8q.gif', 'mark'),
(32, 'CineMark Mall Plaza La Serena', 'Av. Alberto Solari 1400', 'http://www.cinemark.cl/theatres/la-serena', '2900', 'imagenes/cines/noimage_uQgrjQI.gif', 'mark'),
(33, 'CineMark Open Plaza Ovalle', 'Av. Benavente 1075', 'http://www.cinemark.cl/theatres/ovalle', '2900', 'imagenes/cines/noimage_Z8ysA1U.gif', 'mark'),
(34, 'CineMark Marina Arauco', ' Av. Libertad 1348, Local 301', 'http://www.cinemark.cl/theatres/marina-arauco', '2900', 'imagenes/cines/noimage_S73s0Vf.gif', 'mark'),
(35, 'CineMark Espacio Urbano', 'Av. Benidorm 961, Pob. Vergara', 'http://www.cinemark.cl/theatres/vina-shopping', '2900', 'imagenes/cines/noimage_6lpa4OG.gif', 'mark'),
(36, 'CineMark Rancagua', 'Av. San Joaquín 10, Camino Machalí', 'http://www.cinemark.cl/theatres/rancagua', '2900', 'imagenes/cines/noimage_8iI8YLo.gif', 'mark'),
(37, 'CineMark Open Plaza Rancagua', 'Teniente Coronel José Bernardo Cuevas N/405', 'http://www.cinemark.cl/theatres/open-rancagua', '2900', 'imagenes/cines/noimage_9FTU2NM.gif', 'mark'),
(38, 'CineMark Mall Plaza Trébol', ' Av. Alessandri 3177, Local B 107 ', 'http://www.cinemark.cl/theatres/el-trebol', '2900', 'imagenes/cines/noimage_zuksacj.gif', 'mark'),
(39, 'CineMark Plaza Bio Bio', 'Los Carrera Poniente 301 local CN200', 'http://www.cinemark.cl/theatres/plaza-biobio', '2900', 'imagenes/cines/noimage_shBd1Hu.gif', 'mark'),
(40, 'CineMark Portal Osorno', 'aza Yungay 609, Portal Osorno, 4to Piso', 'http://www.cinemark.cl/theatres/osorno', '2900', 'imagenes/cines/noimage_BSDhxcX.gif', 'mark'),
(41, 'Cineplanet Concepción', 'Barros Arana 1068', 'http://www.cineplanet.cl/cines/concepcion/', '1000', 'imagenes/cines/noimage_MN5x0dU.gif', 'planet'),
(42, 'Cineplanet Costanera Center', 'Av. Andrés Bello 2447', 'http://www.cineplanet.cl/cines/costanera-center/', '1000', 'imagenes/cines/noimage_GGv75Hu.gif', 'planet'),
(43, 'Cineplanet Costanera Prime', 'Av. Andrés Bello 2447', 'http://www.cineplanet.cl/cines/prime/', '2900', 'imagenes/cines/noimage_9Qd7kyj.gif', 'planet'),
(44, 'Cineplanet Florida Center', 'Av. Vicuña Mackenna 6100 Int 3004', 'http://www.cineplanet.cl/cines/florida-center/', '1000', 'imagenes/cines/noimage_pv67LjU.gif', 'planet'),
(45, 'Cineplanet La Dehesa', 'Portal La Dehesa, 2do nivel, local 2000ª. Av. La Dehesa 1445', 'http://www.cineplanet.cl/cines/la-dehesa/', '1000', 'imagenes/cines/noimage_th8Fh97.gif', 'planet'),
(46, 'Cineplanet Paseo Quilín', 'Av. Américo Vespucio 3300', 'http://www.cineplanet.cl/cines/quilin/', '1000', 'imagenes/cines/noimage_SusO9kk.gif', 'planet'),
(47, 'Cineplanet Plaza Alameda', 'Av. Libertador Bernardo O`Higgins 3470', 'http://www.cineplanet.cl/cines/plaza-alameda/', '1000', 'imagenes/cines/noimage_Qrwnzg0.gif', 'planet'),
(48, 'Cineplanet Temuco', 'Av. Alemania 671 2do.Piso', 'http://www.cineplanet.cl/cines/temuco/', '1000', 'imagenes/cines/noimage_UlKA8IP.gif', 'planet');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinealtiro_comentario`
--

CREATE TABLE IF NOT EXISTS `cinealtiro_comentario` (
  `id` int(11) NOT NULL,
  `contenido` longtext NOT NULL,
  `fecha_comentario` datetime NOT NULL,
  `id_pelicula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinealtiro_comentario_pelicula`
--

CREATE TABLE IF NOT EXISTS `cinealtiro_comentario_pelicula` (
  `id` int(11) NOT NULL,
  `id_comentario_id` int(11) NOT NULL,
  `id_pelicula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinealtiro_horario`
--

CREATE TABLE IF NOT EXISTS `cinealtiro_horario` (
  `id` int(11) NOT NULL,
  `horario` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cinealtiro_horario`
--

INSERT INTO `cinealtiro_horario` (`id`, `horario`) VALUES
(3, '10:00 '),
(4, '10:05'),
(5, '10:10'),
(6, '10:15'),
(8, '10:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinealtiro_pelicula`
--

CREATE TABLE IF NOT EXISTS `cinealtiro_pelicula` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `calificacion` int(11) NOT NULL,
  `cantidad_comentarios` int(11) NOT NULL,
  `sinopsis` longtext,
  `detalles` longtext NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `subtitulo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cinealtiro_pelicula`
--

INSERT INTO `cinealtiro_pelicula` (`id`, `titulo`, `calificacion`, `cantidad_comentarios`, `sinopsis`, `detalles`, `fecha_publicacion`, `imagen`, `categoria_id`, `subtitulo`) VALUES
(1, 'Jurassic World', -1, -1, 'Veintidós años después de los acontecimientos de Jurassic Park (1993), Isla Nubla ahora cuenta con un parque temático de dinosaurios en pleno funcionamiento, Mundo Jurásico, como se había previsto por John Hammond. Después de 10 años de funcionamiento y las tasas de los visitantes en declive, con el fin de cumplir con el mandato corporativo, se crea una nueva atracción para volver a despertar el interés de los visitantes, lo que resulta brutalmente contraproducente.', 'Año: 2015\r\n\r\nDuración: 125\r\n\r\nCalificación: TE7+\r\n\r\nPaís: USA\r\n\r\nElenco:\r\n\r\nChris Pratt, Dallas Howard\r\n\r\nDirector:\r\n\r\nColin Trevorrow', '2015-06-17', 'imagenes/peliculas/Jurassicworld_270x370.jpg', 6, ' '),
(2, 'Terremoto', -1, -1, 'Después de que un devastador terremoto golpea California, destruyendo la ciudad y todo a su paso, el piloto del helicóptero de rescate del departamento de bomberos de Los Ángeles (Dwayne Johnson, La Roca) y su ex esposa (Carla Gugino) intentan salir de Los Ángeles para ir a San Francisco a encontrar y rescatar a su hija adolescente, que se encuentra a merced de las fuerzas de la naturaleza. El tiempo apremia, las comunicaciones son nulas, y deben apurarse antes de que un gran tsunami azote la costera ciudad.', 'Año: 2015\r\n\r\nDuración: 114\r\n\r\nCalificación: TE7+\r\n\r\nPaís: USA\r\n\r\nElenco:\r\n\r\nDwayne Johnson, Carla Gugino\r\n\r\nDirector:\r\n\r\nBrad Peyton', '2015-06-18', 'imagenes/peliculas/Tsanandreas_270x370.jpg', 6, 'La falla de San Andrés'),
(3, 'Dragon Ball Z', -1, -1, 'Después de que Bills, el Dios de la destrucción, decidiera no destruir la Tierra, se vive una gran época de paz. Hasta que Sorbet y Tagoma, antiguos miembros élite de la armada de Freezer, llegan a la Tierra con el objetivo de revivir a su líder por medio de las Bolas de Dragón. Su deseo es concedido y ahora Freezer planea su venganza en contra de los Saiyajin. La historia hace que una gran oleada de hombres bajo el mando de Freezer lo acompañe.', 'Año: 2015\r\n\r\nDuración: 93\r\n\r\nCalificación: TE\r\n\r\nPaís: Japón\r\n\r\nDirector:\r\n\r\nTadayoshi Yamamuro', '2015-06-18', 'imagenes/peliculas/Dragonballz2_270x370.jpg', 5, 'La resurección de Freezer'),
(4, 'El Bosque de Karadima', -1, -1, 'Fernando Karadima, párroco y líder de la Iglesia más poderosa de la clase alta chilena, entre los años 80 y los 2000, es considerado un “Santo” en vida. Thomas, un adolescente en busca de su vocación, encontrará en el sacerdote a su Director Espiritual. Durante 20 años, Thomy vivirá paulatinamente en carne propia los abusos físicos y sicológicos por parte del cura, hasta decidir hablar y enfrentar las redes de poder que protegen al cura y desenmascarar definitivamente al verdadero Karadima bajo la envestidura de representante de Dios en la Tierra.', 'Año: 2015\r\n\r\nDuración: 96\r\n\r\nCalificación: 14\r\n\r\nPaís: Chile\r\n\r\nElenco:\r\n\r\nLuis Gnecco, Benjamín Vicuña\r\n\r\nDirector:\r\n\r\nMatías Lira', '2015-06-19', 'imagenes/peliculas/karadimaoficial_270x370.jpg', 3, ' '),
(5, 'Mad Max', -1, -1, 'Del director George Miller, fundador del género post apocalíptico y la mente maestra detrás de la legendaria franquicia de “Mad Max”, llega “Mad Max: Furia en el Camino”, un regreso al mundo del Guerrero del Camino. Así, Max Rockatansky, acosado por su pasado, buscará una nueva forma de sobrevivencia uniéndose a la emperatriz Furiosa, en un mundo que colapsa a cada segundo y está lleno de locura y desazón. Con las actuaciones de la ganadora del Oscar, Charlize Theron (Monster), Tom Hardy (El Origen) y a Nicholas Hoult (X-Men: días del futuro pasado)', 'Año: 2015\r\n\r\nDuración: 120\r\n\r\nCalificación: 14\r\n\r\nPaís: USA\r\n\r\nElenco:\r\n\r\nCharlize Theron, Tom Hardy\r\n\r\nDirector:\r\n\r\nGeorge Miller', '2015-06-19', 'imagenes/peliculas/Madmax_270x370.jpg', 4, 'El futuro le pertenece a los locos'),
(6, 'Avengers', -1, -1, 'Marvel Studios presenta AVENGERS: ERA DE ULTRÓN, la épica secuela de la película de Súper Héroes más extraordinaria de todos los tiempos. Cuando Tony Stark intenta reiniciar un programa inactivo para mantener la paz, las cosas salen mal y los héroes más poderosos de la Tierra, incluidos Iron Man, Capitán América, Thor, Hulk, Black Widow y Hawkeye son puestos a prueba mientras el destino del planeta pende de un hilo. Cuando el villano Ultrón emerge, dependerá de Los Vengadores impedir que lleve a cabo sus terribles planes y pronto, incómodas alianzas y acciones inesperadas darán lugar a una aventura épica, global y única. AVENGERS: ERA DE ULTRÓN, de Marvel, es protagonizada por Robert Downey Jr., quien regresa como Iron Man; Chris Evans, como Capitán América; Chris Hemsworth, como Thor y Mark Ruffalo, como Hulk. Junto con Scarlett Johansson en su papel de Black Widow y Jeremy Renner como Hawkeye, y con la ayuda de Samuel L. Jackson como Nick Fury y Cobie Smulders como la agente Maria Hill. El equipo debe reunirse nuevamente para derrotar a James Spader en su papel de Ultrón: un temible villano tecnológico empecinado en extinguir la raza humana. En el camino se enfrentan a dos misteriosos y poderosos recién llegados: Wanda Maximoff, interpretada por Elizabeth Olsen, y Pietro Maximoff, interpretado por Aaron Taylor-Johnson, y se reencuentran con un viejo amigo bajo una nueva forma cuando Paul Bettany se convierte en Visión. Escrita y dirigida por Joss Whedon y producida por Kevin Feige, AVENGERS: ERA DE ULTRÓN,de Marvel, está basada en la popular saga de libros de historietas de Marvel: Los Vengadores, publicada por primera vez en 1963. Prepárate para vivir una emocionante experiencia repleta de acción cuando Los Vengadores regresen en AVENGERS: ERA DE ULTRÓN a partir del 30 de abril de 2015.', 'Año: 2015\r\n\r\nDuración: 145\r\n\r\nCalificación: TE7+\r\n\r\nPaís: USA\r\n\r\nElenco:\r\n\r\nChris Evans, Robert Downey Jr.\r\n\r\nDirector:\r\n\r\nJoss Whedon', '2015-06-19', 'imagenes/peliculas/Avengers_270x370.jpg', 4, 'Era de Ultrón'),
(7, 'Desastres naturales', -1, -1, 'Raquel, una profesora que se niega a la idea de jubilar, vuelve un día a hacer clases a su antiguo colegio, encontrándose con que la han remplazado por alguien mucho más joven. Pero insiste en hacer clases y con el apoyo de sus ex alumnos, se toma la sala exigiendo que sea reintegrada, desatando una pequeña revolución que amenaza la estabilidad del establecimiento.', 'Año: 2014\r\n\r\nDuración: 75\r\n\r\nCalificación: 14\r\n\r\nPaís: Chile\r\n\r\nElenco:\r\n\r\nCatalina Saavedra, Anita Reeves\r\n\r\nDirector:\r\n\r\nBernardo Quesney', '2015-06-19', 'imagenes/peliculas/Desastrenatu_270x370.jpg', 2, ''),
(8, 'Spy', -1, -1, 'Melissa McCarthy, la nueva musa de la comedia internacional, protagoniza la cinta interpretando a Susan Cooper una analista del CIA que pasa todo el día detrás de su escritorio, soñando con tener más acción en su vida. Rodeada de la vida excéntrica y apasionante de los espías, pero siempre tras bambalinas, en segundo plano. Hasta que, sin saberlo, la vida le da una oportunidad de ir al rescate de Fine, un guapo súper espía, por el que deberá luchar contra mafiosos, malhechores, y el hampa internacional, probando que es una espía de cuidado. Con las actuaciones de Jude Law, Jason Statham y Rose Byrne.', 'Año: 2015\r\n\r\nDuración: 120\r\n\r\nCalificación: TE7+\r\n\r\nPaís: USA\r\n\r\nElenco:\r\n\r\nMelissa McCarthy, Rose Byrne\r\n\r\nDirector:\r\n\r\nPaul Feig', '2015-06-19', 'imagenes/peliculas/Spyespia_270x370_1.jpg', 4, 'Una espía despistada'),
(9, 'INTENSAMENTE', -1, -1, 'Desde una aventura en globo encima de las nubes hasta una metrópolis llena de monstruos, el director ganador del Oscar Pete Docter (MONSTERS, INC., UP: UNA AVENTURA DE ALTURA) ha llevado al público a lugares únicos y llenos de imaginación. En la película original de Disney•Pixar INTENSA-MENTE, nos llevará a la más extraordinaria locación de todas: el interior de la mente. El camino a la adultez puede estar lleno de baches y el de Riley no es la excepción, ella es desarraigada de su ciudad natal cuando su padre comienza un nuevo trabajo en San Francisco. Como todos nosotros, Riley está guiada por sus emociones – Joy (alegría) voz en inglés Amy Poehler, Fear (temor) voz en inglés Bill Hader, Anger (furia) voz en inglés Lewis Negro, Disgust (desagrado) voz en inglés Mindy Kaling y Sadness (tristeza) voz en inglés de Phyllis Smith. Las emociones viven en el Cuartel General, el centro de control de la mente de Riley, desde donde la asesoran en su vida cotidiana. Mientras Riley y sus emociones se esfuerzan por adaptarse a una nueva vida en San Francisco, la confusión y la ansiedad se apoderan del Cuartel General. Aunque Joy (alegría), la emoción principal y más importante de Riley, trata de mantener las cosas positivas, las emociones entran en conflicto sobre cuál es la mejor manera de navegar por una nueva ciudad, casa y escuela.', 'Año: 2015\r\n\r\nDuración: 94\r\n\r\nCalificación: TE\r\n\r\nPaís: USA\r\n\r\nDirector:\r\n\r\nPete Docter', '2015-06-19', 'imagenes/peliculas/Intensamente_270x370.jpg', 5, ''),
(10, 'Tomorrowland', -1, -1, 'De Disney llega la fascinante aventura de misterio del ganador de dos premios Oscar Brad Bird: TOMORROWLAND, protagonizada por, también ganador de un premio de la Academia, George Clooney. Unidos por un mismo destino, Frank (George Clooney) quien fuera un niño prodigio, ahora hastiado de tantas desilusiones y Casey (Britt Robertson) una brillante y optimista adolescente llena de curiosidad científica se embarcan en una peligrosa misión para develar los secretos de un enigmático lugar perdido en algún punto del tiempo y el espacio conocido como TOMORROWLAND. Y su misión allí cambiará al mundo y a ellos para siempre.', 'Año: 2015\r\n\r\nDuración: 130\r\n\r\nCalificación: TE\r\n\r\nPaís: USA\r\n\r\nElenco:\r\n\r\nGeorge Clooney, Britt Robertson\r\n\r\nDirector:\r\n\r\nBrad Bird', '2015-06-19', 'imagenes/peliculas/Tomorrowland_270x370.jpg', 6, 'Imagina un lugar donde todo e imposible'),
(11, 'El Septimo Enanito', -1, -1, 'El séptimo enano Bubi viaja hacia el futuro con sus compañeros enanos para detener una maldición provocada por una reina de hielo mal.', 'Año: 2014\r\n\r\nDuración: 87\r\n\r\nCalificación: TE\r\n\r\nPaís: Alemania\r\n\r\nDirector:\r\n\r\nBoris Aljinovic', '2015-06-19', 'imagenes/peliculas/The7thdwarf_270x370.jpg', 5, 'Siete Heores... Siete veces divertida.'),
(12, 'La Once', -1, -1, 'Cinco mujeres ya ancianas se juntan a tomar el té, sagradamente, una vez al mes desde hace sesenta años. En estas reuniones se encuentran y desencuentran, evocan el pasado común y se esfuerzan en demostrar que aún están vigentes, olvidando por un momento los males que padecen. Mientras comen, interpretan la actualidad, pese a no entender algunas tendencias las comentan con autoridad y se las tratan de explicar entre ellas. En instancias de discrepancias son las historias personales las que salen a relucir y marcan las diferencias de opinión. Aunque tuvieron una formación común en un colegio religioso, les tocó vivir un período de cambios históricos radicales que provocaron polarizaciones al interior grupo. Así, pese a tener biografías y personalidades muy distintas a la larga logran comprenderse, complementarse y acompañarse. Pasan las tardes, días, meses y años, hasta que se preguntan: ¿Han notado que el grupo se ha mermado un poquito?', 'Año: 2014\r\n\r\nDuración: 70\r\n\r\nCalificación: TE7+\r\n\r\nPaís: Chile\r\n\r\nElenco:\r\n\r\nMaría Teresa Muñoz, Ximena Calderón\r\n\r\nDirector:\r\n\r\nMaite Alberdi', '2015-06-19', 'imagenes/peliculas/Laonce_270x370.jpg', 2, 'Intimidades que sólo se dicen entre amigas'),
(13, 'Resusitados', -1, -1, 'Un equipo de médicos ambiciosos encontraron una manera de traer a los pacientes muertos a la vida, mediante un suero llamado “Lázaro”. Después de varias pruebas exitosas en animales, Zoe (Olivia Wilde), uno de los principales investigadores, muere en un accidente de laboratorio. En su desesperación, el equipo utiliza el suero “Lázaro” para traerla a la vida. Todo resulta tal cual lo planeado, pero a medida que Zoe empieza a mostrar habilidades inusuales, el equipo comienza a darse cuenta de que en su intento de resucitar a los muertos, ellos abrieron la puerta al mal.', 'Año: 2015\r\n\r\nDuración: 83\r\n\r\nCalificación: 14\r\n\r\nPaís: USA\r\n\r\nElenco:\r\n\r\nOlivia Wilde, Evan Peters\r\n\r\nDirector:\r\n\r\nDavid Gelb', '2015-06-20', 'imagenes/peliculas/Lazarus_270x370.jpg', 1, ' ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinealtiro_pelicula_cines`
--

CREATE TABLE IF NOT EXISTS `cinealtiro_pelicula_cines` (
  `id` int(11) NOT NULL,
  `pelicula_id` int(11) NOT NULL,
  `cine_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cinealtiro_pelicula_cines`
--

INSERT INTO `cinealtiro_pelicula_cines` (`id`, `pelicula_id`, `cine_id`) VALUES
(111, 1, 46),
(112, 1, 47),
(110, 1, 48),
(114, 2, 1),
(115, 2, 2),
(61, 3, 1),
(62, 3, 2),
(63, 3, 3),
(64, 3, 4),
(65, 3, 5),
(66, 3, 6),
(67, 3, 7),
(68, 3, 8),
(69, 3, 9),
(70, 3, 10),
(71, 3, 11),
(72, 3, 12),
(73, 3, 13),
(74, 3, 14),
(75, 3, 15),
(76, 3, 16),
(77, 3, 17),
(78, 3, 18),
(79, 3, 19),
(80, 3, 20),
(81, 3, 21),
(82, 3, 22),
(83, 3, 23),
(84, 3, 24),
(85, 3, 25),
(86, 3, 26),
(87, 3, 27),
(88, 3, 28),
(89, 3, 29),
(90, 3, 30),
(91, 3, 31),
(92, 3, 32),
(93, 3, 33),
(94, 3, 34),
(95, 3, 35),
(96, 3, 36),
(97, 3, 37),
(98, 3, 38),
(99, 3, 39),
(100, 3, 40),
(101, 3, 41),
(102, 3, 42),
(103, 3, 43),
(104, 3, 44),
(105, 3, 45),
(106, 3, 46),
(107, 3, 47),
(108, 3, 48),
(48, 4, 2),
(49, 4, 5),
(51, 4, 8),
(53, 4, 14),
(55, 4, 17),
(56, 4, 23),
(57, 4, 25),
(59, 4, 28),
(58, 4, 31),
(60, 4, 37),
(50, 4, 39),
(52, 4, 45),
(54, 4, 47),
(109, 6, 1),
(116, 8, 1),
(117, 8, 2),
(118, 8, 3),
(119, 8, 4),
(13, 12, 1),
(14, 12, 2),
(15, 12, 3),
(16, 12, 11),
(17, 12, 12),
(18, 12, 13),
(19, 12, 20),
(20, 12, 21),
(21, 12, 22),
(22, 12, 23),
(23, 12, 24),
(24, 12, 25),
(25, 12, 26),
(26, 12, 27),
(27, 12, 28),
(28, 12, 29),
(29, 12, 30),
(30, 12, 31),
(31, 12, 32),
(32, 12, 33),
(33, 12, 34),
(34, 12, 35),
(35, 12, 36),
(36, 12, 37),
(37, 12, 38),
(38, 12, 39),
(39, 12, 40),
(40, 12, 41),
(41, 12, 42),
(42, 12, 43),
(43, 12, 44),
(44, 12, 45),
(45, 12, 46),
(46, 12, 47),
(47, 12, 48),
(3, 13, 1),
(4, 13, 2),
(5, 13, 3),
(6, 13, 4),
(7, 13, 9),
(8, 13, 10),
(9, 13, 11),
(10, 13, 46),
(11, 13, 47),
(12, 13, 48);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinealtiro_showtime`
--

CREATE TABLE IF NOT EXISTS `cinealtiro_showtime` (
  `id` int(11) NOT NULL,
  `hola` varchar(2000) NOT NULL,
  `tipo` varchar(2000) NOT NULL,
  `date` date NOT NULL,
  `cines_id` int(11) NOT NULL,
  `peliculas_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cinealtiro_showtime`
--

INSERT INTO `cinealtiro_showtime` (`id`, `hola`, `tipo`, `date`, `cines_id`, `peliculas_id`) VALUES
(1, 'caca', 'Normal', '2015-07-22', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinealtiro_showtime_horarios`
--

CREATE TABLE IF NOT EXISTS `cinealtiro_showtime_horarios` (
  `id` int(11) NOT NULL,
  `showtime_id` int(11) NOT NULL,
  `horario_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cinealtiro_showtime_horarios`
--

INSERT INTO `cinealtiro_showtime_horarios` (`id`, `showtime_id`, `horario_id`) VALUES
(1, 1, 4),
(2, 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2015-06-17 17:17:22', '1', 'Cine Hoyts La Reina', 1, '', 14, 1),
(2, '2015-06-17 17:28:49', '1', 'Jurassic World', 1, '', 10, 1),
(3, '2015-06-17 17:53:45', '1', 'Terror', 1, '', 7, 1),
(4, '2015-06-17 17:53:51', '2', 'Comedia', 1, '', 7, 1),
(5, '2015-06-17 17:53:59', '3', 'Drama', 1, '', 7, 1),
(6, '2015-06-17 17:54:17', '4', 'Acción', 1, '', 7, 1),
(7, '2015-06-17 17:55:10', '5', 'Animación', 1, '', 7, 1),
(8, '2015-06-17 17:55:17', '6', 'Aventura', 1, '', 7, 1),
(9, '2015-06-17 17:55:27', '7', 'Deporte', 1, '', 7, 1),
(10, '2015-06-17 17:55:59', '1', 'Jurassic World', 2, 'Changed categoria.', 10, 1),
(11, '2015-06-18 22:09:30', '2', 'Terremoto', 1, '', 10, 1),
(12, '2015-06-18 22:22:05', '3', 'DRAGON BALL Z: LA RESURRECCION DE FREEZER', 1, '', 10, 1),
(13, '2015-06-18 22:43:42', '3', 'Dragon Ball Z', 2, 'Changed titulo.', 10, 1),
(14, '2015-06-19 15:45:19', '3', 'Dragon Ball Z', 2, 'Changed imagen.', 10, 1),
(15, '2015-06-19 15:45:31', '2', 'Terremoto', 2, 'Changed imagen.', 10, 1),
(16, '2015-06-19 15:45:41', '1', 'Jurassic World', 2, 'Changed imagen.', 10, 1),
(17, '2015-06-19 15:49:19', '3', 'Dragon Ball Z', 2, 'Changed imagen.', 10, 1),
(18, '2015-06-19 15:49:34', '2', 'Terremoto', 2, 'Changed imagen.', 10, 1),
(19, '2015-06-19 15:50:01', '1', 'Jurassic World', 2, 'Changed imagen.', 10, 1),
(20, '2015-06-19 17:00:41', '4', 'El Bosque de Karadima', 1, '', 10, 1),
(21, '2015-06-19 17:01:48', '4', 'El Bosque de Karadima', 2, 'Changed imagen.', 10, 1),
(22, '2015-06-19 17:04:03', '5', 'Mad Max', 1, '', 10, 1),
(23, '2015-06-19 17:05:17', '6', 'Avengers', 1, '', 10, 1),
(24, '2015-06-19 17:21:33', '7', 'Desastres naturales', 1, '', 10, 1),
(25, '2015-06-19 17:25:57', '8', 'Spy', 1, '', 10, 1),
(26, '2015-06-19 17:27:43', '9', 'INTENSAMENTE', 1, '', 10, 1),
(27, '2015-06-19 17:29:29', '10', 'Tomorrowland', 1, '', 10, 1),
(28, '2015-06-19 17:31:14', '11', 'EL SEPTIMO ENANITO', 1, '', 10, 1),
(29, '2015-06-19 17:33:17', '12', 'La Once', 1, '', 10, 1),
(30, '2015-06-19 17:45:36', '13', 'Resusitados', 1, '', 10, 1),
(31, '2015-06-19 17:45:58', '12', 'La Once', 2, 'Changed imagen.', 10, 1),
(32, '2015-06-19 17:46:08', '11', 'EL SEPTIMO ENANITO', 2, 'Changed imagen.', 10, 1),
(33, '2015-06-19 17:46:35', '10', 'Tomorrowland', 2, 'Changed imagen.', 10, 1),
(34, '2015-06-19 17:46:42', '9', 'INTENSAMENTE', 2, 'Changed imagen.', 10, 1),
(35, '2015-06-19 17:46:52', '8', 'Spy', 2, 'Changed imagen.', 10, 1),
(36, '2015-06-19 17:47:00', '7', 'Desastres naturales', 2, 'Changed imagen.', 10, 1),
(37, '2015-06-19 17:47:18', '6', 'Avengers', 2, 'Changed imagen.', 10, 1),
(38, '2015-06-19 17:47:27', '5', 'Mad Max', 2, 'Changed imagen.', 10, 1),
(39, '2015-06-19 17:47:46', '4', 'El Bosque de Karadima', 2, 'Changed imagen.', 10, 1),
(40, '2015-06-19 17:47:56', '3', 'Dragon Ball Z', 2, 'Changed imagen.', 10, 1),
(41, '2015-06-19 17:48:06', '2', 'Terremoto', 2, 'Changed imagen.', 10, 1),
(42, '2015-06-19 17:48:15', '1', 'Jurassic World', 2, 'Changed imagen.', 10, 1),
(43, '2015-06-20 03:13:14', '2', 'CineHoyts Parque Arauco', 1, '', 14, 1),
(44, '2015-06-20 03:13:26', '1', 'CineHoyts La Reina', 2, 'Changed nombre.', 14, 1),
(45, '2015-06-20 03:27:49', '1', 'CineHoyts La Reina', 2, 'Changed imagen.', 14, 1),
(52, '2015-06-20 17:39:47', '2', 'caca', 3, '', 4, 1),
(53, '2015-06-20 19:05:41', '13', 'Resusitados', 2, 'Changed titulo_completo.', 10, 1),
(54, '2015-06-20 19:07:33', '13', 'Resusitados', 2, 'Changed titulo_completo.', 10, 1),
(55, '2015-06-20 19:08:05', '12', 'La Once', 2, 'Changed titulo_completo.', 10, 1),
(56, '2015-06-20 19:10:08', '11', 'El Septimo Enanito', 2, 'Changed titulo and subtitulo.', 10, 1),
(57, '2015-06-20 19:10:36', '10', 'Tomorrowland', 2, 'Changed subtitulo.', 10, 1),
(58, '2015-06-20 19:11:17', '8', 'Spy', 2, 'Changed subtitulo.', 10, 1),
(59, '2015-06-20 19:11:44', '6', 'Avengers', 2, 'Changed subtitulo.', 10, 1),
(60, '2015-06-20 19:12:21', '5', 'Mad Max', 2, 'Changed subtitulo.', 10, 1),
(61, '2015-06-20 19:12:59', '3', 'Dragon Ball Z', 2, 'Changed subtitulo.', 10, 1),
(62, '2015-06-20 19:13:17', '2', 'Terremoto', 2, 'Changed subtitulo.', 10, 1),
(63, '2015-06-20 23:07:42', '13', 'Resusitados', 2, 'Changed fecha_publicacion and cines.', 10, 1),
(64, '2015-06-20 23:12:30', '3', 'CineHoyts Parque Arauco Premium', 1, '', 14, 1),
(65, '2015-06-20 23:13:05', '4', 'CineHoyts Los Trapenses', 1, '', 14, 1),
(66, '2015-06-20 23:13:38', '5', 'CineHoyts Los Domínicos', 1, '', 14, 1),
(67, '2015-06-20 23:14:04', '6', 'CineHoyts Plaza Egaña', 1, '', 14, 1),
(68, '2015-06-20 23:14:33', '7', 'CineHoyts Plaza Egaña Premium', 1, '', 14, 1),
(69, '2015-06-20 23:15:30', '8', 'CineHoyts San Agustín', 1, '', 14, 1),
(70, '2015-06-20 23:16:29', '9', 'CineHoyts Estación Central', 1, '', 14, 1),
(71, '2015-06-20 23:16:56', '10', 'CineHoyts Puente Alto', 1, '', 14, 1),
(72, '2015-06-20 23:17:29', '11', 'CineHoyts Paseo San Bernardo', 1, '', 14, 1),
(73, '2015-06-20 23:17:57', '12', 'CineHoyts Plaza Sur', 1, '', 14, 1),
(74, '2015-06-20 23:18:35', '13', 'CineHoyts Maipú', 1, '', 14, 1),
(75, '2015-06-20 23:18:57', '14', 'CineHoyts Melipilla', 1, '', 14, 1),
(76, '2015-06-20 23:19:28', '15', 'CineHoyts Quilicura ', 1, '', 14, 1),
(77, '2015-06-20 23:20:28', '16', 'CineHoyts Arica', 1, '', 14, 1),
(78, '2015-06-20 23:21:31', '17', 'CineHoyts Antofagasta Plaza', 1, '', 14, 1),
(79, '2015-06-20 23:22:06', '18', 'CineHoyts Antofagasta Lide', 1, '', 14, 1),
(80, '2015-06-20 23:22:32', '19', 'CineHoyts Calama ', 1, '', 14, 1),
(81, '2015-06-20 23:23:00', '20', 'CineHoyts Valparaíso', 1, '', 14, 1),
(82, '2015-06-20 23:23:27', '21', 'CineHoyts Talca', 1, '', 14, 1),
(83, '2015-06-20 23:23:48', '22', 'CineHoyts Los Ángeles', 1, '', 14, 1),
(84, '2015-06-20 23:24:16', '23', 'CineHoyts Temuco', 1, '', 14, 1),
(85, '2015-06-20 23:25:02', '24', 'CineHoyts Puerto Montt', 1, '', 14, 1),
(86, '2015-06-20 23:29:53', '25', 'CineMark Alto Las Condes', 1, '', 14, 1),
(87, '2015-06-20 23:30:44', '26', 'CineMark Mall Plaza Vespucio', 1, '', 14, 1),
(88, '2015-06-20 23:31:23', '27', 'CineMark Mall Plaza Tobalaba', 1, '', 14, 1),
(89, '2015-06-20 23:32:04', '28', 'CineMark Mall Plaza Norte', 1, '', 14, 1),
(90, '2015-06-20 23:33:03', '29', 'CineMark Mall Plaza Oeste', 1, '', 14, 1),
(91, '2015-06-20 23:33:48', '30', 'CineMark Portal Ñuñoa', 1, '', 14, 1),
(92, '2015-06-20 23:36:03', '31', 'CineMark Iquique', 1, '', 14, 1),
(93, '2015-06-20 23:36:36', '32', 'CineMark Mall Plaza La Serena', 1, '', 14, 1),
(94, '2015-06-20 23:37:11', '33', 'CineMark Open Plaza Ovalle', 1, '', 14, 1),
(95, '2015-06-20 23:37:56', '34', 'CineMark Marina Arauco', 1, '', 14, 1),
(96, '2015-06-20 23:38:36', '35', 'CineMark Espacio Urbano', 1, '', 14, 1),
(97, '2015-06-20 23:39:04', '36', 'CineMark Rancagua', 1, '', 14, 1),
(98, '2015-06-20 23:39:41', '37', 'CineMark Open Plaza Rancagua', 1, '', 14, 1),
(99, '2015-06-20 23:40:20', '38', 'CineMark Mall Plaza Trébol', 1, '', 14, 1),
(100, '2015-06-20 23:40:48', '39', 'CineMark Plaza Bio Bio', 1, '', 14, 1),
(101, '2015-06-20 23:41:36', '40', 'CineMark Portal Osorno', 1, '', 14, 1),
(102, '2015-06-20 23:47:30', '41', 'Cineplanet Concepción', 1, '', 14, 1),
(103, '2015-06-20 23:48:11', '42', 'Cineplanet Costanera Center', 1, '', 14, 1),
(104, '2015-06-20 23:48:59', '43', 'Cineplanet Costanera Prime', 1, '', 14, 1),
(105, '2015-06-20 23:49:22', '44', 'Cineplanet Florida Center', 1, '', 14, 1),
(106, '2015-06-20 23:49:45', '45', 'Cineplanet La Dehesa', 1, '', 14, 1),
(107, '2015-06-20 23:50:08', '46', 'Cineplanet Paseo Quilín', 1, '', 14, 1),
(108, '2015-06-20 23:50:32', '47', 'Cineplanet Plaza Alameda', 1, '', 14, 1),
(109, '2015-06-20 23:51:02', '48', 'Cineplanet Temuco', 1, '', 14, 1),
(110, '2015-06-21 00:47:53', '13', 'Resusitados', 2, 'Changed cines.', 10, 1),
(111, '2015-06-21 00:48:21', '18', 'CineHoyts Antofagasta Lider', 2, 'Changed nombre.', 14, 1),
(112, '2015-06-21 00:48:46', '12', 'La Once', 2, 'Changed cines.', 10, 1),
(113, '2015-06-21 02:27:04', '48', 'Cineplanet Temuco', 2, 'Changed empresa.', 14, 1),
(114, '2015-06-21 02:27:11', '48', 'Cineplanet Temuco', 2, 'No fields changed.', 14, 1),
(115, '2015-06-21 02:27:19', '47', 'Cineplanet Plaza Alameda', 2, 'Changed empresa.', 14, 1),
(116, '2015-06-21 02:27:24', '46', 'Cineplanet Paseo Quilín', 2, 'Changed empresa.', 14, 1),
(117, '2015-06-21 02:27:30', '45', 'Cineplanet La Dehesa', 2, 'Changed empresa.', 14, 1),
(118, '2015-06-21 02:27:37', '44', 'Cineplanet Florida Center', 2, 'Changed empresa.', 14, 1),
(119, '2015-06-21 02:27:43', '43', 'Cineplanet Costanera Prime', 2, 'Changed empresa.', 14, 1),
(120, '2015-06-21 02:27:51', '42', 'Cineplanet Costanera Center', 2, 'Changed empresa.', 14, 1),
(121, '2015-06-21 02:27:59', '41', 'Cineplanet Concepción', 2, 'Changed empresa.', 14, 1),
(122, '2015-06-21 02:28:12', '40', 'CineMark Portal Osorno', 2, 'Changed empresa.', 14, 1),
(123, '2015-06-21 02:28:24', '39', 'CineMark Plaza Bio Bio', 2, 'Changed empresa.', 14, 1),
(124, '2015-06-21 02:28:32', '38', 'CineMark Mall Plaza Trébol', 2, 'Changed empresa.', 14, 1),
(125, '2015-06-21 02:29:22', '37', 'CineMark Open Plaza Rancagua', 2, 'Changed empresa.', 14, 1),
(126, '2015-06-21 02:29:26', '36', 'CineMark Rancagua', 2, 'Changed empresa.', 14, 1),
(127, '2015-06-21 02:29:30', '35', 'CineMark Espacio Urbano', 2, 'Changed empresa.', 14, 1),
(128, '2015-06-21 02:29:34', '34', 'CineMark Marina Arauco', 2, 'Changed empresa.', 14, 1),
(129, '2015-06-21 02:29:38', '33', 'CineMark Open Plaza Ovalle', 2, 'Changed empresa.', 14, 1),
(130, '2015-06-21 02:29:41', '32', 'CineMark Mall Plaza La Serena', 2, 'Changed empresa.', 14, 1),
(131, '2015-06-21 02:29:45', '31', 'CineMark Iquique', 2, 'Changed empresa.', 14, 1),
(132, '2015-06-21 02:29:49', '30', 'CineMark Portal Ñuñoa', 2, 'Changed empresa.', 14, 1),
(133, '2015-06-21 02:29:53', '29', 'CineMark Mall Plaza Oeste', 2, 'Changed empresa.', 14, 1),
(134, '2015-06-21 02:29:57', '28', 'CineMark Mall Plaza Norte', 2, 'Changed empresa.', 14, 1),
(135, '2015-06-21 02:30:00', '27', 'CineMark Mall Plaza Tobalaba', 2, 'Changed empresa.', 14, 1),
(136, '2015-06-21 02:30:04', '26', 'CineMark Mall Plaza Vespucio', 2, 'Changed empresa.', 14, 1),
(137, '2015-06-21 02:30:08', '25', 'CineMark Alto Las Condes', 2, 'Changed empresa.', 14, 1),
(138, '2015-06-21 02:30:32', '24', 'CineHoyts Puerto Montt', 2, 'Changed empresa.', 14, 1),
(139, '2015-06-21 02:31:18', '23', 'CineHoyts Temuco', 2, 'Changed empresa.', 14, 1),
(140, '2015-06-21 02:31:23', '22', 'CineHoyts Los Ángeles', 2, 'Changed empresa.', 14, 1),
(141, '2015-06-21 02:31:28', '21', 'CineHoyts Talca', 2, 'Changed empresa.', 14, 1),
(142, '2015-06-21 02:31:31', '20', 'CineHoyts Valparaíso', 2, 'Changed empresa.', 14, 1),
(143, '2015-06-21 02:31:33', '19', 'CineHoyts Calama ', 2, 'Changed empresa.', 14, 1),
(144, '2015-06-21 02:31:38', '18', 'CineHoyts Antofagasta Lider', 2, 'Changed empresa.', 14, 1),
(145, '2015-06-21 02:31:43', '17', 'CineHoyts Antofagasta Plaza', 2, 'Changed empresa.', 14, 1),
(146, '2015-06-21 02:31:45', '16', 'CineHoyts Arica', 2, 'Changed empresa.', 14, 1),
(147, '2015-06-21 02:31:49', '15', 'CineHoyts Quilicura ', 2, 'Changed empresa.', 14, 1),
(148, '2015-06-21 02:31:51', '14', 'CineHoyts Melipilla', 2, 'Changed empresa.', 14, 1),
(149, '2015-06-21 02:31:54', '13', 'CineHoyts Maipú', 2, 'Changed empresa.', 14, 1),
(150, '2015-06-21 02:31:57', '12', 'CineHoyts Plaza Sur', 2, 'Changed empresa.', 14, 1),
(151, '2015-06-21 02:32:05', '11', 'CineHoyts Paseo San Bernardo', 2, 'Changed empresa.', 14, 1),
(152, '2015-06-21 02:32:13', '10', 'CineHoyts Puente Alto', 2, 'Changed empresa.', 14, 1),
(153, '2015-06-21 02:32:15', '9', 'CineHoyts Estación Central', 2, 'Changed empresa.', 14, 1),
(154, '2015-06-21 02:32:17', '8', 'CineHoyts San Agustín', 2, 'Changed empresa.', 14, 1),
(155, '2015-06-21 02:32:20', '7', 'CineHoyts Plaza Egaña Premium', 2, 'Changed empresa.', 14, 1),
(156, '2015-06-21 02:32:22', '6', 'CineHoyts Plaza Egaña', 2, 'Changed empresa.', 14, 1),
(157, '2015-06-21 02:32:24', '5', 'CineHoyts Los Domínicos', 2, 'Changed empresa.', 14, 1),
(158, '2015-06-21 02:32:33', '4', 'CineHoyts Los Trapenses', 2, 'Changed empresa.', 14, 1),
(159, '2015-06-21 02:32:37', '3', 'CineHoyts Parque Arauco Premium', 2, 'Changed empresa.', 14, 1),
(160, '2015-06-21 02:32:39', '2', 'CineHoyts Parque Arauco', 2, 'Changed empresa.', 14, 1),
(161, '2015-06-21 02:32:41', '1', 'CineHoyts La Reina', 2, 'Changed empresa.', 14, 1),
(162, '2015-06-22 01:10:57', '4', 'El Bosque de Karadima', 2, 'Changed subtitulo and cines.', 10, 1),
(163, '2015-06-22 01:11:33', '3', 'Dragon Ball Z', 2, 'Changed cines.', 10, 1),
(164, '2015-06-22 02:22:11', '6', 'Avengers', 2, 'Changed cines.', 10, 1),
(165, '2015-06-22 03:11:26', '1', 'Jurassic World', 2, 'Changed subtitulo and cines.', 10, 1),
(166, '2015-06-22 03:12:23', '2', 'Terremoto', 2, 'Changed cines.', 10, 1),
(167, '2015-06-22 03:22:53', '2', 'Terremoto', 2, 'Changed cines.', 10, 1),
(168, '2015-06-22 13:21:14', '8', 'Spy', 2, 'Changed cines.', 10, 1),
(173, '2015-06-22 18:48:41', '2', '00:00', 1, '', 21, 1),
(174, '2015-06-22 18:49:24', '2', '00:00', 3, '', 21, 1),
(175, '2015-06-22 18:49:39', '3', '10:00 ', 1, '', 21, 1),
(176, '2015-06-22 18:49:48', '4', '10:05', 1, '', 21, 1),
(177, '2015-06-22 18:49:55', '5', '10:10', 1, '', 21, 1),
(178, '2015-06-22 18:50:00', '6', '10:15', 1, '', 21, 1),
(179, '2015-06-22 18:50:07', '7', '10:15', 1, '', 21, 1),
(180, '2015-06-22 18:50:16', '8', '10:20', 1, '', 21, 1),
(181, '2015-06-22 18:50:27', '7', '10:15', 3, '', 21, 1),
(182, '2015-06-22 18:51:09', '1', 'caca', 1, '', 22, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'CineAltiro', 'categoria'),
(9, 'CineAltiro', 'categoria_usuario'),
(14, 'CineAltiro', 'cine'),
(12, 'CineAltiro', 'comentario'),
(13, 'CineAltiro', 'comentario_pelicula'),
(21, 'CineAltiro', 'horario'),
(10, 'CineAltiro', 'pelicula'),
(22, 'CineAltiro', 'showtime'),
(5, 'contenttypes', 'contenttype'),
(17, 'registration', 'registrationprofile'),
(6, 'sessions', 'session'),
(16, 'sites', 'site');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'CineAltiro', '0001_initial', '2015-06-17 15:26:16'),
(2, 'contenttypes', '0001_initial', '2015-06-17 15:26:18'),
(3, 'auth', '0001_initial', '2015-06-17 15:26:36'),
(4, 'admin', '0001_initial', '2015-06-17 15:26:40'),
(5, 'contenttypes', '0002_remove_content_type_name', '2015-06-17 15:26:42'),
(6, 'auth', '0002_alter_permission_name_max_length', '2015-06-17 15:26:44'),
(7, 'auth', '0003_alter_user_email_max_length', '2015-06-17 15:26:46'),
(8, 'auth', '0004_alter_user_username_opts', '2015-06-17 15:26:47'),
(9, 'auth', '0005_alter_user_last_login_null', '2015-06-17 15:26:48'),
(10, 'auth', '0006_require_contenttypes_0002', '2015-06-17 15:26:48'),
(11, 'sessions', '0001_initial', '2015-06-17 15:26:49'),
(12, 'CineAltiro', '0002_auto_20150617_1712', '2015-06-17 17:12:32'),
(13, 'CineAltiro', '0003_auto_20150617_1724', '2015-06-17 17:24:58'),
(14, 'registration', '0001_initial', '2015-06-18 23:59:28'),
(15, 'sites', '0001_initial', '2015-06-18 23:59:29'),
(16, 'CineAltiro', '0002_auto_20150619_1541', '2015-06-19 15:41:13'),
(17, 'CineAltiro', '0003_auto_20150619_1548', '2015-06-19 15:48:08'),
(18, 'CineAltiro', '0004_auto_20150619_1707', '2015-06-19 17:08:05'),
(19, 'CineAltiro', '0005_comentario_id_pelicula', '2015-06-20 05:06:31'),
(20, 'CineAltiro', '0006_pelicula_titulo_completo', '2015-06-20 19:03:19'),
(21, 'CineAltiro', '0007_auto_20150620_1908', '2015-06-20 19:08:50'),
(22, 'CineAltiro', '0008_auto_20150620_2305', '2015-06-20 23:05:48'),
(23, 'CineAltiro', '0009_auto_20150621_0224', '2015-06-21 02:24:36'),
(24, 'CineAltiro', '0010_auto_20150622_1633', '2015-06-22 16:33:48'),
(25, 'CineAltiro', '0011_funciones', '2015-06-22 17:08:12'),
(26, 'CineAltiro', '0011_auto_20150622_1813', '2015-06-22 18:14:05'),
(27, 'CineAltiro', '0011_horario_showtime', '2015-06-22 18:41:07'),
(28, 'CineAltiro', '0012_auto_20150622_1848', '2015-06-22 18:48:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('dv39pvxp1zz32mkm12fw0dfakcga1ke1', 'NWJmMzM1MjI4NjJjMTNiODIzNTkzYzgxYTE3ZGE5ZWM3Y2EzYWIyMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjE0NWNhZTdmMzdjZGMzMDE5OTQwZjZhMGUzYWNjYjhiZmEyOGQ0MTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-07-01 17:14:10'),
('to9duuqprw0zhl134h7cgx8htnk2ogah', 'NWJmMzM1MjI4NjJjMTNiODIzNTkzYzgxYTE3ZGE5ZWM3Y2EzYWIyMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjE0NWNhZTdmMzdjZGMzMDE5OTQwZjZhMGUzYWNjYjhiZmEyOGQ0MTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-07-06 01:04:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registration_registrationprofile`
--

CREATE TABLE IF NOT EXISTS `registration_registrationprofile` (
  `id` int(11) NOT NULL,
  `activation_key` varchar(40) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`), ADD KEY `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_30a071c9_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`), ADD KEY `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` (`permission_id`);

--
-- Indices de la tabla `cinealtiro_categoria`
--
ALTER TABLE `cinealtiro_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cinealtiro_categoria_usuario`
--
ALTER TABLE `cinealtiro_categoria_usuario`
  ADD PRIMARY KEY (`id`), ADD KEY `CineAltiro_c_id_categoria_id_7d36b634_fk_CineAltiro_categoria_id` (`id_categoria_id`);

--
-- Indices de la tabla `cinealtiro_cine`
--
ALTER TABLE `cinealtiro_cine`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cinealtiro_comentario`
--
ALTER TABLE `cinealtiro_comentario`
  ADD PRIMARY KEY (`id`), ADD KEY `CineAltiro_comentario_49ef5164` (`id_pelicula_id`);

--
-- Indices de la tabla `cinealtiro_comentario_pelicula`
--
ALTER TABLE `cinealtiro_comentario_pelicula`
  ADD PRIMARY KEY (`id`), ADD KEY `CineAltiro_id_comentario_id_7d7b60b6_fk_CineAltiro_comentario_id` (`id_comentario_id`), ADD KEY `CineAltiro_comentario_pelicula_49ef5164` (`id_pelicula_id`);

--
-- Indices de la tabla `cinealtiro_horario`
--
ALTER TABLE `cinealtiro_horario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cinealtiro_pelicula`
--
ALTER TABLE `cinealtiro_pelicula`
  ADD PRIMARY KEY (`id`), ADD KEY `CineAltiro_pelicula_daf3833b` (`categoria_id`);

--
-- Indices de la tabla `cinealtiro_pelicula_cines`
--
ALTER TABLE `cinealtiro_pelicula_cines`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `pelicula_id` (`pelicula_id`,`cine_id`), ADD KEY `CineAltiro_pelicula_cines_cine_id_1f02bdf3_fk_CineAltiro_cine_id` (`cine_id`);

--
-- Indices de la tabla `cinealtiro_showtime`
--
ALTER TABLE `cinealtiro_showtime`
  ADD PRIMARY KEY (`id`), ADD KEY `CineAltiro_showtime_cines_id_1bf92fad_fk_CineAltiro_cine_id` (`cines_id`), ADD KEY `CineAltiro_showt_peliculas_id_159ec23d_fk_CineAltiro_pelicula_id` (`peliculas_id`);

--
-- Indices de la tabla `cinealtiro_showtime_horarios`
--
ALTER TABLE `cinealtiro_showtime_horarios`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `showtime_id` (`showtime_id`,`horario_id`), ADD KEY `CineAltiro_showtime_horario_id_10f8c6e4_fk_CineAltiro_horario_id` (`horario_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`), ADD KEY `django_admin__content_type_id_5151027a_fk_django_content_type_id` (`content_type_id`), ADD KEY `django_admin_log_user_id_1c5f563_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indices de la tabla `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registration_registrationprofile`
--
ALTER TABLE `registration_registrationprofile`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cinealtiro_categoria`
--
ALTER TABLE `cinealtiro_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `cinealtiro_categoria_usuario`
--
ALTER TABLE `cinealtiro_categoria_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cinealtiro_cine`
--
ALTER TABLE `cinealtiro_cine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT de la tabla `cinealtiro_comentario`
--
ALTER TABLE `cinealtiro_comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cinealtiro_comentario_pelicula`
--
ALTER TABLE `cinealtiro_comentario_pelicula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cinealtiro_horario`
--
ALTER TABLE `cinealtiro_horario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `cinealtiro_pelicula`
--
ALTER TABLE `cinealtiro_pelicula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `cinealtiro_pelicula_cines`
--
ALTER TABLE `cinealtiro_pelicula_cines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT de la tabla `cinealtiro_showtime`
--
ALTER TABLE `cinealtiro_showtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `cinealtiro_showtime_horarios`
--
ALTER TABLE `cinealtiro_showtime_horarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `registration_registrationprofile`
--
ALTER TABLE `registration_registrationprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
ADD CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `cinealtiro_categoria_usuario`
--
ALTER TABLE `cinealtiro_categoria_usuario`
ADD CONSTRAINT `CineAltiro_c_id_categoria_id_7d36b634_fk_CineAltiro_categoria_id` FOREIGN KEY (`id_categoria_id`) REFERENCES `cinealtiro_categoria` (`id`);

--
-- Filtros para la tabla `cinealtiro_comentario`
--
ALTER TABLE `cinealtiro_comentario`
ADD CONSTRAINT `CineAltiro_com_id_pelicula_id_1fb4e38d_fk_CineAltiro_pelicula_id` FOREIGN KEY (`id_pelicula_id`) REFERENCES `cinealtiro_pelicula` (`id`);

--
-- Filtros para la tabla `cinealtiro_comentario_pelicula`
--
ALTER TABLE `cinealtiro_comentario_pelicula`
ADD CONSTRAINT `CineAltiro_com_id_pelicula_id_4948ebd6_fk_CineAltiro_pelicula_id` FOREIGN KEY (`id_pelicula_id`) REFERENCES `cinealtiro_pelicula` (`id`),
ADD CONSTRAINT `CineAltiro_id_comentario_id_7d7b60b6_fk_CineAltiro_comentario_id` FOREIGN KEY (`id_comentario_id`) REFERENCES `cinealtiro_comentario` (`id`);

--
-- Filtros para la tabla `cinealtiro_pelicula_cines`
--
ALTER TABLE `cinealtiro_pelicula_cines`
ADD CONSTRAINT `CineAltiro_pelicu_pelicula_id_42d01fc1_fk_CineAltiro_pelicula_id` FOREIGN KEY (`pelicula_id`) REFERENCES `cinealtiro_pelicula` (`id`),
ADD CONSTRAINT `CineAltiro_pelicula_cines_cine_id_1f02bdf3_fk_CineAltiro_cine_id` FOREIGN KEY (`cine_id`) REFERENCES `cinealtiro_cine` (`id`);

--
-- Filtros para la tabla `cinealtiro_showtime`
--
ALTER TABLE `cinealtiro_showtime`
ADD CONSTRAINT `CineAltiro_showt_peliculas_id_159ec23d_fk_CineAltiro_pelicula_id` FOREIGN KEY (`peliculas_id`) REFERENCES `cinealtiro_pelicula` (`id`),
ADD CONSTRAINT `CineAltiro_showtime_cines_id_1bf92fad_fk_CineAltiro_cine_id` FOREIGN KEY (`cines_id`) REFERENCES `cinealtiro_cine` (`id`);

--
-- Filtros para la tabla `cinealtiro_showtime_horarios`
--
ALTER TABLE `cinealtiro_showtime_horarios`
ADD CONSTRAINT `CineAltiro_showtim_showtime_id_f3a4f2d_fk_CineAltiro_showtime_id` FOREIGN KEY (`showtime_id`) REFERENCES `cinealtiro_showtime` (`id`),
ADD CONSTRAINT `CineAltiro_showtime_horario_id_10f8c6e4_fk_CineAltiro_horario_id` FOREIGN KEY (`horario_id`) REFERENCES `cinealtiro_horario` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
ADD CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `registration_registrationprofile`
--
ALTER TABLE `registration_registrationprofile`
ADD CONSTRAINT `registration_registrationprofil_user_id_3f7685bb_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
