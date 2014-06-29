-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-06-2014 a las 04:39:46
-- Versión del servidor: 5.5.34
-- Versión de PHP: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=70 ;

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
(19, 'Can add api access', 7, 'add_apiaccess'),
(20, 'Can change api access', 7, 'change_apiaccess'),
(21, 'Can delete api access', 7, 'delete_apiaccess'),
(22, 'Can add api key', 8, 'add_apikey'),
(23, 'Can change api key', 8, 'change_apikey'),
(24, 'Can delete api key', 8, 'delete_apikey'),
(25, 'Can add autor', 9, 'add_autor'),
(26, 'Can change autor', 9, 'change_autor'),
(27, 'Can delete autor', 9, 'delete_autor'),
(28, 'Can add medio', 10, 'add_medio'),
(29, 'Can change medio', 10, 'change_medio'),
(30, 'Can delete medio', 10, 'delete_medio'),
(31, 'Can add otrostemas', 11, 'add_otrostemas'),
(32, 'Can change otrostemas', 11, 'change_otrostemas'),
(33, 'Can delete otrostemas', 11, 'delete_otrostemas'),
(34, 'Can add protagonista', 12, 'add_protagonista'),
(35, 'Can change protagonista', 12, 'change_protagonista'),
(36, 'Can delete protagonista', 12, 'delete_protagonista'),
(37, 'Can add tema', 13, 'add_tema'),
(38, 'Can change tema', 13, 'change_tema'),
(39, 'Can delete tema', 13, 'delete_tema'),
(40, 'Can add area', 14, 'add_area'),
(41, 'Can change area', 14, 'change_area'),
(42, 'Can delete area', 14, 'delete_area'),
(43, 'Can add subtema', 15, 'add_subtema'),
(44, 'Can change subtema', 15, 'change_subtema'),
(45, 'Can delete subtema', 15, 'delete_subtema'),
(46, 'Can add nota', 16, 'add_nota'),
(47, 'Can change nota', 16, 'change_nota'),
(48, 'Can delete nota', 16, 'delete_nota'),
(49, 'Can add colabora_en', 17, 'add_colabora_en'),
(50, 'Can change colabora_en', 17, 'change_colabora_en'),
(51, 'Can delete colabora_en', 17, 'delete_colabora_en'),
(52, 'Can add correspondiete_a', 18, 'add_correspondiete_a'),
(53, 'Can change correspondiete_a', 18, 'change_correspondiete_a'),
(54, 'Can delete correspondiete_a', 18, 'delete_correspondiete_a'),
(55, 'Can add declarada_por', 19, 'add_declarada_por'),
(56, 'Can change declarada_por', 19, 'change_declarada_por'),
(57, 'Can delete declarada_por', 19, 'delete_declarada_por'),
(58, 'Can add derivado_de', 20, 'add_derivado_de'),
(59, 'Can change derivado_de', 20, 'change_derivado_de'),
(60, 'Can delete derivado_de', 20, 'delete_derivado_de'),
(61, 'Can add escrita_por', 21, 'add_escrita_por'),
(62, 'Can change escrita_por', 21, 'change_escrita_por'),
(63, 'Can delete escrita_por', 21, 'delete_escrita_por'),
(64, 'Can add publicada_en', 22, 'add_publicada_en'),
(65, 'Can change publicada_en', 22, 'change_publicada_en'),
(66, 'Can delete publicada_en', 22, 'delete_publicada_en'),
(67, 'Can add trata_de', 23, 'add_trata_de'),
(68, 'Can change trata_de', 23, 'change_trata_de'),
(69, 'Can delete trata_de', 23, 'delete_trata_de');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$12000$vIe0DWw9KKxl$7Q4w0pxJE7hmVRTRksdRzs79pPcO1SC3m/cGUZVFcfo=', '2014-06-29 01:11:16', 1, 'marcojrzx', '', '', 'marcojrzx@hotmail.com', 1, 1, '2014-06-29 00:37:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2014-06-29 01:14:58', 1, 9, '1', 'Alicia', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'log entry', 'admin', 'logentry'),
(2, 'permission', 'auth', 'permission'),
(3, 'group', 'auth', 'group'),
(4, 'user', 'auth', 'user'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'api access', 'tastypie', 'apiaccess'),
(8, 'api key', 'tastypie', 'apikey'),
(9, 'autor', 'logica', 'autor'),
(10, 'medio', 'logica', 'medio'),
(11, 'otrostemas', 'logica', 'otrostemas'),
(12, 'protagonista', 'logica', 'protagonista'),
(13, 'tema', 'logica', 'tema'),
(14, 'area', 'logica', 'area'),
(15, 'subtema', 'logica', 'subtema'),
(16, 'nota', 'logica', 'nota'),
(17, 'colabora_en', 'logica', 'colabora_en'),
(18, 'correspondiete_a', 'logica', 'correspondiete_a'),
(19, 'declarada_por', 'logica', 'declarada_por'),
(20, 'derivado_de', 'logica', 'derivado_de'),
(21, 'escrita_por', 'logica', 'escrita_por'),
(22, 'publicada_en', 'logica', 'publicada_en'),
(23, 'trata_de', 'logica', 'trata_de');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('a6lcupc1bllgihxi1gu9m17stxicwmit', 'YTAwYmQzNzg3N2NhYzY3OTdmYWFmMTQwZTMwMmU3ZjdlY2JiNTAyOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2014-07-13 01:11:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logica_area`
--

CREATE TABLE IF NOT EXISTS `logica_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_ar` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logica_autor`
--

CREATE TABLE IF NOT EXISTS `logica_autor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `genero` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `logica_autor`
--

INSERT INTO `logica_autor` (`id`, `nombre`, `genero`) VALUES
(1, 'Alicia', 'F');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logica_colabora_en`
--

CREATE TABLE IF NOT EXISTS `logica_colabora_en` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor_id` int(11) NOT NULL,
  `medio_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `logica_colabora_en_40e8bcf3` (`autor_id`),
  KEY `logica_colabora_en_90211594` (`medio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logica_correspondiete_a`
--

CREATE TABLE IF NOT EXISTS `logica_correspondiete_a` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tema_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `logica_correspondiete_a_f706bc30` (`tema_id`),
  KEY `logica_correspondiete_a_a4563695` (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logica_declarada_por`
--

CREATE TABLE IF NOT EXISTS `logica_declarada_por` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nota_id` int(11) NOT NULL,
  `medio_id` int(11) NOT NULL,
  `evaluacion` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `logica_declarada_por_14b35267` (`nota_id`),
  KEY `logica_declarada_por_90211594` (`medio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logica_derivado_de`
--

CREATE TABLE IF NOT EXISTS `logica_derivado_de` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subtema_id` int(11) NOT NULL,
  `Tema_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `logica_derivado_de_48de5993` (`subtema_id`),
  KEY `logica_derivado_de_0b10816e` (`Tema_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logica_escrita_por`
--

CREATE TABLE IF NOT EXISTS `logica_escrita_por` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor_id` int(11) NOT NULL,
  `nota_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `logica_escrita_por_40e8bcf3` (`autor_id`),
  KEY `logica_escrita_por_14b35267` (`nota_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logica_medio`
--

CREATE TABLE IF NOT EXISTS `logica_medio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_me` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logica_nota`
--

CREATE TABLE IF NOT EXISTS `logica_nota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `paginas` int(11) NOT NULL,
  `tipo` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `municipio` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sintesis` longtext COLLATE utf8_unicode_ci NOT NULL,
  `texto` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logica_otrostemas`
--

CREATE TABLE IF NOT EXISTS `logica_otrostemas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `otrostemas` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logica_protagonista`
--

CREATE TABLE IF NOT EXISTS `logica_protagonista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_pro` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `genero_pro` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logica_publicada_en`
--

CREATE TABLE IF NOT EXISTS `logica_publicada_en` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nota_id` int(11) NOT NULL,
  `medio_id` int(11) NOT NULL,
  `vinculo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `seccion` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `logica_publicada_en_14b35267` (`nota_id`),
  KEY `logica_publicada_en_90211594` (`medio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logica_subtema`
--

CREATE TABLE IF NOT EXISTS `logica_subtema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_sub` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logica_tema`
--

CREATE TABLE IF NOT EXISTS `logica_tema` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_te` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logica_trata_de`
--

CREATE TABLE IF NOT EXISTS `logica_trata_de` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nota_id` int(11) NOT NULL,
  `subtema_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `logica_trata_de_14b35267` (`nota_id`),
  KEY `logica_trata_de_48de5993` (`subtema_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tastypie_apiaccess`
--

CREATE TABLE IF NOT EXISTS `tastypie_apiaccess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `request_method` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `accessed` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tastypie_apikey`
--

CREATE TABLE IF NOT EXISTS `tastypie_apikey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `tastypie_apikey_c0d4be93` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `logica_colabora_en`
--
ALTER TABLE `logica_colabora_en`
  ADD CONSTRAINT `medio_id_refs_id_77ef712f` FOREIGN KEY (`medio_id`) REFERENCES `logica_medio` (`id`),
  ADD CONSTRAINT `autor_id_refs_id_a6881427` FOREIGN KEY (`autor_id`) REFERENCES `logica_autor` (`id`);

--
-- Filtros para la tabla `logica_correspondiete_a`
--
ALTER TABLE `logica_correspondiete_a`
  ADD CONSTRAINT `tema_id_refs_id_48035c78` FOREIGN KEY (`tema_id`) REFERENCES `logica_tema` (`id`),
  ADD CONSTRAINT `area_id_refs_id_733b521f` FOREIGN KEY (`area_id`) REFERENCES `logica_area` (`id`);

--
-- Filtros para la tabla `logica_declarada_por`
--
ALTER TABLE `logica_declarada_por`
  ADD CONSTRAINT `medio_id_refs_id_88e143d1` FOREIGN KEY (`medio_id`) REFERENCES `logica_medio` (`id`),
  ADD CONSTRAINT `nota_id_refs_id_46cd66c6` FOREIGN KEY (`nota_id`) REFERENCES `logica_nota` (`id`);

--
-- Filtros para la tabla `logica_derivado_de`
--
ALTER TABLE `logica_derivado_de`
  ADD CONSTRAINT `subtema_id_refs_id_fc29004f` FOREIGN KEY (`subtema_id`) REFERENCES `logica_subtema` (`id`),
  ADD CONSTRAINT `Tema_id_refs_id_cefd8ecd` FOREIGN KEY (`Tema_id`) REFERENCES `logica_tema` (`id`);

--
-- Filtros para la tabla `logica_escrita_por`
--
ALTER TABLE `logica_escrita_por`
  ADD CONSTRAINT `autor_id_refs_id_1990cc07` FOREIGN KEY (`autor_id`) REFERENCES `logica_autor` (`id`),
  ADD CONSTRAINT `nota_id_refs_id_e0692b06` FOREIGN KEY (`nota_id`) REFERENCES `logica_nota` (`id`);

--
-- Filtros para la tabla `logica_publicada_en`
--
ALTER TABLE `logica_publicada_en`
  ADD CONSTRAINT `medio_id_refs_id_a8c466cc` FOREIGN KEY (`medio_id`) REFERENCES `logica_medio` (`id`),
  ADD CONSTRAINT `nota_id_refs_id_2bd9db71` FOREIGN KEY (`nota_id`) REFERENCES `logica_nota` (`id`);

--
-- Filtros para la tabla `logica_trata_de`
--
ALTER TABLE `logica_trata_de`
  ADD CONSTRAINT `subtema_id_refs_id_6ee79eff` FOREIGN KEY (`subtema_id`) REFERENCES `logica_subtema` (`id`),
  ADD CONSTRAINT `nota_id_refs_id_48dff6b1` FOREIGN KEY (`nota_id`) REFERENCES `logica_nota` (`id`);

--
-- Filtros para la tabla `tastypie_apikey`
--
ALTER TABLE `tastypie_apikey`
  ADD CONSTRAINT `user_id_refs_id_990aee10` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
