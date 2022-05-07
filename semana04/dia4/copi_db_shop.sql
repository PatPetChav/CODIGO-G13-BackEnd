-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.7.33 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando datos para la tabla db_shop.auth_group: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Volcando datos para la tabla db_shop.auth_group_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Volcando datos para la tabla db_shop.auth_permission: ~32 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add categoria', 1, 'add_categoria'),
	(2, 'Can change categoria', 1, 'change_categoria'),
	(3, 'Can delete categoria', 1, 'delete_categoria'),
	(4, 'Can view categoria', 1, 'view_categoria'),
	(5, 'Can add producto', 2, 'add_producto'),
	(6, 'Can change producto', 2, 'change_producto'),
	(7, 'Can delete producto', 2, 'delete_producto'),
	(8, 'Can view producto', 2, 'view_producto'),
	(9, 'Can add log entry', 3, 'add_logentry'),
	(10, 'Can change log entry', 3, 'change_logentry'),
	(11, 'Can delete log entry', 3, 'delete_logentry'),
	(12, 'Can view log entry', 3, 'view_logentry'),
	(13, 'Can add permission', 4, 'add_permission'),
	(14, 'Can change permission', 4, 'change_permission'),
	(15, 'Can delete permission', 4, 'delete_permission'),
	(16, 'Can view permission', 4, 'view_permission'),
	(17, 'Can add group', 5, 'add_group'),
	(18, 'Can change group', 5, 'change_group'),
	(19, 'Can delete group', 5, 'delete_group'),
	(20, 'Can view group', 5, 'view_group'),
	(21, 'Can add user', 6, 'add_user'),
	(22, 'Can change user', 6, 'change_user'),
	(23, 'Can delete user', 6, 'delete_user'),
	(24, 'Can view user', 6, 'view_user'),
	(25, 'Can add content type', 7, 'add_contenttype'),
	(26, 'Can change content type', 7, 'change_contenttype'),
	(27, 'Can delete content type', 7, 'delete_contenttype'),
	(28, 'Can view content type', 7, 'view_contenttype'),
	(29, 'Can add session', 8, 'add_session'),
	(30, 'Can change session', 8, 'change_session'),
	(31, 'Can delete session', 8, 'delete_session'),
	(32, 'Can view session', 8, 'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Volcando datos para la tabla db_shop.auth_user: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$260000$pQB1eTWlcwUu32BA5W0vlc$b6Eq07PwkqDAbY7hZjjb9e/E7lQgbdtfK1LzlyyUYQI=', NULL, 1, 'admin', '', '', '', 1, 1, '2022-05-07 00:57:07.905875');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Volcando datos para la tabla db_shop.auth_user_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Volcando datos para la tabla db_shop.auth_user_user_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Volcando datos para la tabla db_shop.django_admin_log: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Volcando datos para la tabla db_shop.django_content_type: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(3, 'admin', 'logentry'),
	(5, 'auth', 'group'),
	(4, 'auth', 'permission'),
	(6, 'auth', 'user'),
	(7, 'contenttypes', 'contenttype'),
	(8, 'sessions', 'session'),
	(1, 'web', 'categoria'),
	(2, 'web', 'producto');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Volcando datos para la tabla db_shop.django_migrations: ~19 rows (aproximadamente)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2022-05-07 00:55:47.879063'),
	(2, 'auth', '0001_initial', '2022-05-07 00:55:53.692949'),
	(3, 'admin', '0001_initial', '2022-05-07 00:55:55.180857'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-07 00:55:55.211809'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-07 00:55:55.245684'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2022-05-07 00:55:56.021678'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2022-05-07 00:55:56.699837'),
	(8, 'auth', '0003_alter_user_email_max_length', '2022-05-07 00:55:56.873862'),
	(9, 'auth', '0004_alter_user_username_opts', '2022-05-07 00:55:56.965662'),
	(10, 'auth', '0005_alter_user_last_login_null', '2022-05-07 00:55:57.372876'),
	(11, 'auth', '0006_require_contenttypes_0002', '2022-05-07 00:55:57.395922'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-07 00:55:57.425549'),
	(13, 'auth', '0008_alter_user_username_max_length', '2022-05-07 00:55:57.992382'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-07 00:55:58.493138'),
	(15, 'auth', '0010_alter_group_name_max_length', '2022-05-07 00:55:58.584705'),
	(16, 'auth', '0011_update_proxy_permissions', '2022-05-07 00:55:58.617710'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-07 00:55:59.170918'),
	(18, 'sessions', '0001_initial', '2022-05-07 00:55:59.555631'),
	(19, 'web', '0001_initial', '2022-05-07 00:56:00.507457');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Volcando datos para la tabla db_shop.django_session: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

-- Volcando datos para la tabla db_shop.web_categoria: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `web_categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_categoria` ENABLE KEYS */;

-- Volcando datos para la tabla db_shop.web_producto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `web_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_producto` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
