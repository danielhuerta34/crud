-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2022 a las 01:50:50
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configs`
--

CREATE TABLE `configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_name_abv` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_slogan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `captcha` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datasitekey` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha_secret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caminho_img_login` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tamanho_img_login` int(11) DEFAULT NULL,
  `titulo_login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `configs`
--

INSERT INTO `configs` (`id`, `app_name`, `app_name_abv`, `app_slogan`, `captcha`, `datasitekey`, `recaptcha_secret`, `img_login`, `caminho_img_login`, `tamanho_img_login`, `titulo_login`, `layout`, `skin`, `favicon`, `created_at`, `updated_at`) VALUES
(1, 'App Name', 'AN', 'App Slogan', 'F', '', '', 'T', 'img/config/logo.png', 40, '<a href=\"#\" ><b>App</b> Name</a>', 'fixed', 'blue', 'img/config/favicon.png', '2022-10-24 23:19:57', '2022-10-24 23:19:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historical`
--

CREATE TABLE `historical` (
  `id` int(11) NOT NULL,
  `nombreIndicador` varchar(100) NOT NULL,
  `codigoIndicador` varchar(100) NOT NULL,
  `unidadMedidaIndicador` varchar(100) NOT NULL,
  `valorIndicador` int(11) NOT NULL,
  `fechaIndicador` varchar(100) NOT NULL,
  `tiempoIndicador` time DEFAULT NULL,
  `origenIndicador` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `historical`
--

INSERT INTO `historical` (`id`, `nombreIndicador`, `codigoIndicador`, `unidadMedidaIndicador`, `valorIndicador`, `fechaIndicador`, `tiempoIndicador`, `origenIndicador`) VALUES
(731, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29062, '2021-01-09', NULL, 'mindicador.cl'),
(732, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29063, '2021-01-08', NULL, 'mindicador.cl'),
(733, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29064, '2021-01-07', NULL, 'mindicador.cl'),
(734, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29065, '2021-01-06', NULL, 'mindicador.cl'),
(735, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29066, '2021-01-05', NULL, 'mindicador.cl'),
(736, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29067, '2021-01-04', NULL, 'mindicador.cl'),
(737, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29068, '2020-01-03', NULL, 'mindicador.cl'),
(738, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29068, '2020-01-02', NULL, 'mindicador.cl'),
(739, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29069, '2020-01-01', NULL, 'mindicador.cl'),
(740, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29149, '2021-02-09', NULL, 'mindicador.cl'),
(741, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29146, '2021-02-08', NULL, 'mindicador.cl'),
(742, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29143, '2021-02-07', NULL, 'mindicador.cl'),
(743, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29141, '2021-02-06', NULL, 'mindicador.cl'),
(744, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29138, '2021-02-05', NULL, 'mindicador.cl'),
(745, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29135, '2021-02-04', NULL, 'mindicador.cl'),
(746, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29132, '2021-02-03', NULL, 'mindicador.cl'),
(747, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29129, '2021-02-02', NULL, 'mindicador.cl'),
(748, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29127, '2021-02-01', NULL, 'mindicador.cl'),
(749, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29124, '2021-01-31', NULL, 'mindicador.cl'),
(750, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29121, '2021-01-30', NULL, 'mindicador.cl'),
(751, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29118, '2021-01-29', NULL, 'mindicador.cl'),
(752, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29115, '2021-01-28', NULL, 'mindicador.cl'),
(753, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29112, '2021-01-27', NULL, 'mindicador.cl'),
(754, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29110, '2021-01-26', NULL, 'mindicador.cl'),
(755, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29107, '2021-01-25', NULL, 'mindicador.cl'),
(756, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29104, '2021-01-24', NULL, 'mindicador.cl'),
(757, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29101, '2021-01-23', NULL, 'mindicador.cl'),
(758, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29098, '2021-01-22', NULL, 'mindicador.cl'),
(759, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29096, '2021-01-21', NULL, 'mindicador.cl'),
(760, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29093, '2021-01-20', NULL, 'mindicador.cl'),
(761, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29090, '2021-01-19', NULL, 'mindicador.cl'),
(762, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29087, '2021-01-18', NULL, 'mindicador.cl'),
(763, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29084, '2021-01-17', NULL, 'mindicador.cl'),
(764, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29082, '2021-01-16', NULL, 'mindicador.cl'),
(765, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29079, '2021-01-15', NULL, 'mindicador.cl'),
(766, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29076, '2021-01-14', NULL, 'mindicador.cl'),
(767, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29073, '2021-01-13', NULL, 'mindicador.cl'),
(768, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29070, '2021-01-12', NULL, 'mindicador.cl'),
(769, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29068, '2021-01-11', NULL, 'mindicador.cl'),
(770, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29065, '2021-01-10', NULL, 'mindicador.cl'),
(771, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29353, '2021-03-09', NULL, 'mindicador.cl'),
(772, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29346, '2021-03-08', NULL, 'mindicador.cl'),
(773, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29339, '2021-03-07', NULL, 'mindicador.cl'),
(774, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29331, '2021-03-06', NULL, 'mindicador.cl'),
(775, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29324, '2021-03-05', NULL, 'mindicador.cl'),
(776, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29317, '2021-03-04', NULL, 'mindicador.cl'),
(777, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29309, '2021-03-03', NULL, 'mindicador.cl'),
(778, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29302, '2021-03-02', NULL, 'mindicador.cl'),
(779, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29295, '2021-03-01', NULL, 'mindicador.cl'),
(780, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29287, '2021-02-28', NULL, 'mindicador.cl'),
(781, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29280, '2021-02-27', NULL, 'mindicador.cl'),
(782, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29273, '2021-02-26', NULL, 'mindicador.cl'),
(783, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29266, '2021-02-25', NULL, 'mindicador.cl'),
(784, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29258, '2021-02-24', NULL, 'mindicador.cl'),
(785, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29251, '2021-02-23', NULL, 'mindicador.cl'),
(786, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29244, '2021-02-22', NULL, 'mindicador.cl'),
(787, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29236, '2021-02-21', NULL, 'mindicador.cl'),
(788, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29229, '2021-02-20', NULL, 'mindicador.cl'),
(789, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29222, '2021-02-19', NULL, 'mindicador.cl'),
(790, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29215, '2021-02-18', NULL, 'mindicador.cl'),
(791, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29207, '2021-02-17', NULL, 'mindicador.cl'),
(792, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29200, '2021-02-16', NULL, 'mindicador.cl'),
(793, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29193, '2021-02-15', NULL, 'mindicador.cl'),
(794, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29185, '2021-02-14', NULL, 'mindicador.cl'),
(795, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29178, '2021-02-13', NULL, 'mindicador.cl'),
(796, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29171, '2021-02-12', NULL, 'mindicador.cl'),
(797, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29164, '2021-02-11', NULL, 'mindicador.cl'),
(798, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29156, '2021-02-10', NULL, 'mindicador.cl'),
(799, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29412, '2021-04-09', NULL, 'mindicador.cl'),
(800, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29410, '2021-04-08', NULL, 'mindicador.cl'),
(801, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29408, '2021-04-07', NULL, 'mindicador.cl'),
(802, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29406, '2021-04-06', NULL, 'mindicador.cl'),
(803, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29404, '2021-04-05', NULL, 'mindicador.cl'),
(804, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29402, '2021-04-04', NULL, 'mindicador.cl'),
(805, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29400, '2021-04-03', NULL, 'mindicador.cl'),
(806, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29399, '2021-04-02', NULL, 'mindicador.cl'),
(807, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29397, '2021-04-01', NULL, 'mindicador.cl'),
(808, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29395, '2021-03-31', NULL, 'mindicador.cl'),
(809, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29393, '2021-03-30', NULL, 'mindicador.cl'),
(810, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29391, '2021-03-29', NULL, 'mindicador.cl'),
(811, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29389, '2021-03-28', NULL, 'mindicador.cl'),
(812, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29387, '2021-03-27', NULL, 'mindicador.cl'),
(813, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29385, '2021-03-26', NULL, 'mindicador.cl'),
(814, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29383, '2021-03-25', NULL, 'mindicador.cl'),
(815, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29382, '2021-03-24', NULL, 'mindicador.cl'),
(816, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29380, '2021-03-23', NULL, 'mindicador.cl'),
(817, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29378, '2021-03-22', NULL, 'mindicador.cl'),
(818, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29376, '2021-03-21', NULL, 'mindicador.cl'),
(819, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29374, '2021-03-20', NULL, 'mindicador.cl'),
(820, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29372, '2021-03-19', NULL, 'mindicador.cl'),
(821, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29370, '2021-03-18', NULL, 'mindicador.cl'),
(822, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29368, '2021-03-17', NULL, 'mindicador.cl'),
(823, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29366, '2021-03-16', NULL, 'mindicador.cl'),
(824, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29364, '2021-03-15', NULL, 'mindicador.cl'),
(825, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29363, '2021-03-14', NULL, 'mindicador.cl'),
(826, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29361, '2021-03-13', NULL, 'mindicador.cl'),
(827, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29359, '2021-03-12', NULL, 'mindicador.cl'),
(828, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29357, '2021-03-11', NULL, 'mindicador.cl'),
(829, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29355, '2021-03-10', NULL, 'mindicador.cl'),
(830, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29529, '2021-05-09', NULL, 'mindicador.cl'),
(831, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29526, '2021-05-08', NULL, 'mindicador.cl'),
(832, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29522, '2021-05-07', NULL, 'mindicador.cl'),
(833, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29518, '2021-05-06', NULL, 'mindicador.cl'),
(834, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29514, '2021-05-05', NULL, 'mindicador.cl'),
(835, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29510, '2021-05-04', NULL, 'mindicador.cl'),
(836, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29506, '2021-05-03', NULL, 'mindicador.cl'),
(837, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29502, '2021-05-02', NULL, 'mindicador.cl'),
(838, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29498, '2021-05-01', NULL, 'mindicador.cl'),
(839, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29494, '2021-04-30', NULL, 'mindicador.cl'),
(840, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29490, '2021-04-29', NULL, 'mindicador.cl'),
(841, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29486, '2021-04-28', NULL, 'mindicador.cl'),
(842, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29482, '2021-04-27', NULL, 'mindicador.cl'),
(843, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29478, '2021-04-26', NULL, 'mindicador.cl'),
(844, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29475, '2021-04-25', NULL, 'mindicador.cl'),
(845, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29471, '2021-04-24', NULL, 'mindicador.cl'),
(846, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29467, '2021-04-23', NULL, 'mindicador.cl'),
(847, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29463, '2021-04-22', NULL, 'mindicador.cl'),
(848, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29459, '2021-04-21', NULL, 'mindicador.cl'),
(849, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29455, '2021-04-20', NULL, 'mindicador.cl'),
(850, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29451, '2021-04-19', NULL, 'mindicador.cl'),
(851, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29447, '2021-04-18', NULL, 'mindicador.cl'),
(852, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29443, '2021-04-17', NULL, 'mindicador.cl'),
(853, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29439, '2021-04-16', NULL, 'mindicador.cl'),
(854, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29435, '2021-04-15', NULL, 'mindicador.cl'),
(855, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29431, '2021-04-14', NULL, 'mindicador.cl'),
(856, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29427, '2021-04-13', NULL, 'mindicador.cl'),
(857, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29424, '2021-04-12', NULL, 'mindicador.cl'),
(858, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29420, '2021-04-11', NULL, 'mindicador.cl'),
(859, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29416, '2021-04-10', NULL, 'mindicador.cl'),
(860, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29648, '2021-06-09', NULL, 'mindicador.cl'),
(861, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29644, '2021-06-08', NULL, 'mindicador.cl'),
(862, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29640, '2021-06-07', NULL, 'mindicador.cl'),
(863, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29636, '2021-06-06', NULL, 'mindicador.cl'),
(864, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29632, '2021-06-05', NULL, 'mindicador.cl'),
(865, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29629, '2021-06-04', NULL, 'mindicador.cl'),
(866, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29625, '2021-06-03', NULL, 'mindicador.cl'),
(867, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29621, '2021-06-02', NULL, 'mindicador.cl'),
(868, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29617, '2021-06-01', NULL, 'mindicador.cl'),
(869, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29613, '2021-05-31', NULL, 'mindicador.cl'),
(870, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29609, '2021-05-30', NULL, 'mindicador.cl'),
(871, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29606, '2021-05-29', NULL, 'mindicador.cl'),
(872, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29602, '2021-05-28', NULL, 'mindicador.cl'),
(873, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29598, '2021-05-27', NULL, 'mindicador.cl'),
(874, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29594, '2021-05-26', NULL, 'mindicador.cl'),
(875, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29590, '2021-05-25', NULL, 'mindicador.cl'),
(876, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29587, '2021-05-24', NULL, 'mindicador.cl'),
(877, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29583, '2021-05-23', NULL, 'mindicador.cl'),
(878, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29579, '2021-05-22', NULL, 'mindicador.cl'),
(879, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29575, '2021-05-21', NULL, 'mindicador.cl'),
(880, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29571, '2021-05-20', NULL, 'mindicador.cl'),
(881, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29568, '2021-05-19', NULL, 'mindicador.cl'),
(882, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29564, '2021-05-18', NULL, 'mindicador.cl'),
(883, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29560, '2021-05-17', NULL, 'mindicador.cl'),
(884, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29556, '2021-05-16', NULL, 'mindicador.cl'),
(885, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29552, '2021-05-15', NULL, 'mindicador.cl'),
(886, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29549, '2021-05-14', NULL, 'mindicador.cl'),
(887, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29545, '2021-05-13', NULL, 'mindicador.cl'),
(888, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29541, '2021-05-12', NULL, 'mindicador.cl'),
(889, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29537, '2021-05-11', NULL, 'mindicador.cl'),
(890, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29533, '2021-05-10', NULL, 'mindicador.cl'),
(891, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29737, '2021-07-09', NULL, 'mindicador.cl'),
(892, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29734, '2021-07-08', NULL, 'mindicador.cl'),
(893, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29731, '2021-07-07', NULL, 'mindicador.cl'),
(894, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29728, '2021-07-06', NULL, 'mindicador.cl'),
(895, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29725, '2021-07-05', NULL, 'mindicador.cl'),
(896, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29722, '2021-07-04', NULL, 'mindicador.cl'),
(897, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29719, '2021-07-03', NULL, 'mindicador.cl'),
(898, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29716, '2021-07-02', NULL, 'mindicador.cl'),
(899, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29713, '2021-07-01', NULL, 'mindicador.cl'),
(900, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29710, '2021-06-30', NULL, 'mindicador.cl'),
(901, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29707, '2021-06-29', NULL, 'mindicador.cl'),
(902, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29704, '2021-06-28', NULL, 'mindicador.cl'),
(903, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29701, '2021-06-27', NULL, 'mindicador.cl'),
(904, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29698, '2021-06-26', NULL, 'mindicador.cl'),
(905, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29695, '2021-06-25', NULL, 'mindicador.cl'),
(906, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29692, '2021-06-24', NULL, 'mindicador.cl'),
(907, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29689, '2021-06-23', NULL, 'mindicador.cl'),
(908, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29686, '2021-06-22', NULL, 'mindicador.cl'),
(909, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29683, '2021-06-21', NULL, 'mindicador.cl'),
(910, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29680, '2021-06-20', NULL, 'mindicador.cl'),
(911, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29677, '2021-06-19', NULL, 'mindicador.cl'),
(912, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29674, '2021-06-18', NULL, 'mindicador.cl'),
(913, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29671, '2021-06-17', NULL, 'mindicador.cl'),
(914, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29668, '2021-06-16', NULL, 'mindicador.cl'),
(915, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29665, '2021-06-15', NULL, 'mindicador.cl'),
(916, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29662, '2021-06-14', NULL, 'mindicador.cl'),
(917, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29659, '2021-06-13', NULL, 'mindicador.cl'),
(918, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29656, '2021-06-12', NULL, 'mindicador.cl'),
(919, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29654, '2021-06-11', NULL, 'mindicador.cl'),
(920, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29651, '2021-06-10', NULL, 'mindicador.cl'),
(921, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29766, '2021-08-09', NULL, 'mindicador.cl'),
(922, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29765, '2021-08-08', NULL, 'mindicador.cl'),
(923, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29764, '2021-08-07', NULL, 'mindicador.cl'),
(924, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29763, '2021-08-06', NULL, 'mindicador.cl'),
(925, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29762, '2021-08-05', NULL, 'mindicador.cl'),
(926, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29761, '2021-08-04', NULL, 'mindicador.cl'),
(927, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29761, '2021-08-03', NULL, 'mindicador.cl'),
(928, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29760, '2021-08-02', NULL, 'mindicador.cl'),
(929, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29759, '2021-08-01', NULL, 'mindicador.cl'),
(930, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29758, '2021-07-31', NULL, 'mindicador.cl'),
(931, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29757, '2021-07-30', NULL, 'mindicador.cl'),
(932, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29756, '2021-07-29', NULL, 'mindicador.cl'),
(933, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29755, '2021-07-28', NULL, 'mindicador.cl'),
(934, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29754, '2021-07-27', NULL, 'mindicador.cl'),
(935, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29753, '2021-07-26', NULL, 'mindicador.cl'),
(936, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29752, '2021-07-25', NULL, 'mindicador.cl'),
(937, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29751, '2021-07-24', NULL, 'mindicador.cl'),
(938, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29750, '2021-07-23', NULL, 'mindicador.cl'),
(939, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29749, '2021-07-22', NULL, 'mindicador.cl'),
(940, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29748, '2021-07-21', NULL, 'mindicador.cl'),
(941, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29747, '2021-07-20', NULL, 'mindicador.cl'),
(942, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29746, '2021-07-19', NULL, 'mindicador.cl'),
(943, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29745, '2021-07-18', NULL, 'mindicador.cl'),
(944, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29744, '2021-07-17', NULL, 'mindicador.cl'),
(945, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29743, '2021-07-16', NULL, 'mindicador.cl'),
(946, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29742, '2021-07-15', NULL, 'mindicador.cl'),
(947, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29741, '2021-07-14', NULL, 'mindicador.cl'),
(948, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29740, '2021-07-13', NULL, 'mindicador.cl'),
(949, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29739, '2021-07-12', NULL, 'mindicador.cl'),
(950, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29738, '2021-07-11', NULL, 'mindicador.cl'),
(951, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29738, '2021-07-10', NULL, 'mindicador.cl'),
(952, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30004, '2021-09-09', NULL, 'mindicador.cl'),
(953, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29997, '2021-09-08', NULL, 'mindicador.cl'),
(954, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29989, '2021-09-07', NULL, 'mindicador.cl'),
(955, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29981, '2021-09-06', NULL, 'mindicador.cl'),
(956, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29974, '2021-09-05', NULL, 'mindicador.cl'),
(957, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29966, '2021-09-04', NULL, 'mindicador.cl'),
(958, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29958, '2021-09-03', NULL, 'mindicador.cl'),
(959, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29950, '2021-09-02', NULL, 'mindicador.cl'),
(960, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29943, '2021-09-01', NULL, 'mindicador.cl'),
(961, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29935, '2021-08-31', NULL, 'mindicador.cl'),
(962, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29927, '2021-08-30', NULL, 'mindicador.cl'),
(963, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29920, '2021-08-29', NULL, 'mindicador.cl'),
(964, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29912, '2021-08-28', NULL, 'mindicador.cl'),
(965, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29904, '2021-08-27', NULL, 'mindicador.cl'),
(966, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29897, '2021-08-26', NULL, 'mindicador.cl'),
(967, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29889, '2021-08-25', NULL, 'mindicador.cl'),
(968, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29881, '2021-08-24', NULL, 'mindicador.cl'),
(969, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29874, '2021-08-23', NULL, 'mindicador.cl'),
(970, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29866, '2021-08-22', NULL, 'mindicador.cl'),
(971, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29858, '2021-08-21', NULL, 'mindicador.cl'),
(972, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29851, '2021-08-20', NULL, 'mindicador.cl'),
(973, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29843, '2021-08-19', NULL, 'mindicador.cl'),
(974, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29835, '2021-08-18', NULL, 'mindicador.cl'),
(975, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29828, '2021-08-17', NULL, 'mindicador.cl'),
(976, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29820, '2021-08-16', NULL, 'mindicador.cl'),
(977, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29812, '2021-08-15', NULL, 'mindicador.cl'),
(978, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29805, '2021-08-14', NULL, 'mindicador.cl'),
(979, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29797, '2021-08-13', NULL, 'mindicador.cl'),
(980, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29789, '2021-08-12', NULL, 'mindicador.cl'),
(981, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29782, '2021-08-11', NULL, 'mindicador.cl'),
(982, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 29774, '2021-08-10', NULL, 'mindicador.cl'),
(983, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30124, '2021-10-09', NULL, 'mindicador.cl'),
(984, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30120, '2021-10-08', NULL, 'mindicador.cl'),
(985, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30116, '2021-10-07', NULL, 'mindicador.cl'),
(986, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30112, '2021-10-06', NULL, 'mindicador.cl'),
(987, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30108, '2021-10-05', NULL, 'mindicador.cl'),
(988, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30104, '2021-10-04', NULL, 'mindicador.cl'),
(989, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30100, '2021-10-03', NULL, 'mindicador.cl'),
(990, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30096, '2021-10-02', NULL, 'mindicador.cl'),
(991, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30092, '2021-10-01', NULL, 'mindicador.cl'),
(992, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30088, '2021-09-30', NULL, 'mindicador.cl'),
(993, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30084, '2021-09-29', NULL, 'mindicador.cl'),
(994, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30080, '2021-09-28', NULL, 'mindicador.cl'),
(995, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30076, '2021-09-27', NULL, 'mindicador.cl'),
(996, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30072, '2021-09-26', NULL, 'mindicador.cl'),
(997, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30068, '2021-09-25', NULL, 'mindicador.cl'),
(998, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30064, '2021-09-24', NULL, 'mindicador.cl'),
(999, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30060, '2021-09-23', NULL, 'mindicador.cl'),
(1000, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30056, '2021-09-22', NULL, 'mindicador.cl'),
(1001, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30052, '2021-09-21', NULL, 'mindicador.cl'),
(1002, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30048, '2021-09-20', NULL, 'mindicador.cl'),
(1003, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30044, '2021-09-19', NULL, 'mindicador.cl'),
(1004, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30040, '2021-09-18', NULL, 'mindicador.cl'),
(1005, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30036, '2021-09-17', NULL, 'mindicador.cl'),
(1006, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30032, '2021-09-16', NULL, 'mindicador.cl'),
(1007, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30028, '2021-09-15', NULL, 'mindicador.cl'),
(1008, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30024, '2021-09-14', NULL, 'mindicador.cl'),
(1009, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30020, '2021-09-13', NULL, 'mindicador.cl'),
(1010, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30016, '2021-09-12', NULL, 'mindicador.cl'),
(1011, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30012, '2021-09-11', NULL, 'mindicador.cl'),
(1012, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30008, '2021-09-10', NULL, 'mindicador.cl'),
(1013, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30486, '2021-11-09', NULL, 'mindicador.cl'),
(1014, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30474, '2021-11-08', NULL, 'mindicador.cl'),
(1015, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30462, '2021-11-07', NULL, 'mindicador.cl'),
(1016, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30451, '2021-11-06', NULL, 'mindicador.cl'),
(1017, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30439, '2021-11-05', NULL, 'mindicador.cl'),
(1018, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30427, '2021-11-04', NULL, 'mindicador.cl'),
(1019, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30416, '2021-11-03', NULL, 'mindicador.cl'),
(1020, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30404, '2021-11-02', NULL, 'mindicador.cl'),
(1021, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30392, '2021-11-01', NULL, 'mindicador.cl'),
(1022, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30381, '2021-10-31', NULL, 'mindicador.cl'),
(1023, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30369, '2021-10-30', NULL, 'mindicador.cl'),
(1024, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30357, '2021-10-29', NULL, 'mindicador.cl'),
(1025, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30345, '2021-10-28', NULL, 'mindicador.cl'),
(1026, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30334, '2021-10-27', NULL, 'mindicador.cl'),
(1027, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30322, '2021-10-26', NULL, 'mindicador.cl'),
(1028, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30310, '2021-10-25', NULL, 'mindicador.cl'),
(1029, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30299, '2021-10-24', NULL, 'mindicador.cl'),
(1030, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30287, '2021-10-23', NULL, 'mindicador.cl'),
(1031, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30276, '2021-10-22', NULL, 'mindicador.cl'),
(1032, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30264, '2021-10-21', NULL, 'mindicador.cl'),
(1033, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30252, '2021-10-20', NULL, 'mindicador.cl'),
(1034, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30241, '2021-10-19', NULL, 'mindicador.cl'),
(1035, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30229, '2021-10-18', NULL, 'mindicador.cl'),
(1036, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30217, '2021-10-17', NULL, 'mindicador.cl'),
(1037, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30206, '2021-10-16', NULL, 'mindicador.cl'),
(1038, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30194, '2021-10-15', NULL, 'mindicador.cl'),
(1039, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30182, '2021-10-14', NULL, 'mindicador.cl'),
(1040, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30171, '2021-10-13', NULL, 'mindicador.cl'),
(1041, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30159, '2021-10-12', NULL, 'mindicador.cl'),
(1042, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30148, '2021-10-11', NULL, 'mindicador.cl'),
(1043, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30136, '2021-10-10', NULL, 'mindicador.cl'),
(1044, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30882, '2021-12-09', NULL, 'mindicador.cl'),
(1045, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30869, '2021-12-08', NULL, 'mindicador.cl'),
(1046, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30856, '2021-12-07', NULL, 'mindicador.cl'),
(1047, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30842, '2021-12-06', NULL, 'mindicador.cl'),
(1048, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30829, '2021-12-05', NULL, 'mindicador.cl'),
(1049, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30816, '2021-12-04', NULL, 'mindicador.cl'),
(1050, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30803, '2021-12-03', NULL, 'mindicador.cl'),
(1051, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30789, '2021-12-02', NULL, 'mindicador.cl'),
(1052, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30776, '2021-12-01', NULL, 'mindicador.cl'),
(1053, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30763, '2021-11-30', NULL, 'mindicador.cl'),
(1054, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30750, '2021-11-29', NULL, 'mindicador.cl'),
(1055, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30736, '2021-11-28', NULL, 'mindicador.cl'),
(1056, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30723, '2021-11-27', NULL, 'mindicador.cl'),
(1057, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30710, '2021-11-26', NULL, 'mindicador.cl'),
(1058, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30697, '2021-11-25', NULL, 'mindicador.cl'),
(1059, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30683, '2021-11-24', NULL, 'mindicador.cl'),
(1060, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30670, '2021-11-23', NULL, 'mindicador.cl'),
(1061, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30657, '2021-11-22', NULL, 'mindicador.cl'),
(1062, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30644, '2021-11-21', NULL, 'mindicador.cl'),
(1063, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30631, '2021-11-20', NULL, 'mindicador.cl'),
(1064, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30617, '2021-11-19', NULL, 'mindicador.cl'),
(1065, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30604, '2021-11-18', NULL, 'mindicador.cl'),
(1066, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30591, '2021-11-17', NULL, 'mindicador.cl'),
(1067, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30578, '2021-11-16', NULL, 'mindicador.cl'),
(1068, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30565, '2021-11-15', NULL, 'mindicador.cl'),
(1069, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30552, '2021-11-14', NULL, 'mindicador.cl'),
(1070, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30538, '2021-11-13', NULL, 'mindicador.cl'),
(1071, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30525, '2021-11-12', NULL, 'mindicador.cl'),
(1072, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30512, '2021-11-11', NULL, 'mindicador.cl'),
(1073, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30499, '2021-11-10', NULL, 'mindicador.cl'),
(1074, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30992, '2021-12-31', NULL, 'mindicador.cl'),
(1075, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30987, '2021-12-30', NULL, 'mindicador.cl'),
(1076, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30982, '2021-12-29', NULL, 'mindicador.cl'),
(1077, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30977, '2021-12-28', NULL, 'mindicador.cl'),
(1078, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30972, '2021-12-27', NULL, 'mindicador.cl'),
(1079, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30967, '2021-12-26', NULL, 'mindicador.cl'),
(1080, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30962, '2021-12-25', NULL, 'mindicador.cl'),
(1081, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30957, '2021-12-24', NULL, 'mindicador.cl'),
(1082, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30952, '2021-12-23', NULL, 'mindicador.cl'),
(1083, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30947, '2021-12-22', NULL, 'mindicador.cl'),
(1084, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30942, '2021-12-21', NULL, 'mindicador.cl'),
(1085, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30937, '2021-12-20', NULL, 'mindicador.cl'),
(1086, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30932, '2021-12-19', NULL, 'mindicador.cl'),
(1087, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30927, '2021-12-18', NULL, 'mindicador.cl'),
(1088, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30922, '2021-12-17', NULL, 'mindicador.cl'),
(1089, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30917, '2021-12-16', NULL, 'mindicador.cl'),
(1090, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30912, '2021-12-15', NULL, 'mindicador.cl'),
(1091, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30907, '2021-12-14', NULL, 'mindicador.cl'),
(1092, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30902, '2021-12-13', NULL, 'mindicador.cl'),
(1093, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30897, '2021-12-12', NULL, 'mindicador.cl'),
(1094, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30892, '2021-12-11', NULL, 'mindicador.cl'),
(1095, 'UNIDAD DE FOMENTO (UF)', 'UF', 'Pesos', 30887, '2021-12-10', NULL, 'mindicador.cl');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_04_09_172746_create_configs_table', 1),
(4, '2018_04_28_115529_create_roles_table', 1),
(5, '2018_04_28_115600_create_permissions_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_group_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `permission_group_id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 1, 'root-dev', 'Developer Permission', '2022-10-24 23:19:58', '2022-10-24 23:19:58'),
(2, 2, 'edit-config', 'Edit System Settings', '2022-10-24 23:19:58', '2022-10-24 23:19:58'),
(3, 3, 'show-user', 'View User', '2022-10-24 23:19:58', '2022-10-24 23:19:58'),
(4, 3, 'create-user', 'Add User', '2022-10-24 23:19:58', '2022-10-24 23:19:58'),
(5, 3, 'edit-user', 'Edit User', '2022-10-24 23:19:58', '2022-10-24 23:19:58'),
(6, 3, 'destroy-user', 'Delete User', '2022-10-24 23:19:58', '2022-10-24 23:19:58'),
(7, 4, 'show-role', 'View Permission', '2022-10-24 23:19:58', '2022-10-24 23:19:58'),
(8, 4, 'create-role', 'Add Permission', '2022-10-24 23:19:58', '2022-10-24 23:19:58'),
(9, 4, 'edit-role', 'Edit Permission', '2022-10-24 23:19:58', '2022-10-24 23:19:58'),
(10, 4, 'destroy-role', 'Delete Permission', '2022-10-24 23:19:58', '2022-10-24 23:19:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Developer Settings', '2022-10-24 23:19:57', '2022-10-24 23:19:57'),
(2, 'System Settings', '2022-10-24 23:19:58', '2022-10-24 23:19:58'),
(3, 'Users', '2022-10-24 23:19:58', '2022-10-24 23:19:58'),
(4, 'Permissions', '2022-10-24 23:19:58', '2022-10-24 23:19:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 2, 2),
(12, 3, 2),
(13, 4, 2),
(14, 5, 2),
(15, 6, 2),
(16, 7, 2),
(17, 8, 2),
(18, 9, 2),
(19, 10, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `label`, `created_at`, `updated_at`) VALUES
(1, 'Developer', 'System Developer', '2022-10-24 23:19:57', '2022-10-24 23:19:57'),
(2, 'Administrators', 'System Administrators', '2022-10-24 23:19:57', '2022-10-24 23:19:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'img/config/nopic.png',
  `active` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Developer', 'dev@dev.com', NULL, '$2y$10$jQ6RHCnhoH4o6lw5ZXC3D.QAAQrgB.9SJ3/jUvg2iWLDf6rSZRsle', 'img/config/nopic.png', 1, NULL, '2022-10-24 23:19:59', '2022-10-24 23:19:59'),
(3, 'demo', 'demo@demo.cl', NULL, '$2y$10$JyJe5w.Kxry82Wh7AD7MBupZd2hQlphSmw7eZ.N74aZ7uP1nyAf1u', 'app/script/uploads/1666654606_2.png', 1, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historical`
--
ALTER TABLE `historical`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_permission_group_id_foreign` (`permission_group_id`);

--
-- Indices de la tabla `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `historical`
--
ALTER TABLE `historical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1096;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_permission_group_id_foreign` FOREIGN KEY (`permission_group_id`) REFERENCES `permission_groups` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
