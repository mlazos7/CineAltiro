-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-06-2015 a las 01:03:07
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

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
(22, 'Can add usuario', 8, 'add_usuario'),
(23, 'Can change usuario', 8, 'change_usuario'),
(24, 'Can delete usuario', 8, 'delete_usuario'),
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
(43, 'Can add cine_ pelicula', 15, 'add_cine_pelicula'),
(44, 'Can change cine_ pelicula', 15, 'change_cine_pelicula'),
(45, 'Can delete cine_ pelicula', 15, 'delete_cine_pelicula'),
(46, 'Can add site', 16, 'add_site'),
(47, 'Can change site', 16, 'change_site'),
(48, 'Can delete site', 16, 'delete_site'),
(49, 'Can add registration profile', 17, 'add_registrationprofile'),
(50, 'Can change registration profile', 17, 'change_registrationprofile'),
(51, 'Can delete registration profile', 17, 'delete_registrationprofile');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$20000$61XAD0upWpHY$crPmnyfcK0IelDOOn7IhwKwb+C1/GaLAaM+G8IJVtTk=', '2015-06-17 17:14:10', 1, 'matias', '', '', 'matias.lazos@gmail.com', 1, 1, '2015-06-17 17:13:54');

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
  `id_categoria_id` int(11) NOT NULL,
  `id_usuario_id` int(11) NOT NULL
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
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cinealtiro_cine`
--

INSERT INTO `cinealtiro_cine` (`id`, `nombre`, `direccion`, `link`, `precio`, `imagen`) VALUES
(1, 'Cine Hoyts La Reina', 'Avda Ossa 665', 'http://www.cinehoyts.cl/?mod=reina', '5800', 'imagenes/476369507_1c0216b28e_b.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinealtiro_cine_pelicula`
--

