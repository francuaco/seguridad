-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2016 a las 05:25:38
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `di`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aldea`
--

CREATE TABLE IF NOT EXISTS `aldea` (
  `al_codigo` int(11) NOT NULL,
  `al_municipio` int(11) NOT NULL,
  `al_descripcion` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arma_lote`
--

CREATE TABLE IF NOT EXISTS `arma_lote` (
  `lot_tipo` int(11) NOT NULL,
  `lot_codigo` int(11) NOT NULL,
  `lot_marca` varchar(32) NOT NULL,
  `lot_modelo` varchar(32) NOT NULL,
  `lot_calibre` varchar(32) NOT NULL,
  `lot_lote` varchar(32) NOT NULL,
  `lot_pais` int(11) NOT NULL,
  `lot_descripcion` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `arma_lote`
--

INSERT INTO `arma_lote` (`lot_tipo`, `lot_codigo`, `lot_marca`, `lot_modelo`, `lot_calibre`, `lot_lote`, `lot_pais`, `lot_descripcion`) VALUES
(0, 0, 'MARCA', 'MODELO  ', 'CALIBRE', 'LOTE', 0, 'DESCRIPCIÓN'),
(1, 1, 'BROWNING', 'S-M', '0.3', 'S-L', 51, 'AMET. .30" BROWNING'),
(1, 2, 'BROWNING', 'M2-D', '0.3', 'S-L', 51, 'AMET. .30" M-2 BROWNING D'),
(1, 3, 'BROWNING', 'M37', '0.3', 'S-L', 51, 'AMET. .30" M-37'),
(1, 4, 'BROWNING', 'M1919A4', '0.3', 'S-L', 51, 'AMET. .30" M1919A4'),
(1, 5, 'BROWNING', 'M1919A4 E1 M-3', '0.3', 'S-L', 51, 'AMET. .30" M1919A4 E1 M-3'),
(1, 6, 'BROWNING', 'M1919A5', '0.3', 'S-L', 51, 'AMET. .30" M1919A5'),
(1, 7, 'BROWNING', 'M1919A6', '0.3', 'S-L', 51, 'AMET. .30" M1919A6'),
(1, 8, 'BROWNING', 'MG-38BT', '0.3', 'S-L', 51, 'AMET. .30" MG-38BT'),
(1, 9, 'BROWNING', 'S-M', '0.5', 'S-L', 51, 'AMET. .50"'),
(1, 10, 'BROWNING', 'AEREA', '0.5', 'S-L', 51, 'AMET. .50" AEREA'),
(1, 11, 'BROWNING', 'M2-HB ANTIAEREA', '0.5', 'S-L', 51, 'AMET. .50" M-2 HB ANTIAER'),
(1, 12, 'BROWNING', 'M2 AVION', '0.5', 'S-L', 51, 'AMET. .50" M-2 P/AVION'),
(1, 13, 'BROWNING', 'M3', '0.5', 'S-L', 51, 'AMET. .50" M-3'),
(1, 14, 'BROWNING', 'M2 TERRESTRE', '0.5', 'S-L', 51, 'AMET. .50" M2 TERREST'),
(1, 15, 'MK-II', 'MK-II', '20 MM', 'S-L', 51, 'AMET. 20MM MK-II'),
(1, 16, 'NATON', 'S-M', '20 MM', 'S-L', 32, 'AMET. 20MM NATON'),
(1, 17, 'OERLIKON', 'S-M', '20 MM', 'S-L', 51, 'AMET. 20MM OERLIKON'),
(1, 18, 'COLT', 'COAXIAL', '7.62 MM', 'S-L', 51, 'AMET. 7.62MM COAXIAL'),
(1, 19, 'COLT', 'M60', '7.62 MM', 'S-L', 51, 'AMET. 7.62MM M60'),
(1, 20, 'COLT', 'M60-D HL', '7.62 MM', 'S-L', 51, 'AMET. 7.62MM M60D EN HL'),
(1, 21, 'MAG', 'S-M', '7.62 MM', 'S-L', 32, 'AMET. 7.62MM MAG'),
(1, 22, 'MAG', 'EN HL', '7.62 MM', 'S-L', 32, 'AMET. 7.62MM MAG EN HL'),
(1, 23, 'MINI-GUN', 'GAU2/BA', '7.62 MM', 'S-L', 51, 'AMET. 7.62MM MINI-GUN GAU'),
(1, 24, 'MG', 'S-M', '7.62', 'S-L', 49, 'AMET. 7.92MM. MG ALEMANA.'),
(1, 25, 'KALASHNIKOV', 'PKM', '7.62MM', 'S-L', 285, 'AMET. 7.62MM PKM KALASHNIKOV'),
(1, 26, 'HOTCHKISS', 'M1914', '7 MM', 'S-L', 33, 'AMET. 7 MM M1914 HOTCHKISS'),
(1, 27, 'DRS', 'MADSEN', '7 MM', 'S-L', 45, 'AMET. 7 MM MADSEN DRS'),
(1, 28, 'MAUSER', 'MG-34', '8 MM MAUSE', 'S-L', 49, 'AMET. 8 MM MAUSER MG-34 MAUSER'),
(1, 29, 'NEGEV', 'S/M', '5.56MM', 'S-L', 972, 'AMET. 5.56MM S/M NEGEV'),
(1, 30, 'BROWNING', 'QCB', '0.5', 'S-L', 51, 'AMET. .50 QCB BROWNING'),
(1, 31, 'LEWIS', 'M1917', '.30-06', 'S-L', 51, 'AMET. .30-06 M1917 LEWIS'),
(1, 32, 'S-M', 'PVKM', '20MM', 'S-L', 46, 'AMET. 20MM PVKM S-M'),
(1, 33, 'KALASHMIKOV', 'RPK', '7.62MM', 'S-L', 285, 'AMET. 7.62MM RPK KALASHMIKOV'),
(1, 34, 'PVKAM', 'S/M', '20MM', 'S/L', 0, 'AMET. 20MM S/M PVKAM'),
(1, 35, 'HISPANO SUIZA', 'S/M', '20MM', 'S/L', 0, 'AMET. 20MM S/M HISPANO SUIZA'),
(1, 36, 'PROTOTIPO BROWNING', 'M1917A1', '0.3', 'S/L', 0, 'AMET. .30 M1917A1 PROTOTIPO BR'),
(1, 37, 'PROTOTIPO', 'S-M', 'S/C', 'S/L', 0, 'AMET. S/C S-M PROTOTIPO'),
(2, 1, 'S-M', 'S-M', '37 MM', 'S-L', 49, 'CAÑON 37 MM S-M S-M'),
(2, 2, 'M-16', 'S-M', '37 MM', 'S-L', 51, 'CAÑON 37MM M-16'),
(2, 3, 'ECIA', 'PARA MORTERO', '120 MM', 'S/L', 0, 'CAÑON 120 MM PARA MORTERO ECIA'),
(2, 79, 'RHEINMETAL', 'S-M', '81 MM', 'S-L', 49, 'CAÑON 81 MM RHEINMETAL S-M'),
(2, 80, 'HOTCHKISS', 'S-M', '142 MM', 'S-L', 33, 'CAÑON 142 MM HOTCHKISS S-M'),
(2, 81, 'HOTCHKISS FRANCES', 'S-M', '142 MM', 'S-L', 33, 'CAÑON 142 MM HOTCHKISS FRANCES S-M'),
(3, 1, 'S-M', 'ERMA', '0.22', 'S-L', 0, 'CARABINA .22 ERMA S-M'),
(3, 2, 'BROWNING', 'M1', '0.3', 'S-L', 51, 'CARABINA .30" M-1 AMERICA'),
(3, 3, 'BROWNING', 'M2', '0.3', 'S-L', 51, 'CARABINA .30" M-2 AMERICA'),
(3, 4, 'BROWNING', 'UNIVERSAL', '0.3', 'S-L', 51, 'CARABINA .30" UNIVERSAL'),
(3, 5, 'S-M', 'DE VIENTO', '5.5', 'S-L', 0, 'CARABINA 5.5 DE VIENTO DI'),
(3, 6, 'COLT', 'AR-15', '5.56', 'S-L', 51, 'CARABINA 5.56 COLT AR-15 M16A1'),
(3, 7, 'WINCHESTER', 'M1', '0.3', 'S-L', 51, 'CARABINA .30" M-1 AMERICA'),
(4, 1, 'S-M', 'ISRAELI', 'S-C', 'S-L', 972, 'DISPERSADOR DE GAS IRAELI'),
(5, 1, 'S-M', 'S-M', '12', 'S-L', 0, 'ESCOPETA 12'),
(5, 2, 'REMINGTON', 'S-M', '12', 'S-L', 51, 'ESCOPETA 12 REMINGTON'),
(5, 3, 'SAVAGE', 'S-M', '12', 'S-L', 51, 'ESCOPETA 12 SAVAGE'),
(5, 4, 'SQUIRES', 'BINGH', '12', 'S-L', 51, 'ESCOPETA 12 SQUIRES BINGH'),
(5, 5, 'SAVAGE', 'STEVENS', '12', 'S-L', 51, 'ESCOPETA 12 STEVENS SAVAG'),
(5, 6, 'S-M', 'TEM', '12', 'S-L', 0, 'ESCOPETA 12 TEM'),
(5, 7, 'WINCHESTER', 'S-M', '12', 'S-L', 51, 'ESCOPETA 12 WINCHESTER'),
(5, 8, 'WINCHESTER', '12', '12', 'S-L', 51, 'ESCOPETA 12 WINCHESTER 12'),
(5, 9, 'WINCHESTER', 'M-1200', '12', 'S-L', 51, 'ESCOPETA 12 WINCHESTER M-'),
(5, 10, 'S-M', 'S-M', '16', 'S-L', 0, 'ESCOPETA CAL. 16'),
(5, 11, 'S-M', 'S-M', '20', 'S-L', 0, 'ESCOPETA CAL. 20'),
(5, 12, 'S-M', 'FP-31', '12', 'S-L', 0, 'ESCOPETA FP-31'),
(5, 13, 'S-M', '870', '12', '0', 0, 'ESCOPETA  UPM5 CAL. .12GA'),
(5, 14, 'S-M', 'UPM5', '12', '0', 0, 'ESCOPETA VALTRO 12GA'),
(5, 15, 'VALTRO', 'PM (SIN CULATA)', '12', 'S-L', 0, 'ESCOPETA 12 PM (SIN CULATA) VA'),
(5, 16, 'VALTRO', 'PM5 (CON CULATA)', '12', 'S-L', 0, 'ESCOPETA 12 PM5 (CON CULATA) V'),
(5, 17, 'MOSSBERG', 'S/M', '12', 'S-L', 0, 'ESCOPETA 12 S/M MOSSBERG'),
(5, 18, 'REMINGTON', '870 MAGNUM', '12', 'S-L', 0, 'ESCOPETA 12 870 MAGNUM REMINGT'),
(5, 19, 'WINCHESTER', 'M1300', '12', 'S-L', 51, 'ESCOPETA 12 M1300 WINCHESTER'),
(5, 20, 'S/M', 'S/M', '0.45', 'S/L', 0, 'ESCOPETA .45 S/M S/M'),
(5, 21, 'NEW HAVEN', 'S/M', '12MM', 'S/L', 0, 'ESCOPETA 12MM S/M NEW HAVEN'),
(5, 22, 'STEVENS', 'S/M', '12 MM', 'S-L', 51, 'ESCOPETA 12 MM S/M STEVENS'),
(5, 23, 'BLANC', 'S/M', '45-70', 'S-L', 0, 'ESCOPETA 45-70 S/M BLANC'),
(5, 24, 'WINCHESTER', '1200', '12 MM', 'S-L', 51, 'ESCOPETA 12 MM 1200 WINCHESTER'),
(5, 25, 'BENELLI ARMI', 'S/M', '12 MM', 'S-L', 39, 'ESCOPETA 12 MM S/M BENELLI ARM'),
(6, 1, 'BRNO', 'FOX', '0.222', 'S-L', 0, 'FUSIL .222 FOX BRNO'),
(6, 2, 'RUGER', 'MINI', '0.223', 'S-L', 49, 'FUSIL .223 RUGERMINI'),
(6, 3, 'BROWNING', 'M1', '0.3', 'S-L', 51, 'FUSIL .30" M-1'),
(6, 4, 'BROWNING', 'M1-C SNIPPER', '0.3', 'S-L', 51, 'FUSIL .30" M1C SNIPPER'),
(6, 5, 'BROWNING', 'M1-C SNIPPER C/MT', '0.3', 'S-L', 51, 'FUSIL .30" M1C SNIPPER S/'),
(6, 6, 'BROWNING', 'M1-D', '0.3', 'S-L', 51, 'FUSIL .30" M1D'),
(6, 7, 'COLT', 'AR-15', '5.56 MM', 'S-L', 51, 'FUSIL 5.56MM AR-15 COLT'),
(6, 8, 'GALIL', 'AR', '5.56 MM', 'S-L', 972, 'FUSIL 5.56MM GALIL AR'),
(6, 9, 'GALIL', 'ARM', '5.56 MM', 'S-L', 972, 'FUSIL 5.56MM GALIL ARM'),
(6, 10, 'GALIL', 'KEL', '5.56', 'KEL', 972, 'FUSIL 5.56 KEL GALIL'),
(6, 11, 'GALIL', 'SAR', '5.56', 'S-L', 972, 'FUSIL 5.56MM GALIL SAR'),
(6, 12, 'KALASHNIKOV', 'AK-47', '7.62 MM', 'S-L', 285, 'FUSIL 7.62MM. AK-47'),
(6, 13, 'CETME', 'S-M', '7.62 MM', 'S-L', 34, 'FUSIL 7.62MM. CETME ESPA&'),
(6, 14, 'S-M', 'FAL', '7.62 MM', 'S-L', 32, 'FUSIL 7.62MM. FAL'),
(6, 15, 'S-M', 'G-3', '7.62 MM', 'S-L', 49, 'FUSIL 7.62MM. G-3'),
(6, 16, 'HECKLER UND KOCH', 'HK-13', '7.62 MM', 'S-L', 49, 'FUSIL 7.62 MM HK-13 HECKLER UN'),
(6, 17, 'HECKLER UND KOCH', 'HK-21', '7.62 MM', 'S-L', 49, 'FUSIL 7.62 MM HK-21 HECKLER UN'),
(6, 18, 'HECKLER UND KOCH', 'HK-53', '7.62 MM', 'S-L', 49, 'FUSIL 7.62 MM HK-53 HECKLER UN'),
(6, 19, 'BROWNING', 'M14', '7.62 MM', 'S-L', 51, 'FUSIL 7.62MM. M-14'),
(6, 20, 'COLT', 'M16-A1', '7.62 MM', 'S-L', 51, 'FUSIL 7.62MM. M-16A1'),
(6, 21, 'MAUSSER', 'S-M', '7.62 MM', 'S-L', 49, 'FUSIL 7.62MM. MAUSSER ALE'),
(6, 22, 'MAUSSER', 'S-M', '7.62 MM', 'S-L', 34, 'FUSIL 7.62MM. MAUSSER ESP'),
(6, 23, 'NATO', 'GRUNNING', '7.62 MM', 'S-L', 32, 'FUSIL 7.62MM. NATO GRUNIN'),
(6, 24, 'SNIPPER', 'S-M', '7.62 MM', 'S-L', 51, 'FUSIL 7.62MM. SNIPPER'),
(6, 25, 'MAUSSER', 'S-M', '7.92 MM', 'S-L', 34, 'FUSIL 7.92MM. MAUSSER ESP'),
(6, 26, 'MAUSSER', 'M98', '7.92 MM', 'S-L', 49, 'FUSIL 7.92MM. MAUSSER M98'),
(6, 27, 'MAUSSER', 'S-M', '7 MM', 'S-L', 49, 'FUSIL 7MM. MAUSSER ALEMAN'),
(6, 28, 'MAUSSER', 'S-M', '7 MM', 'S-L', 73, 'FUSIL 7MM. MAUSSER CHECO'),
(6, 29, 'MAUSSER', 'S-M', '7 MM', 'S-L', 34, 'FUSIL 7MM. MAUSSER ESPA&O'),
(6, 30, 'REMINGTON', 'S-M', '7 MM', 'S-L', 51, 'FUSIL 7MM. REMINGTON'),
(6, 31, 'REYNA BARRIOS', 'S-M', '7 MM', 'S-L', 502, 'FUSIL 7MM. REYNA BARRIOS'),
(6, 32, 'BROWNING', 'BAR', '0.3', 'S-L', 51, 'FUSIL AMET. .30'' BROWNING'),
(6, 33, 'S-M', 'FAP', '7.62 MM', 'S-L', 32, 'FUSIL FAP DE CEREO CAL. 7'),
(6, 34, 'COLT', 'M16', '5.56 MM', 'S-L', 51, 'FUSIL M16 5.56MM'),
(6, 35, 'COLT', 'M16A1', '5.56 MM', 'S-L', 51, 'FUSIL M16A1 5.56MM.'),
(6, 36, 'COLT', 'M16A2 701', '5.56 MM', 'S-L', 51, 'FUSIL M16A2 MOD. 701'),
(6, 37, 'COLT', 'M16A2 701 C/B', '5.56 MM', 'S-L', 51, 'FUSIL M16A2 MOD. 701 C/BI'),
(6, 38, 'COLT', 'M16A2 705', '5.56 MM', 'S-L', 51, 'FUSIL M16A2 MOD. 705'),
(6, 39, 'COLT', 'M16A2 705 C/LG', '5.56 MM', 'S-L', 51, 'FUSIL M16A2 MOD. 705 C/LG'),
(6, 40, 'COLT', 'M16A2 705 C/MT', '5.56 MM', 'S-L', 51, 'FUSIL M16A2 MOD. 705 C/MT'),
(6, 41, 'COLT', 'M16A2 723', '5.56 MM', 'S-L', 51, 'FUSIL M16A2 MOD. 723'),
(6, 42, 'COLT', 'M16A2 733', '5.56 MM', 'S-L', 51, 'FUSIL M16A2 MOD. 733'),
(6, 43, 'COLT', 'MINI 14', '5.56 MM', 'S-L', 51, 'FUSIL MINI 14'),
(6, 44, 'GALIL', 'MINI', '5.56 MM', '0', 0, 'MINI FUSIL GALIL 5.56MM'),
(6, 45, 'GALIL', 'MICRO', '5.56 MM', '0', 0, 'MICRO GALIL 5.56MM'),
(6, 46, 'REPOTENCIADO 2005', 'AR', '5.56MM', 'IMI', 0, 'FUSIL 5.56MM AR REPOTENCIADO 2'),
(6, 47, 'TAVOR', 'CTAR', '5.56 MM', 'S-L', 972, 'FUSIL 5.56 MM CTAR TAVOR'),
(6, 48, 'TAVOR', 'GTAR', '5.56MM', 'S-L', 972, 'FUSIL 5.56MM GTAR TAVOR'),
(6, 49, '          GALIL', 'S-M', '7.62MM', 'S-L', 0, 'FUSIL 7.62MM S-M GALIL'),
(6, 50, 'TAVOR', 'STAR', '5.56MM', 'S-L', 972, 'FUSIL 5.56MM STAR TAVOR'),
(6, 51, 'MAUSSER', 'M98', '7.62MM', 'S-L', 0, 'FUSIL 7.62MM M98 MAUSSER'),
(6, 52, 'KALASHMIKOV', 'AK-47', '7.62 MM', 'S-L', 142, 'FUSIL 7.62 MM AK-47 KALASHMIKO'),
(6, 53, 'MAUSSER', 'S-M', '7.62MM', 'S-L', 32, 'FUSIL 7.62MM S-M MAUSSER'),
(6, 54, 'MAUSSER', 'S-M', '7.62MM', 'S-L', 73, 'FUSIL 7.62MM S-M MAUSSER'),
(6, 55, 'CZ', 'BRNO', '7MM', 'S-L', 73, 'FUSIL 7MM BRNO CZ'),
(6, 56, 'HECKLER UND KOCH', 'HK-53', '5.56 MM', 'S-L', 49, 'FUSIL 5.56 MM HK-53 HECKLER UN'),
(6, 57, 'TAVOR', 'TAR', '5.56MM', 'S-L', 972, 'FUSIL 5.56MM TAR TAVOR'),
(6, 58, 'ACE22', 'S-M', '5.56MM', 'S-L', 972, 'FUSIL 5.56MM S-M ACE22'),
(6, 59, 'COLT', 'M4 COMANDO', '5.56MM', 'S-L', 51, 'FUSIL 5.56MM M4 COMANDO COLT'),
(6, 60, 'WINCHESTER', 'S/M', 'S/C', 'S-L', 51, 'FUSIL S/C S/M WINCHESTER'),
(6, 61, 'S/M', 'S/M', 'S/C', 'S-L', 0, 'FUSIL S/C S/M S/M'),
(6, 62, 'COLT', 'AR-10', 'S/C', 'S/L', 51, 'FUSIL S/C AR-10 COLT'),
(6, 63, 'MANLICHER', 'S/M', '7.62MM', 'S-L', 0, 'FUSIL 7.62MM S/M MANLICHER'),
(6, 64, 'ESSENTIAL', 'J-15', '.223-5.56', 'S/L', 0, 'FUSIL .223-5.56 J-15 ESSENTIAL'),
(6, 65, 'S/M', 'M16A1 AR15', '5.56 MM', 'S/L', 51, 'FUSIL 5.56 MM M16A1 AR15 S/M'),
(6, 66, 'AMETRALLADOR BREDA', '32', '7MM', 'S/L', 0, 'FUSIL 7MM 32 AMETRALLADOR BRED'),
(6, 67, 'AK-47', '1970', '7.62 MM', 'S/L', 0, 'FUSIL 7.62 MM 1970 AK-47'),
(6, 68, 'PARA REGLAJE', 'P/CEREO F/S/R', '0.5', 'S/L', 0, 'FUSIL .50 P/CEREO F/S/R PARA R'),
(6, 69, 'MAUSSER', 'MODELO 1893', '7MM', 'S-L', 34, 'FUSIL 7MM  MODELO 1893 MAUSSER'),
(6, 70, 'ACE', '23', '5.56 MM', 'S-L', 972, 'FUSIL 5.56 MM 23 ACE'),
(6, 71, 'COLT', 'AR-15 M16A1', '5.56 MM', 'S-L', 51, 'FUSIL 5.56 MM AR-15 M16A1 COLT'),
(6, 72, 'ACE', '21', '5.56 MM', 'S-L', 972, 'FUSIL 5.56 MM 21 ACE'),
(6, 73, 'COLT', 'AR-15 M16A1', '0.223', 'S-L', 51, 'FUSIL .223 AR-15 M16A1 COLT'),
(6, 74, 'GALIL', 'AR1', '5.56 MM', 'S-L', 972, 'FUSIL 5.56 MM AR1 GALIL'),
(6, 75, 'GALIL', 'KEL MODIFICADO', '7.62 MM', 'S-L', 972, 'FUSIL 7.62 MM KEL GALIL MODIFICADO'),
(6, 76, 'GALIL', 'GUA 22', '5.56 MM', 'S-L', 972, 'FUSIL GALIL 5.56 MM GUA 22'),
(6, 77, 'GALIL', 'AR MODELO 362', '5.56/.223', 'S-L', 972, 'GALIL AR MODELO 362 CAL. 5.56/.223'),
(6, 82, 'BERETTA', 'ARX160', '5.56X45MM.', 'S-L', 39, 'FUSIL 5.56 MM. BERETTA ARX160'),
(6, 84, 'HARRINGTON & RICHARDSON', 'M16A1', '5.56 MM', 'S-L', 51, 'FUSIL HARRINGTON & RICHARDSON CAL. 5.56MM MODELO M'),
(6, 85, 'AR GALIL', 'MODEL 355 IMI', 'CALIBER 5.56/.223', '0', 972, 'FUSIL GALIL AR CALIBER 5.56/.223 MODEL 355 IMI'),
(6, 86, 'AR GALIL', 'MODEL 362 IMI', 'CALIBER 5.56/.223', '0', 972, 'FUSIL GALIL AR CALIBER 5.56/.223 MODEL 362 IMI'),
(6, 87, 'AR GALIL', 'MODEL 706 IWI', 'CALIBER 5.56/.223', '0', 972, 'FUSIL GALIL AR CALIBER 5.56/.223 MODEL 706 IMI'),
(6, 88, 'SAR GALIL', 'MODEL 365 IMI', 'CALIBER 5.56/.223', '0', 972, 'FUSIL GALIL AR CALIBER 5.56/.223 MODEL 365 IMI'),
(6, 89, 'MICRO GALIL', 'MODEL 699 IMI', 'CALIBER 5.56/.223', '0', 972, 'FUSIL GALIL AR CALIBER 5.56/.223 MODEL 699 IMI'),
(6, 90, 'GALIL GUA', '22 IWI', 'CALIBER 5.56 X 45', '0', 972, 'FUSIL GALIL GUA 22 CALIBER 5.56X45'),
(6, 91, 'SN R.GALIL', 'IWI', 'CALIBER 7.62 X 51', '0', 972, 'FUSIL SN R. GALIL 7.62 X 51'),
(6, 92, 'AR GALIL', 'MODEL 706 IMI', 'CALIBER 5.56/.223', '0', 972, 'FUSIL GALIL AR CALIBER 5.56/.223 MODEL 706 IMI'),
(6, 93, 'REMINGTON', '700', '308Win', ' ', 51, 'FUSIL 308Win 700 REMINGTON'),
(7, 1, 'CZEKALSKI', 'FMK1', '105 MM', 'S-L', 66, 'FUSIL 105MM S/R FMK1 CZEK'),
(7, 2, 'S-M', 'S-M', '106 MM', 'S-L', 560, 'FUSIL 106MM S/R CHINOS'),
(7, 3, 'S-M', 'M40A2', '106 MM', 'S-L', 51, 'FUSIL 106MM S/R M40A2'),
(7, 4, 'S-M', 'M18A1', '57 MM', 'S-L', 51, 'FUSIL 57MM S/R M18A1'),
(7, 5, 'S-M', 'M20', '75 MM', 'S-L', 51, 'FUSIL 75MM S/R M20'),
(7, 6, 'S-M', 'M67', '90 MM', 'S-L', 51, 'FUSIL 90MM S/R M-67'),
(8, 1, 'RPG', 'RPG     7', 'S-C', 'S-L', 560, 'LANZA COH S-C RPG     7 RPG'),
(8, 2, 'S-M', 'M20A1B1', '3.5', 'S-L', 51, 'LANZA-COHETES 3.5 M20A1B1'),
(8, 3, 'S-M', 'M20B1', '3.5', 'S-L', 51, 'LANZA-COHETES 3.5 M20B1'),
(8, 4, 'S-M', 'M20A1', '3.5', 'S-L', 51, 'LANZA-COHETES 3.5"M20A1'),
(8, 5, 'INSTALAZA', '88.9', '3.5', 'S-L', 51, 'LANZA-COHETES 88.9 INSTAL'),
(8, 6, 'RPG', 'RPG 2', '40MM', 'S-L', 560, 'LANZA COH 40MM RPG 2 RPG'),
(9, 1, 'S-M', 'S-M', '40 MM', 'S-L', 0, 'LANZA-GRANADAS'),
(9, 2, 'TRUEFLITE', 'S-M', '37 MM', 'S-L', 51, 'LANZA-GRANADAS 37MM TRUFL'),
(9, 3, 'REMINGTON', 'M79', '40 MM', 'S-L', 51, 'LANZA-GRANADAS 40MM M-79'),
(9, 4, 'COLT', 'M203', '40 MM', 'S-L', 51, 'LANZA-GRANADAS M203'),
(9, 5, 'GRANAT PISTOLE', 'S/M', '40MM', 'S-L', 0, 'LANZA GRA 40MM S/M GRANAT PIST'),
(9, 6, 'GAS LACRI', '201-Z', '37MM', 'S-L', 51, 'LANZA GRA 37MM 201-Z GAS LACRI'),
(9, 7, 'PARA FUSIL', 'TAVOR', '40MM', 'S/L', 0, 'LANZA GRA 40MM TAVOR PARA FUSI'),
(9, 8, 'GAS LACRIMOGENO', 'S/M', '37-38', 'S/L', 0, 'LANZA GRA 37-38 S/M GAS LACRIM'),
(9, 9, 'PROTOTIPO MULTIPLE', 'BAKAC', '40MM', 'S/L', 0, 'LANZA GRA 40MM BAKAC PROTOTIPO'),
(9, 83, 'S-M', 'GLX160', '40 MM.', 'S-L', 39, 'LANZA GRANADAS 40MM. GLX160 S-M'),
(10, 1, 'ECIA', 'SL-1', '120 MM', 'S-L', 34, 'MORTERO 120MM. SL-1 ECIA'),
(10, 2, 'S-M', '4.2', '4.2', 'S-L', 51, 'MORTERO 4.2"'),
(10, 3, 'ECIA', 'S-M', '60 MM', 'S-L', 34, 'MORTERO 60MM. ECIA ESPA&O'),
(10, 4, 'S-M', 'M19', '60 MM', 'S-L', 51, 'MORTERO 60MM. M-19'),
(10, 5, 'S-M', 'M2', '60 MM', 'S-L', 51, 'MORTERO 60MM. M-2 USA'),
(10, 6, 'SMG', 'V-1', '60 MM', 'S-L', 502, 'MORTERO 60MM. SMG V-1'),
(10, 7, 'TAMPELLA', 'S-M', '60 MM', 'S-L', 972, 'MORTERO 60MM. TAMPELLA'),
(10, 8, 'S-M', 'S-M', '81 MM', 'S-L', 560, 'MORTERO 81MM. CHINO'),
(10, 9, 'S-M', 'M1', '81 MM', 'S-L', 51, 'MORTERO 81MM. M-1 USA'),
(10, 10, 'S-M', 'M29', '81 MM', 'S-L', 51, 'MORTERO 81MM. M-29'),
(10, 11, 'S-M', 'M29A1', '81 MM', 'S-L', 51, 'MORTERO 81MM. M-29A1'),
(10, 12, 'S-M', 'M4', '81 MM', 'S-L', 51, 'MORTERO 81MM. M-4 USA'),
(10, 13, 'ECIA', 'N', '81 MM', 'S-L', 34, 'MORTERO 81MM. N ECIA ESPA'),
(10, 14, 'S-M', 'PARA BENGALAS', 'S-C', 'S-L', 0, 'MORTERO PARA BENGALAS'),
(10, 15, 'S-M', 'MODELO 40', '47MM', 'S-L', 39, 'MORTERO 47MM MODELO 40 S-M'),
(10, 16, 'S-M', 'S-M', '60MM', 'S-L', 560, 'MORTERO 60MM S-M S-M'),
(10, 17, 'S-M', 'M-35', '81MM', 'S-L', 51, 'MORTERO 81MM M-35 S-M'),
(10, 18, 'CHINO', 'S/M', '60 MM', 'S/L', 0, 'MORTERO 60 MM S/M CHINO'),
(10, 19, 'S/M', 'M30', '4.2MM', 'S/L', 0, 'MORTERO 4.2MM M30 S/M'),
(10, 20, 'PROTOTIPO', 'S/M', '60 MM', 'S/L', 0, 'MORTERO 60 MM S/M PROTOTIPO'),
(11, 1, 'OBUS', 'S-M', 'S-C', 'S-L', 0, 'OBUS'),
(11, 2, 'S-M', 'M56', '105 MM', 'S-L', 340, 'OBUS 105MM. M-56 YUGOESLA'),
(11, 3, 'S-M', 'M102', '105', 'S-L', 51, 'OBUS 105MM. M102 USA'),
(11, 4, 'S-M', 'M2A1', '105 MM', 'S-L', 51, 'OBUS 105MM. M2A1 USA'),
(11, 5, 'S-M', 'PARA SALVAS', '75 MM', 'S-L', 49, 'OBUS 75MM. ALEMAN (P/SALV'),
(11, 6, 'HOWITZER', 'S-M', '75 MM', 'S-L', 51, 'OBUS 75MM. HOWITZER'),
(11, 7, 'S-M', 'M1A1', '75 MM', 'S-L', 51, 'OBUS 75MM. M1A1'),
(11, 8, 'S/M', 'S/M', '37MM', 'S/L', 0, 'OBUS 37MM S/M S/M'),
(12, 0, 'JERICHO', 'F9X19', '9MM', 'S-L', 972, 'PISTOLA 9MM F9X19 JERICHO'),
(12, 1, 'LONG RIFLE', 'AUTOMATICO', '0.22', 'S-L', 51, 'PISTOLA .22" LONG RIFLE A'),
(12, 2, 'S-M', 'S-M', '0.22', 'S-L', 0, 'PISTOLA .22'''),
(12, 3, 'COLT', 'MATCH TARGET', '0.22', 'S-L', 51, 'PISTOLA .22 MATCH TARGET COLT'),
(12, 4, 'CROSSMAN', 'S-M', '0.22', 'S-L', 49, 'PISTOLA .22'' CROSMAN'),
(12, 5, 'HAMMERLI', 'S-M', '0.22', 'S-L', 41, 'PISTOLA .22'' HAMMERLI'),
(12, 6, 'HAMMERLI', 'SWITZER', '0.22', 'S-L', 41, 'PISTOLA .22'' HAMMERLI SWI'),
(12, 7, 'HIGH', 'STANDARD', '0.22', 'S-L', 51, 'PISTOLA .22'' HIGH STANDAR'),
(12, 8, 'LLAMA', 'S-M', '0.22', 'S-L', 34, 'PISTOLA .22'' LLAMA'),
(12, 9, 'STAR', 'S-M', '0.22', 'S-L', 34, 'PISTOLA .22'' STAR'),
(12, 10, 'SUPER MATIC', 'S-M', '0.22', 'S-L', 51, 'PISTOLA .22'' SUPER MATIC'),
(12, 11, 'WALTHER', 'S-M', '0.22', 'S-L', 49, 'PISTOLA .22'' WALTER'),
(12, 12, 'S-M', 'S-M', '0.45', 'S-L', 0, 'PISTOLA .45"'),
(12, 13, 'COLT', 'S-M', '0.45', 'S-L', 51, 'PISTOLA .45" COLT'),
(12, 14, 'COLT', 'S-M', '0.45', 'S-L', 51, 'PISTOLA .45" COLT'),
(12, 15, 'COLT', 'COMMANDER', '0.45', 'S-L', 51, 'PISTOLA .45" COLT COMMAND'),
(12, 16, 'COLT', 'GOVERMENT', '0.45', 'S-L', 51, 'PISTOLA .45" COLT GOVERME'),
(12, 17, 'COLT', 'M1911A1', '0.45', 'S-L', 51, 'PISTOLA .45" COLT M1911A1'),
(12, 18, 'COLT', 'COMMANDER COM', '0.45', 'S-L', 51, 'PISTOLA .45" COMANDER COM'),
(12, 19, 'ITHACA', '1911A1', '0.45', 'S-L', 51, 'PISTOLA .45 1911A1 ITHACA'),
(12, 20, 'LLAMA', 'S-M', '0.45', 'S-L', 34, 'PISTOLA .45" LLAMA'),
(12, 21, 'REMINGTON', 'M1911A1', '0.45', 'S-L', 51, 'PISTOLA .45" REMINGTON'),
(12, 22, 'STAR', 'S-M', '0.45', 'S-L', 34, 'PISTOLA .45" STAR ESPA&OL'),
(12, 23, 'SWISSVALE', 'S-M', '0.45', 'S-L', 51, 'PISTOLA .45" SWISSVALE US'),
(12, 24, 'S-M', 'S-M', '0.45', 'S-L', 51, 'PISTOLA .45" USA S/MARCA'),
(12, 25, 'S-M', 'S-M', '9 MM', 'S-L', 0, 'PISTOLA 9MM.'),
(12, 26, 'S-M', '382 NV', '9 MM', 'S-L', 0, 'PISTOLA 9MM. 382 NV'),
(12, 27, 'BROWNING', 'S-M', '9 MM', 'S-L', 32, 'PISTOLA 9MM. BROWNING'),
(12, 28, 'SMITH Y WESSON', '5904', '9 MM', 'S-L', 51, 'PISTOLA 9MM. S. & W. 5904'),
(12, 29, 'SIG SAUER', 'S-M', '9 MM', 'S-L', 49, 'PISTOLA 9MM. SIG-SAUER'),
(12, 30, 'SIG-SAUER', 'P-220', '9 MM', 'S-L', 49, 'PISTOLA 9MM. SIG-SAUER P-'),
(12, 31, 'SIG-SAUER', 'P-226', '9 MM', 'S-L', 49, 'PISTOLA 9MM. SIG-SAUER P-'),
(12, 32, 'SMITH Y WESSON', 'M59', '9 MM', 'S-L', 51, 'PISTOLA 9 MM M59 SMITH Y WESSO'),
(12, 33, 'STAR', 'S-M', '9 MM', 'S-L', 34, 'PISTOLA 9MM. STAR'),
(12, 34, 'STAR', 'SUPER', '9MM', 'S-L', 34, 'PISTOLA 9MM. SUPER STAR'),
(12, 35, 'BRY', '10', 'S-C', 'S-L', 0, 'PISTOLA BRY 10'),
(12, 36, 'WALTHER', 'VIENTO 4.5', '4.5', 'S-L', 49, 'PISTOLA DE VIENTO 4.5 WAL'),
(12, 37, 'WALTHER', 'VIENTO', 'S-C', 'S-L', 49, 'PISTOLA DE VIENTO WALTHER'),
(12, 38, 'S-M', 'L.P.B.B.', 'S-C', 'S-L', 0, 'PISTOLA L.P.B.B.'),
(12, 39, 'S-M', 'L.P.N', 'S-C', 'S-L', 0, 'PISTOLA L.P.N.'),
(12, 40, 'EUREKA', 'PIROTECNICA AN-M8', '37 MM', 'S-L', 0, 'PISTOLA 37 MM PIROTECNICA AN-M'),
(12, 41, 'S-M', 'PIROTECNICA M-9', 'S-C', 'S-L', 0, 'PISTOLA PIROTECNICA M-9'),
(12, 42, 'LUM VERY', 'SEÑALES', 'S-C', 'S-L', 0, 'PISTOLA SEÑALES LUM VERY'),
(12, 43, 'JERICHO', 'S-M', '9 MM', '0', 0, 'PISTOLA 9 MM. JERICHO'),
(12, 44, 'CZ', '75B', '9 MM', '0', 0, 'PISTOLA CZ 9MM. MOD 75B'),
(12, 45, 'GLOCK', '19', '9MM', 'S-L', 0, 'PISTOLA 9MM 19 GLOCK'),
(12, 46, 'TAURUS', 'S-M', '9MM', 'S-L', 0, 'PISTOLA 9MM S-M TAURUS'),
(12, 47, 'NORINCO', 'S-M', '.45"', 'S-L', 0, 'PISTOLA .45" S-M NORINCO'),
(12, 48, 'STI', 'EDGE', '9MM', 'S-L', 0, 'PISTOLA 9MM EDGE STI'),
(12, 49, 'SMITH Y WESON', 'M6904', '9 MM', 'S-L', 51, 'PISTOLA 9 MM M6904 SMITH Y WES'),
(12, 50, 'FN HERSTAL', 'BDA BROWNING', '9 MM', 'S-L', 32, 'PISTOLA 9 MM BDA BROWNING FN H'),
(12, 51, 'HR', 'MARK III SE?ALES', 'S-C', 'S-L', 51, 'PISTOLA S-C MARK III SEÑALES H'),
(12, 52, 'MARKED', 'BV SEÑALES', 'S-C', 'S-L', 51, 'PISTOLA S-C BV SEÑALES MARKED'),
(12, 53, 'UK', 'NOL STYLE SEÑALES', 'S-C', 'S-L', 44, 'PISTOLA S-C NOL STYLE SEÑALES'),
(12, 54, 'COGSWELL & HARRISON', 'BRASS SEÑALES', 'S-C', 'S-L', 44, 'PISTOLA S-C BRASS SEÑALES COGS'),
(12, 55, 'JERICHO', '941FS', '9MM', 'S-L', 0, 'PISTOLA 9MM 941FS JERICHO'),
(12, 56, 'JERICHO', '941F', '9MM', 'S-L', 972, 'PISTOLA 9MM 941F JERICHO'),
(12, 57, 'STI', '2011', '.45"', 'S-L', 0, 'PISTOLA .45" 2011 STI'),
(12, 58, 'TANGOFLIO', 'FORCE 99', '9MM', 'S/L', 0, 'PISTOLA 9MM FORCE 99 TANGOFLIO'),
(12, 59, 'LUGER', 'S/M', '9MM', 'S-L', 49, 'PISTOLA 9MM S/M LUGER'),
(12, 60, 'ZAFARI', 'S/M', 'S/C', 'S-L', 0, 'PISTOLA S/C S/M ZAFARI'),
(12, 61, 'WALTHER', 'PP', '380', 'S/L', 0, 'PISTOLA 380 PP WALTHER'),
(12, 62, 'HIGH STANDARD', 'M106', '0.22', 'S/L', 0, 'PISTOLA .22 M106 HIGH STANDARD'),
(12, 63, 'PARA SE?ALES', 'ELO 512', 'S/C', 'S/L', 0, 'PISTOLA S/C ELO 512 PARA SE'),
(12, 64, 'FM', 'HIGH POWER', '9MM', 'S/L', 0, 'PISTOLA 9MM HIGH POWER FM'),
(12, 65, 'LLAMA', 'S/M', '9MM', 'S/L', 34, 'PISTOLA 9MM S/M LLAMA'),
(12, 66, 'PIETRO BERETTA', '92FS', '9MM', 'S-L', 39, 'PISTOLA 9MM 92FS'),
(12, 77, 'JERICHO', '941FS', '9 MM', 'S-L', 0, 'PISTOLA 9 MM 941FS JERICHO'),
(12, 78, 'JERICHO', '941FB', '9 MM', 'S-L', 0, 'PISTOLA 9 MM 941FB JERICHO'),
(12, 79, 'Glock', '34Gen4', '9X9MM', ' ', 51, 'PISTOLA 9X9MM 34Gen4 Glock'),
(13, 1, 'S-M', 'S-M', '0.22', 'S-L', 0, 'REVOLVER .22"'),
(13, 2, 'SMITH Y WESSON', 'S-M', '0.22', 'S-L', 51, 'REVOLVER .22" SMITH # WES'),
(13, 3, 'S-M', 'S-M', '0.38', 'S-L', 0, 'REVOLVER .38"'),
(13, 4, 'ASTRA', 'CADIA', '0.38', 'S-L', 34, 'REVOLVER .38" ASTRA CADIA'),
(13, 5, 'ASTRA', 'CADIA C.C.', '0.38', 'S-L', 34, 'REVOLVER .38" ASTRA CADIA'),
(13, 6, 'BURGO', 'S-M', '0.38', 'S-L', 0, 'REVOLVER .38" BURGO'),
(13, 7, 'COLT', 'S-M', '0.38', 'S-L', 51, 'REVOLVER .38" COLT'),
(13, 8, 'COLT', 'CAÑON LARGO', '0.38', 'S-L', 51, 'REVOLVER .38" COLT CAÑON'),
(13, 9, 'COLT', 'CAÑON CORTO', '0.38', 'S-L', 51, 'REVOLVER .38" COLT CAÑON'),
(13, 10, 'COLT', ' S', '0.38', 'S-L', 51, 'REVOLVER .38" COLT''S'),
(13, 11, 'SMITH Y WESSON', 'CAÑON LARGO', '0.38', 'S-L', 51, 'REVOLVER .38" L SMITH Y W'),
(13, 12, 'ASTRA', 'CAÑON LARGO', '0.38', 'S-L', 34, 'REVOLVER .38" LARGO ASTRA'),
(13, 13, 'COLT', 'CAÑON LARGO', '0.38', 'S-L', 51, 'REVOLVER .38" LARGO COLT'),
(13, 14, 'LLAMA', 'CAÑON LARGO', '0.38', 'S-L', 34, 'REVOLVER .38" LARGO LLAMA'),
(13, 15, 'RUBY', 'CAÑON LARGO', '0.38', 'S-L', 0, 'REVOLVER .38" LARGO RUBY'),
(13, 16, 'TAURUS', 'CA?ON LARGO', '0.38', 'S-L', 855, 'REVOLVER .38" LARGO TAURU'),
(13, 17, 'RUBY', 'EXTRA', '0.38', 'S-L', 0, 'REVOLVER .38" RUBY EXTRA'),
(13, 18, 'COLT', 'SPECIAL', '0.38', 'S-L', 51, 'REVOLVER .38" SPECIAL COL'),
(13, 19, 'RUGER', 'S-M', '3.57', 'S-L', 49, 'REVOLVER 3.57 RUGER'),
(13, 20, 'SMITH Y WESSON', 'S-M', '3.57', 'S-L', 51, 'REVOLVER 3.57 SMITH " WES'),
(13, 21, 'COLT', 'S-M', 'S-C', 'S-L', 51, 'REVOLVER COLT'),
(13, 22, 'REVOLVER 3.57MM. TAURUS', 'S-M', '0', '0', 0, 'ESCOPETA  CAL.12 MOD.870'),
(13, 23, 'REVOLVER 3.57MM. TAURUS', 'S-M', '0', '0', 0, 'REVOLVER 3.57MM. TAURUS'),
(13, 24, 'COLT', 'S', ' ', ' ', 0, 'REVOLVER  S COLT'),
(13, 25, 'COLT', 'S/M', '.45"', 'S-L', 51, 'REVOLVER .45" S/M COLT'),
(13, 26, 'ITALY', 'S/M', '.44"', 'S-L', 39, 'REVOLVER .44" S/M ITALY'),
(13, 27, 'CACHA BLANCA', 'DECORADO', 'S/C', 'S-L', 0, 'REVOLVER S/C DECORADO CACHA BL'),
(13, 28, 'ROSSI', 'S/M', '0.38', 'S/L', 0, 'REVOLVER .38 S/M ROSSI'),
(13, 29, 'SINGLE', 'SIX RUGER', '0.22', 'S/L', 0, 'REVOLVER .22 SIX RUGER SINGLE'),
(14, 1, 'S-M', 'S-M', '0.22', 'S-L', 0, 'RIFLE .22"'),
(14, 2, 'MAGNUM', 'S-M', '0.22', 'S-L', 51, 'RIFLE .22" MAGNUM'),
(14, 3, 'MARLIN', 'S-M', '0.22', 'S-L', 49, 'RIFLE .22" MARLIN'),
(14, 4, 'REMINGTON', '40X', '0.22', 'S-L', 51, 'RIFLE .22 40X REMINGTON'),
(14, 5, 'REMINGTON', '511-P', '0.22', 'S-L', 51, 'RIFLE .22" REMINGTON 511-'),
(14, 6, 'REMINGTON', 'M521/T', '0.22', 'S-L', 51, 'RIFLE .22" REMINGTON M521'),
(14, 7, 'REMINGTON', '37', '0.22', 'S-L', 51, 'RIFLE .22" REMINGTON MOD'),
(14, 8, 'WALTHER', 'P/EQUIPO T.', '0.22', 'S-L', 49, 'RIFLE .22" WALTER P/EQUIP'),
(14, 9, 'WALTHER', 'S', '0.22', 'S-L', 49, 'RIFLE .22" WALTERS'),
(14, 10, 'WINCHESTER', 'S-M', '0.22', 'S-L', 51, 'RIFLE .22" WINCHESTER'),
(14, 11, 'WINCHESTER', '75', '0.22', 'S-L', 51, 'RIFLE .22" WINCHESTER 75'),
(14, 12, 'WINCHESTER', 'M190', '0.22', 'S-L', 51, 'RIFLE .22" WINCHESTER M-1'),
(14, 13, 'WINCHESTER', 'M52', '0.22', 'S-L', 51, 'RIFLE .22" WINCHESTER M-5'),
(14, 14, 'WINCHESTER', 'M61', '0.22', 'S-L', 51, 'RIFLE .22" WINCHESTER M-6'),
(14, 15, 'REMINGTON', 'S-M', '0.222', 'S-L', 51, 'RIFLE .222"  REMINGTON'),
(14, 16, 'S-M', 'S-M', '0.222', 'S-L', 0, 'RIFLE .222"  S/MARCA'),
(14, 17, 'FOX', 'S-M', '0.222', 'S-L', 51, 'RIFLE 222 FOX'),
(14, 18, 'SAVAGE', '30-jun', '0.3', 'S-L', 51, 'RIFLE 30-06 SAVAGE'),
(14, 19, 'DIANA', 'VIENTO', 'S-C', 'S-L', 49, 'RIFLE DIANA DE VIENTO'),
(14, 20, 'WALTHER', 'S-M', 'S-C', 'S-L', 49, 'RIFLE WALTER'),
(14, 21, 'COLT', 'AUTOMATICO', '5.56MM', 'S/L', 51, 'RIFLE 5.56MM AUTOMATICO COLT'),
(14, 22, 'REMINIGTON', '572', '0.22', 'S/L', 51, 'RIFLE .22 572 REMINIGTON'),
(14, 23, 'DE VIENTO', 'S/M', '4.45 MM', 'S/L', 0, 'RIFLE 4.45 MM S/M DE VIENTO'),
(14, 24, 'BRNO FOX', '2', '0.22', 'S-L', 0, 'RIFLE .22  2 BRNO FOX'),
(14, 25, 'WALTHER', 'S-M', '0.22', 'S-L', 49, 'RIFLE .22 WALTHER'),
(14, 26, 'REMINGTON', '521-T', '0.22', 'S-L', 51, 'RIFLE .22" REMINGTON 521-T'),
(15, 1, 'S-M', 'M3A1', '0.45', 'S-L', 51, 'SUBAMET. .45" M3A1'),
(15, 2, 'REISING', 'S-M', '0.45', 'S-L', 0, 'SUBAMET. .45" REISING'),
(15, 3, 'SOLOTHURN', 'S-M', '0.45', 'S-L', 0, 'SUBAMET. .45" SOLOTHURN'),
(15, 4, 'THOMPSON', 'S-M', '0.45', 'S-L', 51, 'SUBAMET. .45" THOMPSON'),
(15, 5, 'BERETTA', 'S-M', '9 MM', 'S-L', 51, 'SUBAMET. 9MM. BERETTA'),
(15, 6, 'S-M', 'C-2', '9 MM', 'S-L', 34, 'SUBAMET. 9MM. C-2 ESPAÑOL'),
(15, 7, 'KOKOHAM', 'S-M', '9 MM', 'S-L', 0, 'SUBAMET. 9MM. KOKOHAM'),
(15, 8, 'MADZEN', 'S-M', '9 MM', 'S-L', 73, 'SUBAMET. 9MM. MADZEN'),
(15, 9, 'UZI', 'MINI', '9 MM', 'S-L', 972, 'SUBAMET. 9MM. MINI UZI IM'),
(15, 10, 'UZI', 'IM', '9 MM', 'S-L', 972, 'SUBAMET. 9MM. MINI UZI.'),
(15, 11, 'BANIN', 'MK-IV', '9 MM', 'S-L', 51, 'SUBAMET. 9MM. MK-IV BANIN'),
(15, 12, 'NEUHAUVEN', 'S-M', '9 MM', 'S-L', 32, 'SUBAMET. 9MM. NEUHAUVEN'),
(15, 13, ' SCHMEISSER', 'MP-28', '9 MM', 'S-L', 49, 'SUBAMET 9 MM MP-28 SCHMEISSER'),
(15, 14, 'STEYR', 'MP-40', '9 MM', 'S-L', 43, 'SUBAMET 9 MM MP-40 STEYR'),
(15, 15, 'UZI', 'S-M', '9 MM', 'S-L', 972, 'SUBAMET. 9MM. UZI'),
(15, 16, 'WALTHER', 'S-M', '9 MM', 'S-L', 49, 'SUBAMET. 9MM. WALTER'),
(15, 17, 'INTERDINAMIC', 'S-M', '9 MM', '0', 0, 'SUB-AMET INTERDINAMIC 9MM'),
(15, 18, 'INTERDINAMIC', 'S-M1', '9 MM', '0', 0, 'SUBAMET. 9MM INTERDINAMIC'),
(15, 19, 'STEYR', 'MPI69', '9 MM', 'S-L', 43, 'SUBAMET 9 MM MPI69 STEYR'),
(15, 20, 'HKMP5', 'S/M', '9', ' ', 0, 'SUBAMET 9 S/M HKMP5'),
(15, 21, 'HKMP5', 'S/M', '9MM', 'S-L', 0, 'SUBAMET 9MM S/M HKMP5'),
(15, 22, 'POWDER', 'SPRING', '0.45', 'S/L', 51, 'SUBAMET .45 SPRING POWDER'),
(15, 23, 'RPB', 'MARIETA ATLANTA', '380', 'S/L', 51, 'SUBAMET 380 MARIETA ATLANTA RP'),
(15, 24, 'INGRAM', '10', '9MM', 'S/L', 0, 'SUBAMET 9MM 10 INGRAM'),
(15, 25, 'INGRAM', '10', '0.45', 'S/L', 0, 'SUBAMET .45 10 INGRAM'),
(15, 26, 'MAC', 'II', '380', 'S/L', 0, 'SUBAMET 380 II MAC'),
(15, 27, 'MATSEN', 'S/M', '9MM', 'S/L', 0, 'SUBAMET 9MM S/M MATSEN'),
(15, 28, 'ITHACA', 'S-M', '0.45', 'S-L', 51, 'SUBAMET .45 ITHACA'),
(15, 29, 'INTRATEC', 'TEC_DC9', '9 MM', 'S-L', 0, 'SUBAMET  9 MM TEC_DC9 INTRATEC'),
(15, 30, 'UZI', 'IMI', '9 MM', 'IMI', 0, 'SUBAMETRALLADORA  9 MM S-M UZI'),
(16, 1, 'APARATOS PUNTERIA', 'M-4 MORTERO 60', '0', '0', 0, 'APARATOS PUNT M-4 MORT 60'),
(16, 2, 'APARATOS PUNTERIA', 'MORTERO ECIA 120', '0', '0', 0, 'APARATOS PUNT MORT ECIA 1'),
(16, 3, 'BINOCULAR', 'M17A1', '0', '0', 0, 'BINOCULAR M17A1'),
(16, 4, 'BINOCULAR', 'M3', '0', '0', 0, 'BINOCULAR M3'),
(16, 5, 'BIPODE', 'M-29 DE MORTERO 81', '0', '0', 0, 'BIPODE M-29 DE MORTERO 81'),
(16, 6, 'BIPODE', 'M-4 PARA MORTERO 81', '0', '0', 0, 'BIPODE M-4 PARA MORTERO 8'),
(16, 7, 'BIPODE', 'M-5 PARA MORTERO 60', '0', '0', 0, 'BIPODE M-5 PARA MORTERO 6'),
(16, 8, 'BRUJULAS', 'M-2 PARA BATERIA', '0', '0', 0, 'BRUJULAS M-2 PARA BATERIA'),
(16, 9, 'CA&ONES', '20MM AMET.', '0', '0', 0, 'CA&ONES 20MM AMET.'),
(16, 12, 'COLIMADOR', 'M-1 P/OBUS 105M', '0', '0', 0, 'COLIMADOR M-1 P/OBUS 105M'),
(16, 13, 'CUADRANTE', 'M-1 MORTERO 81M', '0', '0', 0, 'CUADRANTE M-1 MORTERO 81M'),
(16, 14, 'DE AIRE COMPRIMIDO', 'USA M-32A1', '0', '0', 0, 'EQ. AIRE COMP. USA M-32A1'),
(16, 15, 'ILUMINACION', 'M-21 U', '0', '0', 0, 'EQUIPO ILUMINACION M-21 U'),
(16, 19, 'GONIOMETRO BRUJULA', 'BATERIA 105 MM', '0', '0', 0, 'GONIOMETRO BRUJULA BAT 10'),
(16, 20, 'GONIOMETRO BRUJULA', 'PB-1 P', '0', '0', 0, 'GONIOMETRO BRUJULA PB-1 P'),
(16, 21, 'GONIOMETRO', 'M2', '0', '0', 0, 'GONIOMETRO M2'),
(16, 22, 'GONIOMETROS', ' BRUJULA M-2', '0', '0', 0, 'GONIOMETROS BRUJULA M-2'),
(16, 23, 'MONTAJE', 'NABTON P/AMET. NA', '0', '0', 0, 'MONTAJE NABTON P/AMET. NA'),
(16, 24, 'MONTURA', 'M-79 P/MORTERO 81', '0', '0', 0, 'MONTURA M-79 P/MORTERO 81'),
(16, 25, 'PEDESTALES', 'P/AMET. .50 S', '0', '0', 0, 'PEDESTALES P/AMET. .50'' S'),
(16, 33, 'PLACA BASE', 'P/MORTERO 81MM', '0', '0', 0, 'PLACA BASE P/MORTERO 81MM'),
(16, 35, 'SUBCALIBRE', '14.5MM P/OBUS', '0', '0', 0, 'SUBCALIBRE 14.5MM P/OBUS'),
(16, 36, 'TELESCOPIO', 'M-62 P/MORT 81', '0', '0', 0, 'TELESCOPIO M-62 P/MORT 81'),
(16, 37, 'TELESCOPIO', 'M55A1 OBUS 105', '0', '0', 0, 'TELESCOPIO M55A1 OBUS 105'),
(16, 38, 'TELESCOPIO', 'PANORAMICO M11', '0', '0', 0, 'TELESCOPIO PANORAMICO M11'),
(16, 39, 'TELESCOPIOS', '86F FUSIL S/R', '0', '0', 0, 'TELESCOPIOS 86F FUSIL S/R'),
(16, 40, 'TRIPODE', ' M-1 P/AMET .50', '0', '0', 0, 'TRIPODE M-1 P/AMET .50"'),
(16, 41, 'TRIPODE', 'M-1919A2 FUS S/R', '0', '0', 0, 'TRIPODE M-1919A2 FUS S/R'),
(16, 42, 'TRIPODE', 'M-3 P/AMET .50', '0', '0', 0, 'TRIPODE M-3 P/AMET .50"'),
(16, 43, 'TRIPODE', 'M-74 FUS. S/R 57M', '0', '0', 0, 'TRIPODE M-74 FUS. S/R 57M'),
(16, 44, 'TRIPODE', 'M1917A1 FUS S/R 5', '0', '0', 0, 'TRIPODE M1917A1 FUS S/R 5'),
(16, 45, 'TRIPODE', 'P/FUSIL S/R 57MM', '0', '0', 0, 'TRIPODE P/FUSIL S/R 57MM'),
(16, 46, 'TRIPODES', 'M-24', '0', '0', 0, 'TRIPODES M-24'),
(16, 47, 'TRUEFLITE 1.5', 'S-M', '0', '0', 0, 'TRUEFLITE 1.5'),
(16, 48, 'APARATOS DE PUNTERIA', 'MORTERO ECIA 81 MM', 'S/C', 'S/L', 0, 'EQUIPO S/C MORTERO ECIA 81 MM'),
(16, 49, 'APARATOS DE PUNTERIA', 'MORTERO M29A1', 'S/C', 'S/L', 0, 'EQUIPO S/C MORTERO M29A1 APARA'),
(16, 50, 'CA', 'AMETRALLADORA BROW.  .50', 'S/C', 'S/L', 0, 'EQUIPO S/C AMETRALLADORA BROW.'),
(16, 51, 'MARVEL', '1911-22', 'S/C', 'S/L', 0, 'EQUIPO S/C 1911-22 MARVEL'),
(16, 52, 'ECIA', 'PLACA BASE P/MORT 120MM', 'S/C', 'S/L', 0, 'EQUIPO S/C PLACA BASE P/MORT 1'),
(16, 53, 'ECIA', 'TRIPODE P/MORTERO 120MM', 'S/C', 'S/L', 0, 'EQUIPO S/C TRIPODE P/MORTERO 1'),
(16, 54, 'ECIA', 'PLACA BASE P/MORT 60MM', 'S/C', 'S/L', 0, 'EQUIPO S/C PLACA BASE P/MORT 6'),
(16, 55, 'PLACA BASE', 'P/MORTERO M2 CAL. 60MM', 'S/C', 'S/L', 51, 'EQUIPO S/C P/MORTERO M2 CAL. 6'),
(16, 56, 'REMOLQUE', 'TRANS/MORTERO 120MM', 'S/C', 'S/L', 0, 'EQUIPO S/C TRANS/MORTERO 120MM'),
(16, 57, 'ECIA', 'TRIPODE P/MORTERO 81MM', 'S/C', 'S/L', 0, 'EQUIPO S/C TRIPODE P/MORTERO 8'),
(16, 58, 'TUBO', 'P/MORTERO CHINO 81MM', 'S/C', 'S/L', 0, 'EQUIPO S/C P/MORTERO CHINO 81M'),
(16, 59, 'ECIA', 'TRIPODE P/MORTERO 60MM', 'S/C', 'S/L', 0, 'EQUIPO S/C TRIPODE P/MORTERO 6'),
(16, 60, 'SUBCALIBRE', 'S/M', '20 MM', 'S-L', 0, 'SUBCALIBRE  20 MM S/M'),
(19, 1, 'CHISTA ITALIANO', 'S/M', 'S/C', 'S-L', 39, 'MOSQUETE S/C S/M CHISTA ITALIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arma_tipo`
--

CREATE TABLE IF NOT EXISTS `arma_tipo` (
  `tip_codigo` int(11) NOT NULL,
  `tip_descripcion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `arma_tipo`
--

INSERT INTO `arma_tipo` (`tip_codigo`, `tip_descripcion`) VALUES
(0, 'PENDIENTE'),
(1, 'AMETRALLADORA'),
(2, 'CAÑON'),
(3, 'CARABINA'),
(4, 'DISPERSADOR DE GAS'),
(5, 'ESCOPETA'),
(6, 'FUSIL'),
(7, 'FUSIL SIN RETROCESO'),
(8, 'LANZA COHETES'),
(9, 'LANZA GRANADAS'),
(10, 'MORTERO'),
(11, 'OBUS'),
(12, 'PISTOLA'),
(13, 'REVOLVER'),
(14, 'RIFLE'),
(15, 'SUBAMETRALLADORA'),
(16, 'EQUIPO'),
(17, 'SMITH & WESSON'),
(18, 'HERSTAL CAL. 9MM.'),
(19, 'MOSQUETE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comisarias`
--

CREATE TABLE IF NOT EXISTS `comisarias` (
  `com_codigo` int(11) NOT NULL,
  `com_comisaria` varchar(25) NOT NULL,
  `com_distrito` int(11) NOT NULL,
  `com_tipo` int(11) NOT NULL,
  `com_descripcion` varchar(50) NOT NULL,
  `com_direccion` varchar(128) NOT NULL,
  `com_telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comisarias`
--

INSERT INTO `comisarias` (`com_codigo`, `com_comisaria`, `com_distrito`, `com_tipo`, `com_descripcion`, `com_direccion`, `com_telefono`) VALUES
(1, 'COMISARIA 11', 1, 1, 'COMISARIA 11', '11 avenida 4-01 Zona 1?', 22380794),
(2, 'COMISARIA 11', 1, 2, 'Estaci?n 112', 'Avenida Bolivar y 41 calle zona 3', 24712899),
(3, 'COMISARIA 11', 1, 2, 'Estaci?n 114', 'Avenida Bolivar y 41 calle zona 3', 24712699),
(4, 'COMISARIA 11', 1, 4, 'Serenazgo 8', '1?. avenida ?A? 8?. y 9?. calle zona 1', 22201721),
(5, 'COMISARIA 11', 1, 3, 'Sub Estaci?n? 11-11 Parque Moraz', '7?. avenida 2-24 zona 2', 22323978),
(6, 'COMISARIA 11', 1, 3, 'Sub Estaci?n 11- 12 Barrio Moderno', '2?. calle 12-56 zona 2, Barrio Moderno', 22891299),
(7, 'COMISARIA 11', 1, 3, 'Sub Estaci?n 11-13 El Tuerto', '11 calle 16-29 zona 1, Barrio Gerona', 0),
(8, 'COMISARIA 12', 1, 1, 'COMISARIA 12', 'Kil?metro 16.5 ruta al Atl?ntico, Llano Largo Zona 18', 2259),
(9, 'COMISARIA 12', 1, 2, 'Estaci?n 121 Santa Luisa', '', 2286),
(10, 'COMISARIA 12', 1, 3, 'Sub Estaci?n 12-11', '16 avenida 14-00 zona 6, Colonia Cipresales', 2254),
(11, 'COMISARIA 12', 1, 3, 'Sub Estaci?n 12-21 Lomas del Norte', '11 calle 14-04 zona 17 Colonia Lomas del Norte', 2258),
(12, 'COMISARIA 12', 1, 3, 'Sub Estaci?n Canalitos', 'Calle principal a un costado del Parque Canalitos zona 24', 2258),
(13, 'COMISARIA 12', 1, 4, 'Serenazgo 1 Mercado San Mart?n?', 'Mercado San Mart?n zona 6', 2288),
(14, 'COMISARIA 13', 1, 1, 'COMISARIA 13', '29 calle 13-36 Zona 5, Colonia San Pedrito', 2331),
(15, 'COMISARIA 13', 1, 4, 'Serenazgo Cuarto', '34 avenida 14 calle zona 5, Colonia Saravia', 0),
(16, 'COMISARIA 13', 1, 4, 'Serenazgo Concepci?n Las Lomas', '3?. avenida 15-10 zonas 16 Colonia Concepci?n Las Lomas', 2364),
(17, 'COMISARIA 13', 1, 4, 'Serenazgo Sexto', '27 calle 11-15 Colonia Libertad, zona 13', 2333),
(18, 'COMISARIA 13', 1, 2, 'Estaci?n 13.1', '29 calle 13-36 Colonia San Pedrito zona 5', 2362),
(19, 'COMISARIA 13', 1, 2, 'Estaci?n 13.2', '19 calle 19-85 La Villa de Guadalupe, zona 10', 2337),
(20, 'COMISARIA 13', 1, 3, 'Sub estaci?n 13.4', '2?. calle 15 avenida Colonia El Maestro I,? Vista Hermosa zona 15', 2369),
(21, 'COMISARIA 13', 1, 3, 'Sub estaci?n 13.5.1', '2?. avenida 1?. calle zona 2, Fraijanes', 6634),
(22, 'COMISARIA 13', 1, 3, 'Sub estaci?n 13.5.2', '1?. calle 4-46 calle principal, San Jos? Pinula', 6634),
(23, 'COMISARIA 13', 1, 3, 'Sub estaci?n 13.5.3', '5?. avenida 1?. calle zona 1, Santa Catarina Pinula', 2367),
(24, 'COMISARIA 13', 1, 3, 'Sub estaci?n 135', 'Calle principal sector central 3, lote 31?, Aldea El Carmen', 6629),
(25, 'COMISARIA 13', 1, 3, 'Sub estaci?n 131.3.1', 'La Rural 7?. avenida 12 calle zona 13', 2440),
(26, 'COMISARIA 14', 1, 1, 'COMISARIA 14', '31 avenida y 4a. calle, ?? Colonia Centroam?rica Zona 7', 2439),
(27, 'COMISARIA 14', 1, 2, 'Estaci?n 142 Granai & Towson', '8?. avenida 28-06 zona 11', 2442),
(28, 'COMISARIA 14', 1, 3, 'Sub estaci?n 14-31 El Carmen zona 12', '29 calle 8-18 Colonia El Carmen, zona 12', 0),
(29, 'COMISARIA 14', 1, 3, 'Sub estaci?n 14-42 Ciudad Real', '6?. avenida 2-37, Ciudad Real, zona 21', 2479),
(30, 'COMISARIA 14', 1, 2, 'Estaci?n 144 Justo Rufino Barrios', '33 avenida 10 y 11 Colonia Justo Rufino Barrios, zona 21', 2449),
(31, 'COMISARIA 14', 1, 3, 'Sub estaci?n 14-31 El Camen zona 12', '29 calle 8-18 Colonia El Carmen zona 12', 2442),
(32, 'COMISARIA 14', 1, 3, 'Sub estaci?n 14-32 El Mezquital zona 12', '2?. avenida, 2?. calle El Mezquital zona 12', 2477),
(33, 'COMISARIA 14', 1, 4, 'Serenazgo Toledo', '38 avenida 2-11 zona 11 Colonia Toledo', 2439),
(34, 'COMISARIA 15', 1, 1, 'COMISARIA 15', '3a. avenida 3-14 Colonia Venecia II, Zona 4, Villa Nueva', 6631),
(35, 'COMISARIA 15', 1, 2, 'Estaci?n 151 Villa Nueva', '5? avenida 4-54 zona 1, frente al Parque Central', 6636),
(36, 'COMISARIA 15', 1, 2, 'Estaci?n 153 Villa Canales', '9?. calle 3-39 zona 1, Villa Canales', 6635),
(37, 'COMISARIA 15', 1, 3, 'Sub estaci?n 15-32 Boca del Monte', '3?. avenida ?A? entre 2?. y 3?. calle zona 1, Boca del Monte', 2448),
(38, 'COMISARIA 15', 1, 3, 'Sub estaci?n 15-43 Villa Hermosa', 'Manzana ?D?, sector 6 Villa Hermosa 1', 2448),
(39, 'COMISARIA 15', 1, 3, 'Sub estaci?n 15-34 Santa Elena Barillas', 'Costado sur Parque Central, Santa Elena Barrillas', 6632),
(40, 'COMISARIA 15', 1, 3, 'Sub Estaci?n Villa Lobos', '3?. avenida 3-48 zona 2, Colonia Villa Lobos', 6629),
(41, 'COMISARIA 16', 1, 1, 'COMISARIA 16', 'Calzada San Juan 1-67 Zona 7 de Mixco, Colonia Bel?n?', 2433),
(42, 'COMISARIA 16', 1, 2, 'Estaci?n 16-4 Municipalidad de Mixco', '8?. avenida 11-24 zona 1 de Mixco', 2438),
(43, 'COMISARIA 16', 1, 3, 'Sub estaci?n 16-22 Tierra Nueva, Chinautla', 'Manzana 1, Lote 1 Bosquecito Tierra Nueva I', 2483),
(44, 'COMISARIA 16', 1, 2, 'Estaci?n 16-8 San Raymundo', 'A un costado de la Municipalidad', 6630),
(45, 'COMISARIA 16', 1, 2, 'Estaci?n 16-7 San Juan Sacatep?quez', '7?. calle y 7?. avenida zona 1 San Juan Sacatep?quez', 6630),
(46, 'COMISARIA MODELO', 1, 1, 'COMISARIA MODELO DE VILLA NUEVA', '12 avenida 7-51 ?A? Colonia Tabloncito zona 1, Villa Nueva', 6636);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `depmun`
--

CREATE TABLE IF NOT EXISTS `depmun` (
  `dm_codigo` int(11) NOT NULL,
  `dm_desc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `depmun`
--

INSERT INTO `depmun` (`dm_codigo`, `dm_desc`) VALUES
(100, 'GUATEMALA'),
(101, 'GUATEMALA, GUATEMALA'),
(102, 'SANTA CATARINA PINULA, GUATEMALA'),
(103, 'SAN JOSE PINULA, GUATEMALA'),
(104, 'SAN JOSE DEL GOLFO, GUATEMALA'),
(105, 'PALENCIA, GUATEMALA'),
(106, 'CHINAUTLA, GUATEMALA'),
(107, 'SAN PEDRO AYAMPUC, GUATEMALA'),
(108, 'MIXCO, GUATEMALA'),
(109, 'SAN PEDRO SACATEPEQUEZ, GUATEMALA'),
(110, 'SAN JUAN SACATEPEQUEZ, GUATEMALA'),
(111, 'SAN RAYMUNDO, GUATEMALA'),
(112, 'CHUARRANCHO, GUATEMALA'),
(113, 'FRAIJANES, GUATEMALA'),
(114, 'AMATITLAN, GUATEMALA'),
(115, 'VILLANUEVA, GUATEMALA'),
(116, 'VILLA CANALES, GUATEMALA'),
(117, 'SAN MIGUEL PETAPA, GUATEMALA'),
(200, 'EL PROGRESO'),
(201, 'GUASTATOYA, EL PROGRESO'),
(202, 'MORAZAN, EL PROGRESO'),
(203, 'SAN AGUSTIN ACASAGUASTLAN, EL PROGRESO'),
(204, 'SAN CRISTOBAL ACASAGUASTLAN, EL PROGRESO'),
(205, 'EL JICARO, EL PROGRESO'),
(206, 'SANSARE, EL PROGRESO'),
(207, 'SANARATE, EL PROGRESO'),
(208, 'SAN ANTONIO LA PAZ, EL PROGRESO'),
(300, 'SACATEPEQUEZ'),
(301, 'ANTIGUA GUATEMALA, SACATEPEQUEZ'),
(302, 'JOCOTENANGO, SACATEPEQUEZ'),
(303, 'PASTORES, SACATEPEQUEZ'),
(304, 'SANTIAGO SACATEPEQUEZ, SACATEPEQUEZ'),
(305, 'SANTO DOMINGO XENACOJ, SACATEPEQUEZ'),
(306, 'SUMPANGO, SACATEPEQUEZ'),
(307, 'SAN BARTOLOME MILPAS ALTAS, SACATEPEQUEZ'),
(308, 'SAN LUCAS SACATEPEQUEZ, SACATEPEQUEZ'),
(309, 'SANTA LUCIA MILPAS ALTAS, SACATEPEQUEZ'),
(310, 'MAGDALENA MILPAS ALTAS, SACATEPEQUEZ'),
(311, 'SANTA MARIA DE JESUS, SACATEPEQUEZ'),
(312, 'CIUDAD VIEJA, SACATEPEQUEZ'),
(313, 'SAN MIGUEL DUENIAS, SACATEPEQUEZ'),
(314, 'ALOTENANGO, SACATEPEQUEZ'),
(315, 'SAN ANTONIO AGUAS CALIENTES, SACATEPEQUEZ'),
(316, 'SANTA CATARINA BARAHONA, SACATEPEQUEZ'),
(400, 'CHIMALTENANGO'),
(401, 'CHIMALTENANGO, CHIMALTENANGO'),
(402, 'SAN JOSE POAQUIL, CHIMALTENANGO'),
(403, 'SAN JUAN COMALAPA, CHIMALTENANGO'),
(404, 'SANTA APOLONIA, CHIMALTENANGO'),
(405, 'TECPAN GUATEMALA, CHIMALTENANGO'),
(406, 'PATZUN, CHIMALTENANGO'),
(407, 'POCHUTA, CHIMALTENANGO'),
(408, 'PATZICIA, CHIMALTENANGO'),
(409, 'SANTA CRUZ BALANYA, CHIMALTENANGO'),
(410, 'ACATENANGO, CHIMALTENANGO'),
(411, 'YEPOCAPA, CHIMALTENANGO'),
(412, 'SAN ANDRES ITZAPA, CHIMALTENANGO'),
(413, 'PARRAMOS, CHIMALTENANGO'),
(414, 'ZARAGOZA, CHIMALTENANGO'),
(415, 'EL TEJAR, CHIMALTENANGO'),
(416, 'SAN MARTIN JILOTEPEQUE, CHIMALTENANGO'),
(500, 'ESCUINTLA'),
(501, 'ESCUINTLA, ESCUINTLA'),
(502, 'SANTA LUCIA COTZUMALGUAPA, ESCUINTLA'),
(503, 'LA DEMOCRACIA, ESCUINTLA'),
(504, 'SIQUINALA, ESCUINTLA'),
(505, 'MASAGUA, ESCUINTLA'),
(506, 'TIQUISATE, ESCUINTLA'),
(507, 'LA GOMERA, ESCUINTLA'),
(508, 'GUANAGAZAPA, ESCUINTLA'),
(509, 'SAN JOSE, ESCUINTLA'),
(510, 'IZTAPA, ESCUINTLA'),
(511, 'PALIN, ESCUINTLA'),
(512, 'SAN VICENTE PACAYA, ESCUINTLA'),
(513, 'NUEVA CONCEPCION, ESCUINTLA'),
(600, 'SANTA ROSA'),
(601, 'CUILAPA, SANTA ROSA'),
(602, 'BARBERENA, SANTA ROSA'),
(603, 'SANTA ROSA DE LIMA, SANTA ROSA'),
(604, 'CASILLAS, SANTA ROSA'),
(605, 'SAN RAFAEL LAS FLORES, SANTA ROSA'),
(606, 'ORATORIO, SANTA ROSA'),
(607, 'SAN JUAN TECUACO, SANTA ROSA'),
(608, 'CHIQUIMULILLA, SANTA ROSA'),
(609, 'TAXISCO, SANTA ROSA'),
(610, 'SANTA MARIA IXHUATAN, SANTA ROSA'),
(611, 'GUAZACAPAN, SANTA ROSA'),
(612, 'SANTA CRUZ NARANJO, SANTA ROSA'),
(613, 'PUEBLO NUEVO VINAS, SANTA ROSA'),
(614, 'NUEVA SANTA ROSA, SANTA ROSA'),
(700, 'SOLOLA'),
(701, 'SOLOLA, SOLOLA'),
(702, 'SAN JOSE CHACAYA, SOLOLA'),
(703, 'SANTA MARIA VISITACION, SOLOLA'),
(704, 'SANTA LUCIA UTATLAN, SOLOLA, SOLOLA'),
(705, 'NAHUALA, SOLOLA'),
(706, 'SANTA CATARINA IXTAHUACAN, SOLOLA'),
(707, 'SANTA CLARA DE LAGUNA, SOLOLA'),
(708, 'CONCEPCION, SOLOLA'),
(709, 'SAN ANDRES SEMETEBAJ, SOLOLA'),
(710, 'PANAJACHEL, SOLOLA'),
(711, 'SANTA CATARINA PALOPO, SOLOLA'),
(712, 'SAN ANTONIO PALOPO, SOLOLA'),
(713, 'SAN LUCAS TOLIMAN, SOLOLA'),
(714, 'SANTA CRUZ LA LAGUNA, SOLOLA'),
(715, 'SAN PABLO LA LAGUNA, SOLOLA'),
(716, 'SAN MARCOS LA LAGUNA, SOLOLA'),
(717, 'SAN JUAN LA LAGUNA, SOLOLA'),
(718, 'SAN PEDRO LA LAGUNA, SOLOLA'),
(719, 'SANTIAGO ATITLAN, SOLOLA'),
(800, 'TOTONICAPAN'),
(801, 'TOTONICAPAN, TOTONICAPAN'),
(802, 'SAN CRISTOBAL TOTONICAPAN, TOTONICAPAN'),
(803, 'SAN FRANCISCO EL ALTO, TOTONICAPAN'),
(804, 'SAN ANDRES XECUL, TOTONICAPAN'),
(805, 'MOMOSTENANGO, TOTONICAPAN'),
(806, 'SANTA MARIA CHIQUIMULA, TOTONICAPAN'),
(807, 'SANTA LUCIA LA REFORMA, TOTONICAPAN'),
(808, 'SAN BARTOLO, TOTONICAPAN'),
(900, 'QUEZALTENANGO'),
(901, 'QUEZALTENANGO, QUEZALTENANGO'),
(902, 'OLINTEPEQUE, QUEZALTENANGO'),
(903, 'OLINTEPEQUE, QUEZALTENANGO'),
(904, 'SAN CARLOS SIJA, QUEZALTENANGO'),
(905, 'SIBILIA, QUEZALTENANGO'),
(906, 'CABRICAN, QUEZALTENANGO'),
(907, 'CAJOLA, QUEZALTENANGO'),
(908, 'SAN MIGUEL SIUGUILA, QUEZALTENANGO'),
(909, 'OSTUNCALCO, QUEZALTENANGO'),
(910, 'SAN MATEO, QUEZALTENANGO'),
(911, 'CONCEPCION CHIQUIRICHAPA, QUEZALTENANGO'),
(912, 'SAN MARTIN SACATEPEQUEZ, QUEZALTENANGO'),
(913, 'ALMOLONGA, QUEZALTENANGO'),
(914, 'CANTEL, QUEZALTENANGO'),
(915, 'HUITAN, QUEZALTENANGO'),
(916, 'ZUNIL, QUEZALTENANGO'),
(917, 'COLOMBA, QUEZALTENANGO'),
(918, 'SAN FRANCISCO LA UNION, QUEZALTENANGO'),
(919, 'EL PALMAR, QUEZALTENANGO'),
(920, 'COATEPEQUE, QUEZALTENANGO'),
(921, 'GENOVA, QUEZALTENANGO'),
(922, 'FLORES COSTACUCA, QUEZALTENANGO'),
(923, 'LA ESPERANZA, QUEZALTENANGO'),
(924, 'PALESTINA DE LOS ALTOS, QUEZALTENANGO'),
(1000, 'SUCHITEPEQUEZ'),
(1001, 'MAZATENANGO, SUCHITEPEQUEZ'),
(1002, 'CUYOTENANGO, SUCHITEPEQUEZ'),
(1003, 'SAN FRANCISCO ZAPOTITLAN, SUCHITEPEQUEZ'),
(1004, 'SAN BERNARDINO, SUCHITEPEQUEZ'),
(1005, 'SAN JOSE EL IDOLO, SUCHITEPEQUEZ'),
(1006, 'SANTO DOMINGO SUCHITEPEQUEZ, SUCHITEPEQUEZ'),
(1007, 'SAN LORENZO, SUCHITEPEQUEZ'),
(1008, 'SAMAYAK, SUCHITEPEQUEZ'),
(1009, 'SAN PABLO JOCOPILAS, SUCHITEPEQUEZ'),
(1010, 'SAN ANTONIO SUCHITEPEQUEZ, SUCHITEPEQUEZ'),
(1011, 'SAN MIGUEL PANAN, SUCHITEPEQUEZ'),
(1012, 'SAN GABRIEL, SUCHITEPEQUEZ'),
(1013, 'CHICACAO, SUCHITEPEQUEZ'),
(1014, 'PATULUL, SUCHITEPEQUEZ'),
(1015, 'SANTA BARBARA, SUCHITEPEQUEZ'),
(1016, 'SAN JUAN BAUTISTA, SUCHITEPEQUEZ'),
(1017, 'SANTO TOMAS LA UNION, SUCHITEPEQUEZ'),
(1018, 'ZUNILITO, SUCHITEPEQUEZ'),
(1019, 'PUEBLO NUEVO, SUCHITEPEQUEZ'),
(1020, 'RIO BRAVO, SUCHITEPEQUEZ'),
(1100, 'RETALHULEU'),
(1101, 'RETALHULEU, RETALHULEU'),
(1102, 'SAN SEBASTIAN, RETALHULEU'),
(1103, 'SANTA CRUZ MULUA, RETALHULEU'),
(1104, 'SAN MARTIN ZAPOTITLAN, RETALHULEU'),
(1105, 'SAN FELIPE, RETALHULEU'),
(1106, 'SAN ANDRES VILLA SECA, RETALHULEU'),
(1107, 'CHAMPERICO, RETALHULEU'),
(1108, 'NUEVO SAN CARLOS, RETALHULEU'),
(1109, 'EL ASINTAL, RETALHULEU'),
(1110, 'LA CHORRERA, RETALHULEU'),
(1111, 'CABALLO BLANCO, RETALHULEU'),
(1200, 'SAN MARCOS'),
(1201, 'SAN MARCOS, SAN MARCOS'),
(1202, 'SAN PEDRO SACATEPEQUEZ, SAN MARCOS'),
(1203, 'SAN ANTONIO SACATEPEQUEZ, SAN MARCOS'),
(1204, 'COMITANCILLO, SAN MARCOS'),
(1205, 'SAN MIGUEL IXTAHUACAN, SAN MARCOS'),
(1206, 'CONCEPCION TUTUAPA, SAN MARCOS'),
(1207, 'TACANA, SAN MARCOS'),
(1208, 'SIBINAL, SAN MARCOS'),
(1209, 'TAJUMULCO, SAN MARCOS'),
(1210, 'TEJUTLA, SAN MARCOS'),
(1211, 'SAN RAFAEL PIE DE LA CUESTA, SAN MARCOS'),
(1212, 'NUEVO PROGRESO, SAN MARCOS'),
(1213, 'EL TUMBADOR, SAN MARCOS'),
(1214, 'EL RODEO, SAN MARCOS'),
(1215, 'MALACATAN, SAN MARCOS'),
(1216, 'CATARINA, SAN MARCOS'),
(1217, 'CIUDAD TECUN UMAN, SAN MARCOS'),
(1218, 'OCOS, SAN MARCOS'),
(1219, 'SAN PABLO, SAN MARCOS'),
(1220, 'EL QUETZAL, SAN MARCOS'),
(1221, 'LA REFORMA, SAN MARCOS'),
(1222, 'PAJAPITA, SAN MARCOS'),
(1223, 'IXCHIGUAN, SAN MARCOS'),
(1224, 'S. JOSE, SAN MARCOS'),
(1225, 'S. CRISTOBAL, SAN MARCOS'),
(1226, 'SIPACAPA, SAN MARCOS'),
(1227, 'ESQUIPULAS PALO GORDO, SAN MARCOS'),
(1228, 'RIO BLANCO, SAN MARCOS'),
(1229, 'SAN LORENZO, SAN MARCOS'),
(1300, 'HUEHUETENANGO'),
(1301, 'HUEHUETENANGO, HUEHUETENANGO'),
(1302, 'CHIANTLA, HUEHUETENANGO'),
(1303, 'MALACATANCITO, HUEHUETENANGO'),
(1304, 'CUILCO, HUEHUETENANGO'),
(1305, 'NENTON, HUEHUETENANGO'),
(1306, 'SAN PEDRO NECTA, HUEHUETENANGO'),
(1307, 'JACALTENANGO, HUEHUETENANGO'),
(1308, 'SAN PEDRO SOLOMA, HUEHUETENANGO'),
(1309, 'IXTAHUACAN, HUEHUETENANGO'),
(1310, 'SANTA BARBARA, HUEHUETENANGO'),
(1311, 'LA LIBERTAD, HUEHUETENANGO'),
(1312, 'LA DEMOCRACIA, HUEHUETENANGO'),
(1313, 'SAN MIGUEL ACATAN, HUEHUETENANGO'),
(1314, 'SAN RAFAEL LA INDEPENDENCIA, HUEHUETENANGO'),
(1315, 'TODOS SANTOS CUCHUMATAN, HUEHUETENANGO'),
(1316, 'SAN JUAN ATITLAN, HUEHUETENANGO'),
(1317, 'SANTA EULALIA, HUEHUETENANGO'),
(1318, 'SAN MATEO IXTATAN, HUEHUETENANGO'),
(1319, 'COLOTENANGO, HUEHUETENANGO'),
(1320, 'SAN SEBASTIAN HUEHUETENANGO, HUEHUETENANGO'),
(1321, 'TECTITAN, HUEHUETENANGO'),
(1322, 'CONCEPCION, HUEHUETENANGO'),
(1323, 'SAN JUAN IXCOY, HUEHUETENANGO'),
(1324, 'SAN ANTONIO HUISTA, HUEHUETENANGO'),
(1325, 'SAN SEBASTIAN COATAN, HUEHUETENANGO'),
(1326, 'BARILLAS, HUEHUETENANGO'),
(1327, 'AGUACATAN, HUEHUETENANGO'),
(1328, 'SAN RAFAEL PETZAL, HUEHUETENANGO'),
(1329, 'SAN GASPAR IXCHIL, HUEHUETENANGO'),
(1330, 'SANTIAGO CHIMALTENANGO, HUEHUETENANGO'),
(1331, 'SANTA ANA HUISTA, HUEHUETENANGO'),
(1400, 'QUICHE'),
(1401, 'SANTA CRUZ DEL QUICHE, QUICHE'),
(1402, 'CHICHE, QUICHE'),
(1403, 'CHINIQUE, QUICHE'),
(1404, 'ZACUALPA, QUICHE'),
(1405, 'CHAJUL, QUICHE'),
(1406, 'CHICHICASTENANGO, QUICHE'),
(1407, 'PATZITE QUICHE, QUICHE'),
(1408, 'SAN ANTONIO ILOTENANGO, QUICHE'),
(1409, 'SAN PEDRO JOCOPILAS, QUICHE'),
(1410, 'CUNEN, QUICHE'),
(1411, 'SAN JUAN COTZAL, QUICHE'),
(1412, 'JOYABAJ, QUICHE'),
(1413, 'NEBAJ, QUICHE'),
(1414, 'SAN ANDRES SAJCABAJA, QUICHE'),
(1415, 'USPANTAN, QUICHE'),
(1416, 'SACAPULAS, QUICHE'),
(1417, 'SAN BARTOLOME JOCOTENANGO, QUICHE'),
(1418, 'CANILLA, QUICHE'),
(1419, 'IXCAN, QUICHE'),
(1420, 'PACHALUN, QUICHE'),
(1500, 'BAJA VERAPAZ'),
(1501, 'SALAMA, BAJA VERAPAZ'),
(1502, 'SAN MIGUEL CHICAJ, BAJA VERAPAZ'),
(1503, 'RABINAL, BAJA VERAPAZ'),
(1504, 'CUBULCO, BAJA VERAPAZ'),
(1505, 'GRANADOS, BAJA VERAPAZ'),
(1506, 'EL CHOL, BAJA VERAPAZ'),
(1507, 'SAN JERONIMO, BAJA VERAPAZ'),
(1508, 'PURULHA, BAJA VERAPAZ'),
(1600, 'ALTA VERAPAZ'),
(1601, 'COBAN, ALTA VERAPAZ'),
(1602, 'SANTA CRUZ VERAPAZ, ALTA VERAPAZ'),
(1603, 'SAN CRISTOBAL VERAPAZ, ALTA VERAPAZ'),
(1604, 'TACTIC, ALTA VERAPAZ'),
(1605, 'TAMAHU, ALTA VERAPAZ'),
(1606, 'TUCURU, ALTA VERAPAZ'),
(1607, 'PANZOS, ALTA VERAPAZ'),
(1608, 'SENAHU, ALTA VERAPAZ'),
(1609, 'SAN PEDRO CARCHA, ALTA VERAPAZ'),
(1610, 'SAN JUAN CHAMELCO, ALTA VERAPAZ'),
(1611, 'LANQUIN, ALTA VERAPAZ'),
(1612, 'CAHABON, ALTA VERAPAZ'),
(1613, 'CHISEC, ALTA VERAPAZ'),
(1614, 'CHAAL, ALTA VERAPAZ'),
(1615, 'FRAY BARTOLOME DE LAS CASAS, ALTA VERAPAZ'),
(1616, 'RAXRUHA, ALTA VERAPAZ'),
(1617, 'SEBOL, ALTA VERAPAZ'),
(1700, 'PETEN'),
(1701, 'FLORES, PETEN'),
(1702, 'SAN JOSE, PETEN'),
(1703, 'SAN BENITO, PETEN'),
(1704, 'SAN ANDRES, PETEN'),
(1705, 'LA LIBERTAD, PETEN'),
(1706, 'SAN FRANCISCO, PETEN'),
(1707, 'SANTA ANA, PETEN'),
(1708, 'DOLORES, PETEN'),
(1709, 'SAN LUIS, PETEN'),
(1710, 'SAYAXCHE, PETEN'),
(1711, 'MELCHOR DE MENCOS, PETEN'),
(1712, 'POPTUN, PETEN'),
(1713, 'SANTA ELENA PETEN, PETEN'),
(1714, 'SANTO TORIBIO, PETEN'),
(1715, 'SAN FERNANDO, PETEN'),
(1716, 'FALLABON, PETEN'),
(1717, 'JOLOMBICHE, PETEN'),
(1718, 'NACTUN, PETEN'),
(1800, 'IZABAL'),
(1801, 'PUERTO BARRIOS,IZABAL'),
(1802, 'LIVINGSTON,IZABAL'),
(1803, 'EL ESTOR,IZABAL'),
(1804, 'MORALES,IZABAL'),
(1805, 'LOS AMATES,IZABAL'),
(1900, 'ZACAPA'),
(1901, 'ZACAPA, ZACAPA'),
(1902, 'ESTANZUELA, ZACAPA'),
(1903, 'RIO HONDO, ZACAPA'),
(1904, 'GUALAN, ZACAPA'),
(1905, 'TECULUTAN, ZACAPA'),
(1906, 'USUMATLAN, ZACAPA'),
(1907, 'CABA AS, ZACAPA'),
(1908, 'SAN DIEGO, ZACAPA'),
(1909, 'LA UNION, ZACAPA'),
(1910, 'HUITE, ZACAPA'),
(2000, 'CHIQUIMULA'),
(2001, 'CHIQUIMULA, CHIQUIMULA'),
(2002, 'SAN JOSE LA ARADA, CHIQUIMULA'),
(2003, 'SAN JUAN ERMITA, CHIQUIMULA'),
(2004, 'JOCOTAN, CHIQUIMULA'),
(2005, 'CAMOTAN, CHIQUIMULA'),
(2006, 'OLOPA, CHIQUIMULA'),
(2007, 'ESQUIPULAS, CHIQUIMULA'),
(2008, 'CONCEPCION LAS MINAS, CHIQUIMULA'),
(2009, 'QUEZALTEPEQUE, CHIQUIMULA'),
(2010, 'SAN JACINTO, CHIQUIMULA'),
(2011, 'IPALA, CHIQUIMULA'),
(2100, 'JALAPA'),
(2101, 'JALAPA, JALAPA'),
(2102, 'SAN PEDRO PINULA, JALAPA'),
(2103, 'SAN LUIS JILOTEPEQUE, JALAPA'),
(2104, 'SAN MANUEL CHAPARRON, JALAPA'),
(2105, 'SAN CARLOS ALZATATE, JALAPA'),
(2106, 'MONJAS, JALAPA'),
(2107, 'MATAQUESCUINTLA, JALAPA'),
(2200, 'JUTIAPA'),
(2201, 'JUTIAPA, JUTIAPA'),
(2202, 'EL PROGRESO, JUTIAPA'),
(2203, 'SANTA CATARINA MITA, JUTIAPA'),
(2204, 'AGUA BLANCA, JUTIAPA'),
(2205, 'ASUNCION MITA, JUTIAPA'),
(2206, 'YUPILTEPEQUE, JUTIAPA'),
(2207, 'ATESCATEMPA, JUTIAPA'),
(2208, 'JEREZ, JUTIAPA'),
(2209, 'EL ADELANTO, JUTIAPA'),
(2210, 'ZAPOTITLAN, JUTIAPA'),
(2211, 'COMAPA, JUTIAPA'),
(2212, 'JALPATAGUA, JUTIAPA'),
(2213, 'CONGUACO, JUTIAPA'),
(2214, 'MOYUTA, JUTIAPA'),
(2215, 'PASACO, JUTIAPA'),
(2216, 'SAN JOSE ACATEMPA, JUTIAPA'),
(2217, 'QUEZADA, JUTIAPA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factorviolencia`
--

CREATE TABLE IF NOT EXISTS `factorviolencia` (
  `fact_codigo` int(11) NOT NULL,
  `fact_descripcion` varchar(28) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factorviolencia`
--

INSERT INTO `factorviolencia` (`fact_codigo`, `fact_descripcion`) VALUES
(1, 'FALTA DE PAGO EXTORSIÓN'),
(2, 'RIVALIDAD'),
(3, 'ASALTO Y ROBO'),
(4, 'PROBLEMAS PERSONALES'),
(5, 'PROBLEMAS PERSONALES'),
(6, 'AJUSTE DE CUENTAS'),
(7, 'BALA PERDIDA'),
(8, 'CAUSA POR ESTABLECER'),
(9, 'DISCUSIÓN'),
(10, 'VENGANZA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hecho`
--

CREATE TABLE IF NOT EXISTS `hecho` (
  `h_codigo` int(11) NOT NULL,
  `h_descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hecho`
--

INSERT INTO `hecho` (`h_codigo`, `h_descripcion`) VALUES
(1, 'ROBO VEHICULO'),
(2, 'ASESINATO'),
(3, 'ASALTO A BANCOS'),
(4, 'ROBO CAMIONES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hecho_forma`
--

CREATE TABLE IF NOT EXISTS `hecho_forma` (
  `form_codigo` int(11) NOT NULL,
  `form_descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hecho_forma`
--

INSERT INTO `hecho_forma` (`form_codigo`, `form_descripcion`) VALUES
(1, 'VEHICULO'),
(2, 'MOTO'),
(3, 'A PIE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE IF NOT EXISTS `paises` (
  `pais_codigo` int(11) NOT NULL,
  `pais_desc_lg` varchar(64) NOT NULL,
  `pais_desc_ct` varchar(32) NOT NULL,
  `pais_gentilicio` varchar(32) NOT NULL,
  `pais_dominio` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`pais_codigo`, `pais_desc_lg`, `pais_desc_ct`, `pais_gentilicio`, `pais_dominio`) VALUES
(1, 'ESTADOS UNIDOS', 'USA', 'ESTADOUNIDENSE', '.us'),
(2, 'REP?BLICA DOMINICANA', 'DOM', 'DOMINICANO/NA', '.do'),
(7, 'FEDERACION RUSA', 'RUS', 'RUSO/SA', '.ru'),
(11, 'CANAD?', 'CAN', 'CANADIENSE', '.ca'),
(20, 'EGIPTO', 'EGY', 'EGIPCIO/CIA', '.eg'),
(27, 'SUD?FRICA', 'ZAF', 'SUDAFRICANO/NA', '.za'),
(30, 'GRECIA', 'GRC', 'GRIEGO/GA', '.gr'),
(31, 'PA?SES BAJOS', 'NLD', 'NEERLAND?S/SA', '.nl'),
(32, 'B?LGICA', 'BEL', 'BELGA', '.be'),
(33, 'FRANCIA', 'FRA', 'FRANC?S/SA', '.fr'),
(34, 'ESPA?A', 'ESP', 'ESPA?OL/LA', '.es'),
(36, 'HUNGR?A', 'HUN', 'H?NGARO/RA', '.hu'),
(39, 'ITALIA', 'ITA', 'ITALIANO/NA', '.it'),
(40, 'RUMANIA', 'ROU', 'RUMANO/NA', '.ro'),
(41, 'SUIZA', 'CHE', 'SUIZO/ZA', '.ch'),
(43, 'AUSTRIA', 'AUT', 'AUSTR?ACO/CA', '.at'),
(44, 'REINO UNIDO', 'GBR', 'BRIT??NICO/CA', '.uk'),
(45, 'DINAMARCA', 'DNK', 'DAN?S/SA', '.dk'),
(46, 'SUECIA', 'SWE', 'SUECO/CA', '.se'),
(47, 'NORUEGA', 'NOR', ' NORUEGO/GA', '.no'),
(48, 'POLONIA', 'POL', 'POLACO/CA', '.pl'),
(49, 'ALEMANIA', 'DEU', ' ALEM??N/NA', '.de'),
(51, 'PER', 'PER', 'PERUANO/A', '.pe'),
(52, 'M?XICO', 'MEX', 'MEXICANO/A', '.mx'),
(53, 'CUBA', 'CUB', 'CUBANO/A', '.cu'),
(54, 'ARGENTINA', 'ARG', 'ARGENTINO/A', '.ar'),
(55, 'BRASIL', 'BRA', 'BRASILE?O/A BRASILERO/A', '.br'),
(56, 'CHILE', 'CHL', 'CHILENO/A', '.cl'),
(57, 'COLOMBIA', 'COL', 'COLOMBIANO/A', '.co'),
(58, 'VENEZUELA', 'VEN', 'VENEZOLANO/A', '.ve'),
(60, 'MALASIA', 'MYS', 'MALASIO/SIA', '.my'),
(61, 'AUSTRALIA', 'AUS', 'AUSTRALIANO/NA', '.au'),
(62, 'INDONESIA', 'IDN', 'INDONESIO/SIA', '.id'),
(63, 'FILIPINAS', 'PHL', 'FILIPINO/NA', '.ph'),
(64, 'NUEVA ZELANDA', 'NZL', 'NEOZELAND?S/SA', '.nz'),
(65, 'SINGAPUR', 'SGP', 'SINGAPURENSE', '.sg'),
(66, 'TAILANDIA', 'THA', 'TAILAND?S/SA', '.th'),
(77, 'KAZAJIST?N', 'KAZ', 'KAZAJO/JA', '.kz'),
(81, 'JAP?N', 'JPN', 'JAPON?S/SA', '.jp'),
(82, 'REP?BLICA DE COREA', 'KOR', 'SURCOREANO/NA', '.kr'),
(84, 'VIET NAM', 'VNM', 'VIETNAMITA', '.vn'),
(86, 'REP?BLICA POPULAR DE CHINA', 'CHN', 'CHINO/NA', '.cn'),
(90, 'TURQU?A', 'TUR', 'TURCO/CA', '.tr'),
(91, 'INDIA', 'IND', 'HIND', '.in'),
(92, 'PAKIST?N', 'PAK', 'PAKISTAN', '.pk'),
(93, 'AFGANIST?N', 'AFG', 'AFGANO/NA', '.af'),
(94, 'SRI LANKA', 'LKA', 'ESRILANQU?S/SA', '.lk'),
(95, 'BIRMANIA', 'MBN', 'BIRMANO/NA', '.br'),
(98, 'REP?BLICA ISL?MICA DE IR?N', 'IRN', 'IRAN', '.ir'),
(211, 'SUD?N DEL SUR', 'SSD', 'SURSUDAN?S/SA', '.ss'),
(212, 'MARRUECOS', 'MAR', 'MARROQU', '.ma'),
(213, 'ARGELIA', 'DZA', ' ARGELINO/NA', '.dz'),
(216, 'T?NEZ', 'TUN', 'TUNECINO/NA', '.tn'),
(218, 'LIBIA', 'LBY', 'LIBIO/A', '.ly'),
(220, 'GAMBIA', 'GMB', 'GAMBIANO/NA', '.gm'),
(221, 'SENEGAL', 'SEN', 'SENEGAL?S/SA', '.sn'),
(222, 'MAURITANIA', 'MRT', 'MAURITANO/NA', '.mr'),
(223, 'MAL', 'MLI', 'MALIENSE, MAL', '.ml'),
(224, 'GUINEA', 'GIN', 'GUINEANO/NA', '.gn'),
(225, 'COSTA DE MARFIL', 'CIV', 'MARFILE?O/?A', '.ci'),
(226, 'BURKINA FASO', 'BFA', 'BURKIN?S', '.bf'),
(227, 'N?GER', 'NER', 'NIGERINO/NA', '.ne'),
(228, 'TOGO', 'TGO', 'TOGOL?S/SA', '.tg'),
(229, 'BEN?N', 'BEN', 'BENIN?S/SA', '.bj'),
(230, 'MAURICIO', 'MUS', 'MAURICIANO/NA', '.mu'),
(231, 'LIBERIA', 'LBR', 'LIBERIANO/NA', '.lr'),
(232, 'SIERRA LEONA', 'SLE', 'SIERRALEON?S/SA', '.sl'),
(233, 'GHANA', 'GHA', 'GHAN?S/SA', '.gh'),
(234, 'NIGERIA', 'NGA', 'NIGERIANO /NA', '.ng'),
(235, 'CHAD', 'TCD', 'CHADIANO/NA', '.td'),
(236, 'REP?BLICA CENTROAFRICANA', 'CAF', 'CENTROAFRICANO/NA', '.cf'),
(237, 'CAMER?N', 'CMR', 'CAMERUN?S/SA', '.cm'),
(238, 'CABO VERDE', 'CPV', 'CABOVERDIANO/NA', '.cv'),
(239, 'SANTO TOM? Y PRINCIPE', 'STP', 'SANTOTOMENSE', '.st'),
(240, 'GUINEA ECUATORIAL', 'GNQ', 'ECUATOGUINEANO/NA', '.gq'),
(241, 'GAB?N', 'GAB', 'GABON?S/SA', '.ga'),
(242, 'LA REP?BLICA DEMOCR?TICA DEL CONGO', 'COD', 'CONGOLE?O/?A', '.cd'),
(243, 'CONGO', 'COG', 'CONGOLE?O/?A', '.cg'),
(244, 'ANGOLA', 'AGO', 'ANGOLE?O/?A', '.ao'),
(245, 'GUINEA-BIS?U', 'GNB', 'GUINEANO/NA', '.gw'),
(248, 'SEYCHELLES', 'SYC', 'SEYCHELLENSE', '.sc'),
(249, 'SUD?N', 'SDN', 'SUDAN?S/SA', '.sd'),
(250, 'RUANDA', 'RWA', 'RUAND?S/SA', '.rw'),
(251, 'ETIOP?A', 'ETH', 'ET?OPE', '.et'),
(252, 'SOMALIA', 'SOM', 'SOMAL', '.so'),
(253, 'YIBUTI', 'DJI', 'YIBUTIANO/NA', '.dj'),
(254, 'KENIA', 'KEN', 'KENIANO/NA', '.ke'),
(255, 'REP?BLICA UNIDA DE TANZANIA', 'TZA', 'TANZANO/NA', '.tz'),
(256, 'UGANDA', 'UGA', 'UGAND?S/SA', '.ug'),
(257, 'BURUNDI', 'BDI', 'BURUND?S/SA', '.bi'),
(258, 'MOZAMBIQUE', 'MOZ', 'MOZAMBIQUE?O/?A', '.mz'),
(260, 'ZAMBIA', 'ZMB', 'ZAMBIANO/NA', '.zm'),
(261, 'MADAGASCAR', 'MDG', ' MALGACHE', '.mg'),
(263, 'ZIMBABUE', 'ZWE', 'ZIMBABUENSE', '.zw'),
(264, 'NABIMIA', 'NAM', 'NAMIBIO/BIA', '.na'),
(265, 'MALAUI', 'MWI', 'MALAU', '.mw'),
(266, 'LESOTO', 'LSO', 'LESOTENSE', '.ls'),
(267, 'BOTSUANA', 'BWA', 'BOTSUANO/NA', '.bw'),
(268, 'SUAZILANDIA', 'SWZ', ' SUAZI', '.sz'),
(269, 'COMORAS', 'COM', 'COMORENSE', '.km'),
(291, 'ERITREA', 'ERI', 'ERITREO/A', '.er'),
(297, 'ARUBA', 'ABW', 'ARUBE?O/?A', '.aw'),
(350, 'GIBRALTAR', 'GIB', 'GIBRALTARE?O/?A', '.gi'),
(351, 'PORTUGAL', 'PRT', 'PORTUGU?S/SA', '.pt'),
(352, 'LUXEMBURGO', 'LUX', 'LUXEMBURGU?S/SA', '.lu'),
(353, 'IRLANDA', 'IRL', 'IRLAND?S/SA', '.ie'),
(354, 'ISLANDIA', 'ISL', 'ISLAND?S/SA', '.is'),
(355, 'ALBANIA', 'ALB', 'ALBAN?S/SA', '.al'),
(356, 'MALTA', 'MLT', 'MALT?S/SA', '.mt'),
(357, 'CHIPRE', 'CYP', 'CHIPRIOTA', '.cy'),
(358, 'FINLANDIA', 'FIN', 'FINLAND?S/SA', '.fi'),
(359, 'BULGARIA', 'BGR', 'B?LGARO/RA', '.bg'),
(370, 'LITUANIA', 'LTU', 'LITUANO/NA', '.lt'),
(371, 'LETONIA', 'LVA', 'LET?N/NA', '.lv'),
(372, 'ESTONIA', 'EST', 'ESTONIO/NIA', '.ee'),
(373, 'REP?BLICA DE MOLDAVIA', 'MDA', 'MOLDAVO/VA', '.md'),
(374, 'ARMENIA', 'ARM', 'ARMENIO/NIA', '.am'),
(375, 'BIELORRUSIA', 'BLR', 'BIELORRUSO/SA', '.by'),
(376, 'ANDORRA', 'AND', 'ANDORRANO/NA', '.ad'),
(377, 'M?NACO', 'MCO', 'MONEGASCO/CA', '.mc'),
(378, 'SAN MARINO', 'SMR', 'SANMARINENSE', '.sm'),
(380, 'UCRANIA', 'UKR', 'UCRANIANO/NA', '.ua'),
(381, 'SERBIA', 'SRB', 'SERBIO/A', '.rs'),
(382, 'MONTENEGRO', 'MNE', 'MONTENEGRINO/NA', '.me'),
(385, 'CROACIA', 'HRV', ' CROATA', '.hr'),
(386, 'ESLOVENIA', 'SVN', 'ESLOVENO/NA', '.si'),
(387, 'BOSNIA Y HERZEGOVINA', 'BIH', 'BOSNIOHERZEGOVINO/NA', '.ba'),
(420, 'REP?BLICA CHECA', 'CZE', ' CHECO/CA', '.cz'),
(421, 'ESLOVAQUIA', 'SVK', 'ESLOVACO/CA', '.sk'),
(423, 'LIECHTENSTEIN', 'LIE', 'LIECHTENSTEINIANO/NA', '.li'),
(444, 'GUERNSEY', 'GGY', 'GUERNESIAIS', '.gg'),
(501, 'BELICE', 'BLZ', 'BELICE?O/?A', '.bz'),
(502, 'GUATEMALA', 'GTM', 'GUATEMALTECO/A', '.gt'),
(503, 'EL SALVADOR', 'SLV', 'SALVADORE?O/?A', '.sv'),
(504, 'HONDURAS', 'HND', 'HONDURE?O/A', '.hn'),
(505, 'NICARAGUA', 'NIC', 'NICARAG??ENSE', '.ni'),
(506, 'COSTA RICA', 'CRI', 'COSTARRICENSE', '.cr'),
(507, 'PANAM?', 'PAN', 'PANAME?O/?A', '.pa'),
(509, 'HAIT', 'HTI', 'HAITIANO/A', '.ht'),
(590, 'GUADALUPE', 'GLP', 'GUADALUPE?O/?A', '.gp'),
(591, 'BOLIVIA', 'BOL', 'BOLIVIANO/A', '.bo'),
(592, 'GUYANA', 'GUY', 'GUYAN?S/ESA', '.gy'),
(593, 'ECUADOR', 'ECU', 'ECUATORIANO/A', '.ec'),
(594, 'GUAYANA FRANCESA', 'GUF', 'GUYANOFRANCES', '.gf'),
(595, 'PARAGUAY', 'PRY', 'PARAGUAYO/A', '.py'),
(597, 'SURINAM', 'SUR', 'SURINAM?S/ESA', '.sr'),
(598, 'URUGUAY', 'URY', 'URUGUAYO/A', '.uy'),
(599, 'CURAZAO', 'CUW', 'CURAZOLE?O/?A', '.cw'),
(670, 'TIMOR-LESTE', 'TLS', 'TIMORENSE', '.tl'),
(673, 'BRUN?I DARUSSALAM', 'BRN', 'BRUNEANO/NA', '.bn'),
(674, 'NAURU', 'NRU', 'NAURUANO/NA', '.nr'),
(675, 'PAP?A NUEVA GUINEA', 'PNG', 'PAP', '.pg'),
(676, 'TONGA', 'TON', 'TONGANO/NA', '.to'),
(677, 'ISLAS SALOM?N', 'SLB', 'SALOMONENSE', '.sb'),
(678, 'VANUATU', 'VUT', 'VANUATUENSE', '.vu'),
(679, 'FIYI', 'FJI', 'FIYIANO/NA', '.fj'),
(680, 'PALAOS', 'PLW', 'PALAUANO/NA', '.pw'),
(685, 'SAMOA', 'WSM', 'SAMOANO/NA', '.ws'),
(686, 'KIRIBATI', 'KIR', 'KIRIBATIANO/NA', '.ki'),
(688, 'TUVALU', 'TUV', 'TUVALUANO/NA', '.tv'),
(691, 'ESTADOS FEDERADOS DE MICRONESIA', 'FSM', 'MICRONESIO/SIA', '.fm'),
(692, 'ISLAS MARSHALL', 'MHL', 'MARSHAL?S/SA', '.mh'),
(787, 'PUERTO RICO', 'PRI', 'PUERTORIQUE?O/?A', '.pr'),
(850, 'REP?BLICA DEMOCR?TICA POPULAR DE COREA', 'PRK', 'NORCOREANO/NA', '.kp'),
(852, 'HONG KONG', 'HKG', 'HONGKON?S', '.hk'),
(855, 'CAMBOYA', 'KHM', 'CAMBOYANO/NA', '.kh'),
(880, 'BANGLAD?S', 'BGD', 'BANGLADES', '.bd'),
(886, 'TAIW?N', 'TWN', 'TAIWANES', '.tw'),
(960, 'MALDIVAS', 'MDV', 'MALDIVO/VA', '.mv'),
(961, 'L?BANO', 'LBN', 'LIBAN?S/SA', '.lb'),
(962, 'JORDANIA', 'JOR', 'JORDANO/NA', '.jo'),
(963, 'REP?BLICA ARABE DE SIRIA', 'SYR', 'SIRIO/RIA', '.sy'),
(964, 'IRAK', 'IRQ', 'IRAQU', '.iq'),
(965, 'KUWAIT', 'KWT', 'KUWAIT', '.kw'),
(966, 'ARABIA SAUDITA', 'SAU', 'SAUD? O SAUDITA', '.sa'),
(967, 'YEMEN', 'YEM', 'YEMEN', '.ye'),
(968, 'OM?N', 'OMN', 'OMAN', '.om'),
(971, 'EMIRATOS ??RABES UNIDOS', 'ARE', 'EMIRAT', '.ae'),
(972, 'ISRAEL', 'ISR', 'ISRAEL', '.il'),
(973, 'BAR?IN', 'BHR', 'BAREIN', '.bh'),
(974, 'QATAR', 'QAT', ' CATAR', '.qa'),
(975, 'BUT?N', 'BTN', 'BUTAN?S/SA', '.bt'),
(976, 'MONGOLIA', 'MNG', 'MONGOL/LA', '.mn'),
(977, 'NEPAL', 'NPL', 'NEPAL?S/SA; NEPAL', '.np'),
(992, 'TAYIKIST?N', 'TJK', 'TAYIKO/KA', '.tj'),
(993, 'TURKMENIST?N', 'TKM', 'TURCOMANO/NA', '.tm'),
(994, 'AZERBAIY?N', 'AZE', 'AZERBAIYANO/NA', '.az'),
(995, 'GEORGIA', 'GEO', 'GEORGIANO/NA', '.ge'),
(996, 'KIRGUIST?N', 'KGZ', 'KIRGU?S', '.kg'),
(998, 'UZBEKIST?N', 'UZB', 'UZBEKO/KA', '.uz'),
(1242, 'BAHAMAS', 'BHS', 'BAHAME?O/?A', '.bs'),
(1246, 'BARBADOS', 'BRB', 'BARBADENSE', '.bb'),
(1264, 'ANGUILA', 'AIA', 'ANGUILENSE/A', '.ai'),
(1268, 'ANTIGUA Y BARBUDA', 'ATG', 'ANTIGUANO/NA', '.ag'),
(1441, 'BERMUDAS', 'BMU', 'BERMUDE?O/?A', '.bm'),
(1473, 'GRANADA', 'GRD', 'GRANADINO/A', '.gd'),
(1671, 'GUAM', 'GUM', 'GUAME?O/?A', '.gu'),
(1758, 'SANTA LUC?A', 'LCA', 'SANTALUCENSE', '.lc'),
(1767, 'DOMINICA', 'DMA', 'DOMINIQU?S', '.dm'),
(1784, 'SAN VICENTE Y LAS GRANADINAS', 'VCT', 'SANVICENTINO/NA', '.vc'),
(1868, 'TRINIDAD Y TOBAGO', 'TTO', 'TRINITENSE', '.tt'),
(1869, 'SAN CRIST?BAL Y NIEVES', 'KNA', 'CRISTOBALE?O/?A', '.kn'),
(1876, 'JAMAICA', 'JAM', 'JAMAIQUINO/NA', '.jm'),
(6721, 'ANT?RTIDA', 'ATA', 'ANTARTICO/A', '.aq');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
  `per_codigo` int(11) NOT NULL,
  `per_dpi` bigint(20) NOT NULL,
  `per_nom1` varchar(32) NOT NULL,
  `per_nom2` varchar(32) NOT NULL,
  `per_ape1` varchar(32) NOT NULL,
  `per_ape2` varchar(32) NOT NULL,
  `per_nacionalidad` int(11) NOT NULL,
  `per_observaciones` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usu_catalogo` int(11) NOT NULL,
  `usu_nom1` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `usu_nom2` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `usu_ape1` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `usu_ape2` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `usu_nivel` int(11) NOT NULL,
  `usu_usuario` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `usu_pass` varchar(250) COLLATE latin1_general_ci NOT NULL,
  `usu_avilita` int(1) NOT NULL,
  `usu_situacion` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci COMMENT='GUARDA LOS USUARIOS DEL SISTEMA';

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usu_catalogo`, `usu_nom1`, `usu_nom2`, `usu_ape1`, `usu_ape2`, `usu_nivel`, `usu_usuario`, `usu_pass`, `usu_avilita`, `usu_situacion`) VALUES
(576017, 'NELSON', 'MAURICIO', 'FRANCIA', 'MENDEZ', 1, '576017', '123', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE IF NOT EXISTS `zonas` (
  `zona_codigo` int(11) NOT NULL,
  `zona_descripcion` varchar(48) NOT NULL,
  `zona_municipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `zonas`
--

INSERT INTO `zonas` (`zona_codigo`, `zona_descripcion`, `zona_municipio`) VALUES
(1, 'ZONA 1', 101),
(2, 'ZONA 2', 101),
(3, 'ZONA 3', 101),
(4, 'ZONA 4', 101),
(5, 'ZONA 5', 101),
(6, 'ZONA 6', 101),
(7, 'ZONA 7', 101),
(8, 'ZONA 8', 101),
(9, 'ZONA 9', 101),
(10, 'ZONA 10', 101),
(11, 'ZONA 11', 101),
(12, 'ZONA 12', 101),
(13, 'ZONA 13', 101),
(14, 'ZONA 14', 101),
(15, 'ZONA 15', 101),
(16, 'ZONA 16', 101),
(17, 'ZONA 17', 101),
(18, 'ZONA 18', 101),
(19, 'ZONA 19', 101),
(21, 'ZONA 21', 101),
(22, 'ZONA 22', 101),
(23, 'ZONA 23', 101),
(24, 'ZONA 24', 101),
(25, 'ZONA 25', 101);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aldea`
--
ALTER TABLE `aldea`
 ADD PRIMARY KEY (`al_codigo`);

--
-- Indices de la tabla `arma_lote`
--
ALTER TABLE `arma_lote`
 ADD PRIMARY KEY (`lot_tipo`,`lot_codigo`);

--
-- Indices de la tabla `arma_tipo`
--
ALTER TABLE `arma_tipo`
 ADD PRIMARY KEY (`tip_codigo`);

--
-- Indices de la tabla `comisarias`
--
ALTER TABLE `comisarias`
 ADD PRIMARY KEY (`com_codigo`);

--
-- Indices de la tabla `depmun`
--
ALTER TABLE `depmun`
 ADD PRIMARY KEY (`dm_codigo`);

--
-- Indices de la tabla `factorviolencia`
--
ALTER TABLE `factorviolencia`
 ADD PRIMARY KEY (`fact_codigo`);

--
-- Indices de la tabla `hecho`
--
ALTER TABLE `hecho`
 ADD PRIMARY KEY (`h_codigo`);

--
-- Indices de la tabla `hecho_forma`
--
ALTER TABLE `hecho_forma`
 ADD PRIMARY KEY (`form_codigo`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
 ADD PRIMARY KEY (`pais_codigo`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
 ADD PRIMARY KEY (`per_codigo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`usu_catalogo`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
 ADD PRIMARY KEY (`zona_codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
