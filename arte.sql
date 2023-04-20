-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 03:05 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arte`
--

-- --------------------------------------------------------

--
-- Table structure for table `cuidadano`
--

CREATE TABLE `cuidadano` (
  `rut` char(12) NOT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `preferencia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `museos`
--

CREATE TABLE `museos` (
  `idMuseo` int(10) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `superficie` varchar(30) DEFAULT NULL,
  `ciudad` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `museos`
--

INSERT INTO `museos` (`idMuseo`, `nombre`, `pais`, `direccion`, `superficie`, `ciudad`) VALUES
(1, 'Albright-Knox Art Gallery', 'Estados Unidos', NULL, NULL, 'Buffalo'),
(2, 'Alte Pinakothek', 'Alemania', NULL, NULL, 'Múnich'),
(3, 'Capilla Sixtina', 'Ciudad del Vaticano', NULL, NULL, 'Vaticano'),
(4, 'Castillo de Malmaison', 'Francia', NULL, NULL, 'Rueil-Malmaison'),
(5, 'Museo Cerralbo', 'España', NULL, NULL, 'Madrid'),
(6, 'Galería Borghese', 'Italia', NULL, NULL, 'Roma'),
(7, 'Galería Nacional', 'Noruega', NULL, NULL, 'Oslo'),
(8, 'Galería Uffizi', 'Italia', NULL, NULL, 'Florencia'),
(9, 'Instituto de Arte de Chicago', 'Estados Unidos', NULL, NULL, 'Chicago'),
(10, 'Mauritshuis', 'Paises Bajos', NULL, NULL, 'La Haya'),
(11, 'Museo Albertina', 'Austria', NULL, NULL, 'Viena'),
(12, 'Museo de Arte Modermo de Nueva York', 'Estados Unidos', NULL, NULL, 'Nueva York'),
(13, 'Museo nacional de tokio', 'Japon', NULL, NULL, 'Tokio'),
(14, 'Museo de Historia del Arte', 'Austria', NULL, NULL, 'Viena'),
(15, 'Museo de Orsay', 'Francia', NULL, NULL, 'París'),
(16, 'Museo de Santa Cruz', 'España', NULL, NULL, 'Toledo'),
(17, 'Museo del Louvre', 'Francia', NULL, NULL, 'París'),
(18, 'Museo del Prado', 'España', NULL, NULL, 'Madrid'),
(19, 'Museo Dolores Olmedo Patiño', 'México', NULL, NULL, 'Ciudad de México'),
(20, 'Museo Marmottan-Monet', 'Francia', NULL, NULL, 'Paris'),
(21, 'Museo Metropolitano de Arte', 'Estados Unidos', NULL, NULL, 'Nueva York'),
(22, 'Museo Nacional Centro de Arte Reina Sofí', 'España', NULL, NULL, 'Madrid'),
(23, 'Museo Nacional de Arte INBA ', 'México', NULL, NULL, 'Ciudad de México'),
(24, 'Museo Nacional de Cracovia', 'Polonia', NULL, NULL, 'Kraków'),
(25, 'Museo Van Gogh', 'Paises Bajos', NULL, NULL, 'Ámsterdam'),
(26, 'Museo nacional de vellas artes', 'Argentina', NULL, NULL, 'Buenos Aires'),
(27, 'Museo Nacional de Historia Natural', 'Chile', NULL, NULL, 'Santiago'),
(28, 'National Gallery', 'Reino Unido', NULL, NULL, 'Londres'),
(29, 'Santa Maria delle Grazie', 'Italia', NULL, NULL, 'Milán'),
(30, 'Museo Temuco', 'Chile', NULL, NULL, 'Temuco'),
(31, 'Pemuco Museo', 'Brazil', NULL, NULL, 'Pemuco'),
(32, 'Valdivia de los rios', 'Ciudad del Vaticano', NULL, NULL, 'Vaticano'),
(33, 'principe cristobal', 'Francia', NULL, NULL, 'Rueil-Malmaison'),
(34, 'Cerro', 'España', NULL, NULL, 'Madrid'),
(35, 'Galería Montañese', 'Italia', NULL, NULL, 'Roma'),
(36, 'Galería Aji', 'Argentina', NULL, NULL, 'Oslo'),
(37, 'Galería Villarica', 'Italia', NULL, NULL, 'Florencia'),
(38, 'Instituto de Arte de Pedro de Valdivia', 'España', NULL, NULL, 'Alicante'),
(39, 'Feria Pinto', 'Bolivia', NULL, NULL, 'La Haya'),
(40, 'Gato', 'Italia', NULL, NULL, 'Villarica');

-- --------------------------------------------------------

--
-- Table structure for table `obras`
--

CREATE TABLE `obras` (
  `idObra` int(10) NOT NULL,
  `nombre_museo` varchar(30) DEFAULT NULL,
  `autor` varchar(30) DEFAULT NULL,
  `año` int(11) DEFAULT NULL,
  `tipoArte` varchar(10) DEFAULT NULL,
  `ancho` int(11) DEFAULT NULL,
  `tamaño` int(11) DEFAULT NULL,
  `alto` int(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `anioC` int(4) DEFAULT NULL,
  `idMuseo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obras`
--

INSERT INTO `obras` (`idObra`, `nombre_museo`, `autor`, `año`, `tipoArte`, `ancho`, `tamaño`, `alto`, `nombre`, `nacionalidad`, `anioC`, `idMuseo`) VALUES
(1, NULL, 'Leonardo da Vinci', NULL, 'Renacimien', 53, NULL, 77, 'La Gioconda', 'Italiano', 1503, 22),
(2, NULL, 'Diego Velazquez', NULL, 'Barroco', 276, NULL, 318, 'Las Meninas', 'Espanola', 1656, 18),
(3, NULL, 'Vincent van Gogh', NULL, 'Impresioni', 88, NULL, 73, 'La Noche Estrellada', 'Neerlandes', 1889, 12),
(4, NULL, 'Pablo Picasso', NULL, 'Cubismo', 776, NULL, 349, 'Guernica', 'Espanola', 1937, 22),
(5, NULL, 'Leonardo da Vinci', NULL, 'Renacimien', 880, NULL, 460, 'La ultima cena', 'Italiano', 1498, 29),
(6, NULL, 'Miguel Angel', NULL, 'Renacimien', 570, NULL, 280, 'La Creacion de Adan', 'Italiano', 1511, 3),
(7, NULL, 'Salvador Dali', NULL, 'Surrealism', 33, NULL, 24, 'La Persistencia de la Memoria', 'Espanol', 1931, 13),
(8, NULL, 'Edvard Munch', NULL, 'Expresioni', 74, NULL, 91, 'El Grito', 'Noruego', 1893, 7),
(9, NULL, 'Sandro Botticelli', NULL, 'Renacimien', 278, NULL, 172, 'El Nacimiento de Venus', 'Italiano', 1486, 8),
(10, NULL, 'El Bosco', NULL, 'Primitivos', 389, NULL, 220, 'El Jardín de las Delicias', 'Neerlandes', 1505, 18),
(11, NULL, 'Francisco de Goya', NULL, 'Prerromant', 347, NULL, 268, 'Los Fusilamientos del 3 de Mayo de 1808', 'Espanola', 1814, 18),
(12, NULL, 'Eugene Delacroix', NULL, 'Romanticis', 325, NULL, 260, 'La Libertad Guiando al Pueblo', 'Frances', 1830, 17),
(13, NULL, 'Francisco de Goya', NULL, 'Romanticis', 191, NULL, 98, 'Maja Desnuda', 'Espanola', 1800, 18),
(14, NULL, 'Miguel Angel', NULL, 'Renacimien', 1220, NULL, 1370, 'Juicio Final', 'Italiano', 1541, 3),
(15, NULL, 'Rafael Sanzio', NULL, 'Renacimien', 770, NULL, 550, 'La Escuela de Atenas', 'Italiano', 1511, 26),
(16, NULL, 'Vincent van Gogh', NULL, 'Postimpres', 90, NULL, 72, 'El Dormitorio en Arles', 'Neerlandes', 1888, 25),
(17, NULL, 'Diego Velazquez', NULL, 'Barroco', 177, NULL, 122, 'Venus del Espejo', 'Espanola', 1651, 27),
(18, NULL, 'Johannes Vermeer', NULL, 'Barroco', 40, NULL, 46, 'La joven de la perla', 'Neerlandes', 1667, 10),
(19, NULL, 'Claude Monet', NULL, 'Impresioni', 63, NULL, 48, 'Impresion, Sol Naciente', 'Frances', 1872, 20),
(20, NULL, 'Diego Velazquez', NULL, 'Barroco', 293, NULL, 222, 'Las Hilanderas', 'Espanol', 1657, 18),
(21, NULL, 'Bartolomé Esteban Murillo', NULL, 'Barroco', 103, NULL, 145, 'Ninos Comiendo Uvas y Melon', 'Espanola', 1650, 2),
(22, NULL, 'Diego Velazquez', NULL, 'Barroco', 225, NULL, 165, 'El triunfo de Baco', 'Espanol', 1629, 18),
(23, NULL, 'Katsushika Hokusai', NULL, 'Ukiyo-e', 37, NULL, 25, 'La Gran Ola de Kanagawa', 'Japones', 1833, 21),
(24, NULL, 'Pablo Picasso', NULL, 'Cubismo', 233, NULL, 243, 'Las Señoritas de la Calle Avignon', 'Espanol', 1907, 13),
(25, NULL, 'Rembrandt', NULL, 'Barroco', 216, NULL, 169, 'Lección de anatomía del Dr. Nicolaes Tulp', 'Neerlandes', 1632, 10),
(26, NULL, 'El Greco', NULL, 'Manierismo', 175, NULL, 348, 'Inmaculada', 'Griego', 1613, 16),
(27, NULL, 'Bruegel', NULL, 'Primitivos', 154, NULL, 114, 'La Torre de Babel', 'Neerlandes', 1563, 14),
(28, NULL, 'David', NULL, 'Neoclasici', 221, NULL, 260, 'Napoleón Cruzando los Alpes ', 'Frances', 1805, 4),
(29, NULL, 'Magritte', NULL, 'Surrealism', 89, NULL, 116, 'El Hijo del Hombre', 'Belga', 1964, 5),
(30, NULL, 'Botticelli', NULL, 'Renacimien', 314, NULL, 203, 'La Primavera', 'Italiano', 1481, 8),
(31, NULL, 'Kahlo', NULL, 'Autorretra', 31, NULL, 40, 'La Columna Rota', 'Mexicana', 1944, 19),
(32, NULL, 'Wood', NULL, 'Regionalis', 65, NULL, 78, 'American Gothic', 'Estadounidense', 1930, 9),
(33, NULL, 'Leonardo da Vinci', NULL, 'Renacimien', 40, NULL, 55, 'La Dama del Armiño', 'Italiano', 1480, 24),
(34, NULL, 'Fra Angélico', NULL, 'Renacimien', 194, NULL, 194, 'La Anunciación', 'Español', 1450, 18),
(35, NULL, 'Miguel Ángel', NULL, 'Renacimien', 570, NULL, 280, 'Expulsión del Paraíso', 'Italiano', 1512, 3),
(36, NULL, 'Van Eyc', NULL, 'Flamenco', 60, NULL, 82, 'Retrato de Giovanni Arnolfini y su Esposa', 'Belga', 1434, 28),
(37, NULL, 'Durero', NULL, 'Renacimien', 23, NULL, 25, 'Liebre Joven', 'Aleman', 1502, 11),
(38, NULL, 'Miró', NULL, 'Surrealism', 93, NULL, 66, 'El Carnaval del Arlequín', 'Español', 1925, 1),
(39, NULL, 'Cézanne', NULL, 'Posimpresi', 48, NULL, 58, 'Los Jugadores de Cartas', 'Frances', 1890, 15),
(40, NULL, 'Caravaggio', NULL, 'Barroco', 55, NULL, 60, 'Cabeza de Medusa', 'Italiano', 1597, 8),
(41, NULL, 'Rafael', NULL, 'Renacimien', 53, NULL, 67, 'Dama con Unicornio', 'Italiano', 1506, 6),
(42, NULL, 'Gauguin', NULL, '    Postim', 91, NULL, 61, 'Mujeres de Tahíti', 'Frances', 1891, 15),
(43, NULL, 'David', NULL, 'Neoclasici', 420, NULL, 326, 'Juramento de los Horacios ', 'Frances', 1784, 17),
(44, NULL, 'Rivera', NULL, 'Impresioni', 133, NULL, 105, 'La Molendera', 'Mexicano', 1923, 23),
(45, NULL, 'Pacher', NULL, 'Renacimien', 121, NULL, 91, 'San Agustín y el Diablo', 'Alemna', 1483, 2),
(46, NULL, 'Delacroix', NULL, 'Romanticis', 54, NULL, 66, 'Muchacha Sentada en el Cementerio', 'Frances', 1824, 17),
(47, NULL, 'Arcimboldo', NULL, 'Renacimien', 50, NULL, 66, 'Primavera', 'Italiano', 1563, 17),
(48, NULL, 'Caravaggio', NULL, 'Barroco', 52, NULL, 66, 'Baco Enfermo', 'Italiano', 1593, 6),
(49, NULL, 'Massys', NULL, 'Renacimien', 68, NULL, 71, 'El Cambista y su Esposa', 'Italiano', 1514, 17),
(50, NULL, 'Rembrandt', NULL, 'Barroco', 143, NULL, 127, 'Artemisa', 'Neerlandes', 1634, 18),
(51, NULL, 'Bodoque', NULL, 'Modernismo', 75, NULL, 44, 'Pan y vino', 'Peru', 2004, 35),
(52, NULL, 'Kevin Tururero', NULL, 'Frutismo', 3000, NULL, 2316, 'Las Malvinas verdes', 'Bolivia', 2066, 34),
(53, NULL, 'Pablo Picasso', NULL, 'Chakarero', 600, NULL, 500, 'Cazuela con mayo', 'Etiopia', 1999, 35),
(54, NULL, 'Lucas Fierro', NULL, 'Renacimien', 211, NULL, 231, 'Ignacia pebre', 'Peru', 1555, 34),
(55, NULL, 'jose andamios', NULL, 'Dogis', 1, NULL, 122, '33 fideos', 'China', 1893, 35),
(56, NULL, 'Pablo ', NULL, 'Argentina', 44, NULL, 160, 'Lipigaz', 'Noruega', 2006, 36),
(57, NULL, 'lucho luchon', NULL, 'Saranaespi', 21, NULL, 23, 'Saken python', 'Canada', 1623, 37),
(58, NULL, 'Crisian Caseres', NULL, 'Italiano', 74, NULL, 91, 'Feña Araña', 'Italiano', 1532, 38),
(59, NULL, 'Candela Vargas', NULL, 'Renacimien', 278, NULL, 172, 'A Lucho Jara', 'Italiano', 1486, 39),
(60, NULL, 'Leonardo da Vinci', NULL, 'Barroco', 389, NULL, 220, 'Saquen Queso Laminao SQL', 'Espanol', 1505, 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cuidadano`
--
ALTER TABLE `cuidadano`
  ADD PRIMARY KEY (`rut`);

--
-- Indexes for table `museos`
--
ALTER TABLE `museos`
  ADD PRIMARY KEY (`idMuseo`);

--
-- Indexes for table `obras`
--
ALTER TABLE `obras`
  ADD PRIMARY KEY (`idObra`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