CREATE TABLE IF NOT EXISTS `cinealtiro_cine_pelicula` (
  `id` int(11) NOT NULL,
  `funciones` varchar(100) NOT NULL,
  `id_cine_id` int(11) NOT NULL,
  `id_pelicula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinealtiro_comentario`
--

CREATE TABLE IF NOT EXISTS `cinealtiro_comentario` (
  `id` int(11) NOT NULL,
  `contenido` longtext NOT NULL,
  `fecha_comentario` datetime NOT NULL,
  `id_usuario_id` int(11) NOT NULL
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
-- Estructura de tabla para la tabla `cinealtiro_pelicula`
--

CREATE TABLE IF NOT EXISTS `cinealtiro_pelicula` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `calificacion` int(11) NOT NULL,
  `cantidad_comentarios` int(11) NOT NULL,
  `sinopsis` longtext,
  `detalles` longtext NOT NULL,
  `fecha_publicacion` datetime NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cinealtiro_pelicula`
--

INSERT INTO `cinealtiro_pelicula` (`id`, `titulo`, `calificacion`, `cantidad_comentarios`, `sinopsis`, `detalles`, `fecha_publicacion`, `imagen`, `categoria_id`) VALUES
(1, 'Jurassic World', -1, -1, 'Veintidós años después de los acontecimientos de Jurassic Park (1993), Isla Nubla ahora cuenta con un parque temático de dinosaurios en pleno funcionamiento, Mundo Jurásico, como se había previsto por John Hammond. Después de 10 años de funcionamiento y las tasas de los visitantes en declive, con el fin de cumplir con el mandato corporativo, se crea una nueva atracción para volver a despertar el interés de los visitantes, lo que resulta brutalmente contraproducente.', 'Año: 2015\r\n\r\nDuración: 125\r\n\r\nCalificación: TE7+\r\n\r\nPaís: USA\r\n\r\nElenco:\r\n\r\nChris Pratt, Dallas Howard\r\n\r\nDirector:\r\n\r\nColin Trevorrow', '2015-06-17 17:28:37', 'imagenes/peliculas/Jurassicworld_270x370.jpg', 6),
(2, 'Terremoto', -1, -1, 'Después de que un devastador terremoto golpea California, destruyendo la ciudad y todo a su paso, el piloto del helicóptero de rescate del departamento de bomberos de Los Ángeles (Dwayne Johnson, La Roca) y su ex esposa (Carla Gugino) intentan salir de Los Ángeles para ir a San Francisco a encontrar y rescatar a su hija adolescente, que se encuentra a merced de las fuerzas de la naturaleza. El tiempo apremia, las comunicaciones son nulas, y deben apurarse antes de que un gran tsunami azote la costera ciudad.', 'Año: 2015\r\n\r\nDuración: 114\r\n\r\nCalificación: TE7+\r\n\r\nPaís: USA\r\n\r\nElenco:\r\n\r\nDwayne Johnson, Carla Gugino\r\n\r\nDirector:\r\n\r\nBrad Peyton', '2015-06-18 22:08:58', 'imagenes/peliculas/Tsanandreas_270x370.jpg', 6),
(3, 'Dragon Ball Z', -1, -1, 'Después de que Bills, el Dios de la destrucción, decidiera no destruir la Tierra, se vive una gran época de paz. Hasta que Sorbet y Tagoma, antiguos miembros élite de la armada de Freezer, llegan a la Tierra con el objetivo de revivir a su líder por medio de las Bolas de Dragón. Su deseo es concedido y ahora Freezer planea su venganza en contra de los Saiyajin. La historia hace que una gran oleada de hombres bajo el mando de Freezer lo acompañe.', 'Año: 2015\r\n\r\nDuración: 93\r\n\r\nCalificación: TE\r\n\r\nPaís: Japón\r\n\r\nDirector:\r\n\r\nTadayoshi Yamamuro', '2015-06-18 22:21:45', 'imagenes/peliculas/Dragonballz2_270x370.jpg', 5),
(4, 'El Bosque de Karadima', -1, -1, 'Fernando Karadima, párroco y líder de la Iglesia más poderosa de la clase alta chilena, entre los años 80 y los 2000, es considerado un “Santo” en vida. Thomas, un adolescente en busca de su vocación, encontrará en el sacerdote a su Director Espiritual. Durante 20 años, Thomy vivirá paulatinamente en carne propia los abusos físicos y sicológicos por parte del cura, hasta decidir hablar y enfrentar las redes de poder que protegen al cura y desenmascarar definitivamente al verdadero Karadima bajo la envestidura de representante de Dios en la Tierra.', 'Año: 2015\r\n\r\nDuración: 96\r\n\r\nCalificación: 14\r\n\r\nPaís: Chile\r\n\r\nElenco:\r\n\r\nLuis Gnecco, Benjamín Vicuña\r\n\r\nDirector:\r\n\r\nMatías Lira', '2015-06-19 16:59:40', 'imagenes/peliculas/karadimaoficial_270x370.jpg', 3),
(5, 'Mad Max', -1, -1, 'Del director George Miller, fundador del género post apocalíptico y la mente maestra detrás de la legendaria franquicia de “Mad Max”, llega “Mad Max: Furia en el Camino”, un regreso al mundo del Guerrero del Camino. Así, Max Rockatansky, acosado por su pasado, buscará una nueva forma de sobrevivencia uniéndose a la emperatriz Furiosa, en un mundo que colapsa a cada segundo y está lleno de locura y desazón. Con las actuaciones de la ganadora del Oscar, Charlize Theron (Monster), Tom Hardy (El Origen) y a Nicholas Hoult (X-Men: días del futuro pasado)', 'Año: 2015\r\n\r\nDuración: 120\r\n\r\nCalificación: 14\r\n\r\nPaís: USA\r\n\r\nElenco:\r\n\r\nCharlize Theron, Tom Hardy\r\n\r\nDirector:\r\n\r\nGeorge Miller', '2015-06-19 17:02:56', 'imagenes/peliculas/Madmax_270x370.jpg', 4),
(6, 'Avengers', -1, -1, 'Marvel Studios presenta AVENGERS: ERA DE ULTRÓN, la épica secuela de la película de Súper Héroes más extraordinaria de todos los tiempos. Cuando Tony Stark intenta reiniciar un programa inactivo para mantener la paz, las cosas salen mal y los héroes más poderosos de la Tierra, incluidos Iron Man, Capitán América, Thor, Hulk, Black Widow y Hawkeye son puestos a prueba mientras el destino del planeta pende de un hilo. Cuando el villano Ultrón emerge, dependerá de Los Vengadores impedir que lleve a cabo sus terribles planes y pronto, incómodas alianzas y acciones inesperadas darán lugar a una aventura épica, global y única. AVENGERS: ERA DE ULTRÓN, de Marvel, es protagonizada por Robert Downey Jr., quien regresa como Iron Man; Chris Evans, como Capitán América; Chris Hemsworth, como Thor y Mark Ruffalo, como Hulk. Junto con Scarlett Johansson en su papel de Black Widow y Jeremy Renner como Hawkeye, y con la ayuda de Samuel L. Jackson como Nick Fury y Cobie Smulders como la agente Maria Hill. El equipo debe reunirse nuevamente para derrotar a James Spader en su papel de Ultrón: un temible villano tecnológico empecinado en extinguir la raza humana. En el camino se enfrentan a dos misteriosos y poderosos recién llegados: Wanda Maximoff, interpretada por Elizabeth Olsen, y Pietro Maximoff, interpretado por Aaron Taylor-Johnson, y se reencuentran con un viejo amigo bajo una nueva forma cuando Paul Bettany se convierte en Visión. Escrita y dirigida por Joss Whedon y producida por Kevin Feige, AVENGERS: ERA DE ULTRÓN,de Marvel, está basada en la popular saga de libros de historietas de Marvel: Los Vengadores, publicada por primera vez en 1963. Prepárate para vivir una emocionante experiencia repleta de acción cuando Los Vengadores regresen en AVENGERS: ERA DE ULTRÓN a partir del 30 de abril de 2015.', 'Año: 2015\r\n\r\nDuración: 145\r\n\r\nCalificación: TE7+\r\n\r\nPaís: USA\r\n\r\nElenco:\r\n\r\nChris Evans, Robert Downey Jr.\r\n\r\nDirector:\r\n\r\nJoss Whedon', '2015-06-19 17:04:56', 'imagenes/peliculas/Avengers_270x370.jpg', 4),
(7, 'Desastres naturales', -1, -1, 'Raquel, una profesora que se niega a la idea de jubilar, vuelve un día a hacer clases a su antiguo colegio, encontrándose con que la han remplazado por alguien mucho más joven. Pero insiste en hacer clases y con el apoyo de sus ex alumnos, se toma la sala exigiendo que sea reintegrada, desatando una pequeña revolución que amenaza la estabilidad del establecimiento.', 'Año: 2014\r\n\r\nDuración: 75\r\n\r\nCalificación: 14\r\n\r\nPaís: Chile\r\n\r\nElenco:\r\n\r\nCatalina Saavedra, Anita Reeves\r\n\r\nDirector:\r\n\r\nBernardo Quesney', '2015-06-19 17:21:00', 'imagenes/peliculas/Desastrenatu_270x370.jpg', 2),
(8, 'Spy', -1, -1, 'Melissa McCarthy, la nueva musa de la comedia internacional, protagoniza la cinta interpretando a Susan Cooper una analista del CIA que pasa todo el día detrás de su escritorio, soñando con tener más acción en su vida. Rodeada de la vida excéntrica y apasionante de los espías, pero siempre tras bambalinas, en segundo plano. Hasta que, sin saberlo, la vida le da una oportunidad de ir al rescate de Fine, un guapo súper espía, por el que deberá luchar contra mafiosos, malhechores, y el hampa internacional, probando que es una espía de cuidado. Con las actuaciones de Jude Law, Jason Statham y Rose Byrne.', 'Año: 2015\r\n\r\nDuración: 120\r\n\r\nCalificación: TE7+\r\n\r\nPaís: USA\r\n\r\nElenco:\r\n\r\nMelissa McCarthy, Rose Byrne\r\n\r\nDirector:\r\n\r\nPaul Feig', '2015-06-19 17:25:39', 'imagenes/peliculas/Spyespia_270x370_1.jpg', 4),
(9, 'INTENSAMENTE', -1, -1, 'Desde una aventura en globo encima de las nubes hasta una metrópolis llena de monstruos, el director ganador del Oscar Pete Docter (MONSTERS, INC., UP: UNA AVENTURA DE ALTURA) ha llevado al público a lugares únicos y llenos de imaginación. En la película original de Disney•Pixar INTENSA-MENTE, nos llevará a la más extraordinaria locación de todas: el interior de la mente. El camino a la adultez puede estar lleno de baches y el de Riley no es la excepción, ella es desarraigada de su ciudad natal cuando su padre comienza un nuevo trabajo en San Francisco. Como todos nosotros, Riley está guiada por sus emociones – Joy (alegría) voz en inglés Amy Poehler, Fear (temor) voz en inglés Bill Hader, Anger (furia) voz en inglés Lewis Negro, Disgust (desagrado) voz en inglés Mindy Kaling y Sadness (tristeza) voz en inglés de Phyllis Smith. Las emociones viven en el Cuartel General, el centro de control de la mente de Riley, desde donde la asesoran en su vida cotidiana. Mientras Riley y sus emociones se esfuerzan por adaptarse a una nueva vida en San Francisco, la confusión y la ansiedad se apoderan del Cuartel General. Aunque Joy (alegría), la emoción principal y más importante de Riley, trata de mantener las cosas positivas, las emociones entran en conflicto sobre cuál es la mejor manera de navegar por una nueva ciudad, casa y escuela.', 'Año: 2015\r\n\r\nDuración: 94\r\n\r\nCalificación: TE\r\n\r\nPaís: USA\r\n\r\nDirector:\r\n\r\nPete Docter', '2015-06-19 17:27:13', 'imagenes/peliculas/Intensamente_270x370.jpg', 5),
(10, 'Tomorrowland', -1, -1, 'De Disney llega la fascinante aventura de misterio del ganador de dos premios Oscar Brad Bird: TOMORROWLAND, protagonizada por, también ganador de un premio de la Academia, George Clooney. Unidos por un mismo destino, Frank (George Clooney) quien fuera un niño prodigio, ahora hastiado de tantas desilusiones y Casey (Britt Robertson) una brillante y optimista adolescente llena de curiosidad científica se embarcan en una peligrosa misión para develar los secretos de un enigmático lugar perdido en algún punto del tiempo y el espacio conocido como TOMORROWLAND. Y su misión allí cambiará al mundo y a ellos para siempre.', 'Año: 2015\r\n\r\nDuración: 130\r\n\r\nCalificación: TE\r\n\r\nPaís: USA\r\n\r\nElenco:\r\n\r\nGeorge Clooney, Britt Robertson\r\n\r\nDirector:\r\n\r\nBrad Bird', '2015-06-19 17:29:03', 'imagenes/peliculas/Tomorrowland_270x370.jpg', 6),
(11, 'EL SEPTIMO ENANITO', -1, -1, 'El séptimo enano Bubi viaja hacia el futuro con sus compañeros enanos para detener una maldición provocada por una reina de hielo mal.', 'Año: 2014\r\n\r\nDuración: 87\r\n\r\nCalificación: TE\r\n\r\nPaís: Alemania\r\n\r\nDirector:\r\n\r\nBoris Aljinovic', '2015-06-19 17:30:41', 'imagenes/peliculas/The7thdwarf_270x370.jpg', 5),
(12, 'La Once', -1, -1, 'Cinco mujeres ya ancianas se juntan a tomar el té, sagradamente, una vez al mes desde hace sesenta años. En estas reuniones se encuentran y desencuentran, evocan el pasado común y se esfuerzan en demostrar que aún están vigentes, olvidando por un momento los males que padecen. Mientras comen, interpretan la actualidad, pese a no entender algunas tendencias las comentan con autoridad y se las tratan de explicar entre ellas. En instancias de discrepancias son las historias personales las que salen a relucir y marcan las diferencias de opinión. Aunque tuvieron una formación común en un colegio religioso, les tocó vivir un período de cambios históricos radicales que provocaron polarizaciones al interior grupo. Así, pese a tener biografías y personalidades muy distintas a la larga logran comprenderse, complementarse y acompañarse. Pasan las tardes, días, meses y años, hasta que se preguntan: ¿Han notado que el grupo se ha mermado un poquito?', 'Año: 2014\r\n\r\nDuración: 70\r\n\r\nCalificación: TE7+\r\n\r\nPaís: Chile\r\n\r\nElenco:\r\n\r\nMaría Teresa Muñoz, Ximena Calderón\r\n\r\nDirector:\r\n\r\nMaite Alberdi', '2015-06-19 17:32:54', 'imagenes/peliculas/Laonce_270x370.jpg', 2),
(13, 'Resusitados', -1, -1, 'Un equipo de médicos ambiciosos encontraron una manera de traer a los pacientes muertos a la vida, mediante un suero llamado “Lázaro”. Después de varias pruebas exitosas en animales, Zoe (Olivia Wilde), uno de los principales investigadores, muere en un accidente de laboratorio. En su desesperación, el equipo utiliza el suero “Lázaro” para traerla a la vida. Todo resulta tal cual lo planeado, pero a medida que Zoe empieza a mostrar habilidades inusuales, el equipo comienza a darse cuenta de que en su intento de resucitar a los muertos, ellos abrieron la puerta al mal.', 'Año: 2015\r\n\r\nDuración: 83\r\n\r\nCalificación: 14\r\n\r\nPaís: USA\r\n\r\nElenco:\r\n\r\nOlivia Wilde, Evan Peters\r\n\r\nDirector:\r\n\r\nDavid Gelb', '2015-06-19 17:44:54', 'imagenes/peliculas/Lazarus_270x370.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinealtiro_usuario`
--

CREATE TABLE IF NOT EXISTS `cinealtiro_usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `nick` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

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
(42, '2015-06-19 17:48:15', '1', 'Jurassic World', 2, 'Changed imagen.', 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

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
(15, 'CineAltiro', 'cine_pelicula'),
(12, 'CineAltiro', 'comentario'),
(13, 'CineAltiro', 'comentario_pelicula'),
(10, 'CineAltiro', 'pelicula'),
(8, 'CineAltiro', 'usuario'),
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

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
(18, 'CineAltiro', '0004_auto_20150619_1707', '2015-06-19 17:08:05');

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
('dv39pvxp1zz32mkm12fw0dfakcga1ke1', 'NWJmMzM1MjI4NjJjMTNiODIzNTkzYzgxYTE3ZGE5ZWM3Y2EzYWIyMjp7Il9hdXRoX3VzZXJfaGFzaCI6IjE0NWNhZTdmMzdjZGMzMDE5OTQwZjZhMGUzYWNjYjhiZmEyOGQ0MTUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-07-01 17:14:10');

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
  ADD PRIMARY KEY (`id`), ADD KEY `CineAltiro_c_id_categoria_id_7d36b634_fk_CineAltiro_categoria_id` (`id_categoria_id`), ADD KEY `CineAltiro_categoria_usuario_76a74f43` (`id_usuario_id`);

--
-- Indices de la tabla `cinealtiro_cine`
--
ALTER TABLE `cinealtiro_cine`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cinealtiro_cine_pelicula`
--
ALTER TABLE `cinealtiro_cine_pelicula`
  ADD PRIMARY KEY (`id`), ADD KEY `CineAltiro_cine_pelicu_id_cine_id_5e3e9906_fk_CineAltiro_cine_id` (`id_cine_id`), ADD KEY `CineAltiro_cine_pelicula_49ef5164` (`id_pelicula_id`);

--
-- Indices de la tabla `cinealtiro_comentario`
--
ALTER TABLE `cinealtiro_comentario`
  ADD PRIMARY KEY (`id`), ADD KEY `CineAltiro_comentario_76a74f43` (`id_usuario_id`);

--
-- Indices de la tabla `cinealtiro_comentario_pelicula`
--
ALTER TABLE `cinealtiro_comentario_pelicula`
  ADD PRIMARY KEY (`id`), ADD KEY `CineAltiro_id_comentario_id_7d7b60b6_fk_CineAltiro_comentario_id` (`id_comentario_id`), ADD KEY `CineAltiro_comentario_pelicula_49ef5164` (`id_pelicula_id`);

--
-- Indices de la tabla `cinealtiro_pelicula`
--
ALTER TABLE `cinealtiro_pelicula`
  ADD PRIMARY KEY (`id`), ADD KEY `CineAltiro_pelicula_daf3833b` (`categoria_id`);

--
-- Indices de la tabla `cinealtiro_usuario`
--
ALTER TABLE `cinealtiro_usuario`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `cinealtiro_cine_pelicula`
--
ALTER TABLE `cinealtiro_cine_pelicula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT de la tabla `cinealtiro_pelicula`
--
ALTER TABLE `cinealtiro_pelicula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `cinealtiro_usuario`
--
ALTER TABLE `cinealtiro_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
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
ADD CONSTRAINT `CineAltiro_c_id_categoria_id_7d36b634_fk_CineAltiro_categoria_id` FOREIGN KEY (`id_categoria_id`) REFERENCES `cinealtiro_categoria` (`id`),
ADD CONSTRAINT `CineAltiro_catego_id_usuario_id_60457b7_fk_CineAltiro_usuario_id` FOREIGN KEY (`id_usuario_id`) REFERENCES `cinealtiro_usuario` (`id`);

--
-- Filtros para la tabla `cinealtiro_cine_pelicula`
--
ALTER TABLE `cinealtiro_cine_pelicula`
ADD CONSTRAINT `CineAltiro_cin_id_pelicula_id_1fbcb278_fk_CineAltiro_pelicula_id` FOREIGN KEY (`id_pelicula_id`) REFERENCES `cinealtiro_pelicula` (`id`),
ADD CONSTRAINT `CineAltiro_cine_pelicu_id_cine_id_5e3e9906_fk_CineAltiro_cine_id` FOREIGN KEY (`id_cine_id`) REFERENCES `cinealtiro_cine` (`id`);

--
-- Filtros para la tabla `cinealtiro_comentario`
--
ALTER TABLE `cinealtiro_comentario`
ADD CONSTRAINT `CineAltiro_comen_id_usuario_id_38b87ce3_fk_CineAltiro_usuario_id` FOREIGN KEY (`id_usuario_id`) REFERENCES `cinealtiro_usuario` (`id`);

--
-- Filtros para la tabla `cinealtiro_comentario_pelicula`
--
ALTER TABLE `cinealtiro_comentario_pelicula`
ADD CONSTRAINT `CineAltiro_com_id_pelicula_id_4948ebd6_fk_CineAltiro_pelicula_id` FOREIGN KEY (`id_pelicula_id`) REFERENCES `cinealtiro_pelicula` (`id`),
ADD CONSTRAINT `CineAltiro_id_comentario_id_7d7b60b6_fk_CineAltiro_comentario_id` FOREIGN KEY (`id_comentario_id`) REFERENCES `cinealtiro_comentario` (`id`);

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
