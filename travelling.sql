-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 29, 2024 at 06:30 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelling`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add dich vu', 6, 'add_dichvu'),
(22, 'Can change dich vu', 6, 'change_dichvu'),
(23, 'Can delete dich vu', 6, 'delete_dichvu'),
(24, 'Can view dich vu', 6, 'view_dichvu'),
(25, 'Can add loai tien nghi', 7, 'add_loaitiennghi'),
(26, 'Can change loai tien nghi', 7, 'change_loaitiennghi'),
(27, 'Can delete loai tien nghi', 7, 'delete_loaitiennghi'),
(28, 'Can view loai tien nghi', 7, 'view_loaitiennghi'),
(29, 'Can add tinh', 8, 'add_tinh'),
(30, 'Can change tinh', 8, 'change_tinh'),
(31, 'Can delete tinh', 8, 'delete_tinh'),
(32, 'Can view tinh', 8, 'view_tinh'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user'),
(37, 'Can add hoa don', 10, 'add_hoadon'),
(38, 'Can change hoa don', 10, 'change_hoadon'),
(39, 'Can delete hoa don', 10, 'delete_hoadon'),
(40, 'Can view hoa don', 10, 'view_hoadon'),
(41, 'Can add danhgia', 11, 'add_danhgia'),
(42, 'Can change danhgia', 11, 'change_danhgia'),
(43, 'Can delete danhgia', 11, 'delete_danhgia'),
(44, 'Can view danhgia', 11, 'view_danhgia'),
(45, 'Can add khach san', 12, 'add_khachsan'),
(46, 'Can change khach san', 12, 'change_khachsan'),
(47, 'Can delete khach san', 12, 'delete_khachsan'),
(48, 'Can view khach san', 12, 'view_khachsan'),
(49, 'Can add anh khach san', 13, 'add_anhkhachsan'),
(50, 'Can change anh khach san', 13, 'change_anhkhachsan'),
(51, 'Can delete anh khach san', 13, 'delete_anhkhachsan'),
(52, 'Can view anh khach san', 13, 'view_anhkhachsan'),
(53, 'Can add phong', 14, 'add_phong'),
(54, 'Can change phong', 14, 'change_phong'),
(55, 'Can delete phong', 14, 'delete_phong'),
(56, 'Can view phong', 14, 'view_phong'),
(57, 'Can add khuyen mai', 15, 'add_khuyenmai'),
(58, 'Can change khuyen mai', 15, 'change_khuyenmai'),
(59, 'Can delete khuyen mai', 15, 'delete_khuyenmai'),
(60, 'Can view khuyen mai', 15, 'view_khuyenmai'),
(61, 'Can add chi tiet hoa don', 16, 'add_chitiethoadon'),
(62, 'Can change chi tiet hoa don', 16, 'change_chitiethoadon'),
(63, 'Can delete chi tiet hoa don', 16, 'delete_chitiethoadon'),
(64, 'Can view chi tiet hoa don', 16, 'view_chitiethoadon'),
(65, 'Can add anh phong', 17, 'add_anhphong'),
(66, 'Can change anh phong', 17, 'change_anhphong'),
(67, 'Can delete anh phong', 17, 'delete_anhphong'),
(68, 'Can view anh phong', 17, 'view_anhphong'),
(69, 'Can add profile', 18, 'add_profile'),
(70, 'Can change profile', 18, 'change_profile'),
(71, 'Can delete profile', 18, 'delete_profile'),
(72, 'Can view profile', 18, 'view_profile'),
(73, 'Can add tien nghi', 19, 'add_tiennghi'),
(74, 'Can change tien nghi', 19, 'change_tiennghi'),
(75, 'Can delete tien nghi', 19, 'delete_tiennghi'),
(76, 'Can view tien nghi', 19, 'view_tiennghi'),
(77, 'Can add huyen', 20, 'add_huyen'),
(78, 'Can change huyen', 20, 'change_huyen'),
(79, 'Can delete huyen', 20, 'delete_huyen'),
(80, 'Can view huyen', 20, 'view_huyen'),
(81, 'Can add xa', 21, 'add_xa'),
(82, 'Can change xa', 21, 'change_xa'),
(83, 'Can delete xa', 21, 'delete_xa'),
(84, 'Can view xa', 21, 'view_xa'),
(85, 'Can add application', 22, 'add_application'),
(86, 'Can change application', 22, 'change_application'),
(87, 'Can delete application', 22, 'delete_application'),
(88, 'Can view application', 22, 'view_application'),
(89, 'Can add access token', 23, 'add_accesstoken'),
(90, 'Can change access token', 23, 'change_accesstoken'),
(91, 'Can delete access token', 23, 'delete_accesstoken'),
(92, 'Can view access token', 23, 'view_accesstoken'),
(93, 'Can add grant', 24, 'add_grant'),
(94, 'Can change grant', 24, 'change_grant'),
(95, 'Can delete grant', 24, 'delete_grant'),
(96, 'Can view grant', 24, 'view_grant'),
(97, 'Can add refresh token', 25, 'add_refreshtoken'),
(98, 'Can change refresh token', 25, 'change_refreshtoken'),
(99, 'Can delete refresh token', 25, 'delete_refreshtoken'),
(100, 'Can view refresh token', 25, 'view_refreshtoken'),
(101, 'Can add id token', 26, 'add_idtoken'),
(102, 'Can change id token', 26, 'change_idtoken'),
(103, 'Can delete id token', 26, 'delete_idtoken'),
(104, 'Can view id token', 26, 'view_idtoken'),
(105, 'Can add Password Reset Token', 27, 'add_resetpasswordtoken'),
(106, 'Can change Password Reset Token', 27, 'change_resetpasswordtoken'),
(107, 'Can delete Password Reset Token', 27, 'delete_resetpasswordtoken'),
(108, 'Can view Password Reset Token', 27, 'view_resetpasswordtoken'),
(109, 'Can add blacklisted token', 28, 'add_blacklistedtoken'),
(110, 'Can change blacklisted token', 28, 'change_blacklistedtoken'),
(111, 'Can delete blacklisted token', 28, 'delete_blacklistedtoken'),
(112, 'Can view blacklisted token', 28, 'view_blacklistedtoken'),
(113, 'Can add outstanding token', 29, 'add_outstandingtoken'),
(114, 'Can change outstanding token', 29, 'change_outstandingtoken'),
(115, 'Can delete outstanding token', 29, 'delete_outstandingtoken'),
(116, 'Can view outstanding token', 29, 'view_outstandingtoken'),
(117, 'Can add site', 30, 'add_site'),
(118, 'Can change site', 30, 'change_site'),
(119, 'Can delete site', 30, 'delete_site'),
(120, 'Can view site', 30, 'view_site'),
(121, 'Can add email address', 31, 'add_emailaddress'),
(122, 'Can change email address', 31, 'change_emailaddress'),
(123, 'Can delete email address', 31, 'delete_emailaddress'),
(124, 'Can view email address', 31, 'view_emailaddress'),
(125, 'Can add email confirmation', 32, 'add_emailconfirmation'),
(126, 'Can change email confirmation', 32, 'change_emailconfirmation'),
(127, 'Can delete email confirmation', 32, 'delete_emailconfirmation'),
(128, 'Can view email confirmation', 32, 'view_emailconfirmation'),
(129, 'Can add social account', 33, 'add_socialaccount'),
(130, 'Can change social account', 33, 'change_socialaccount'),
(131, 'Can delete social account', 33, 'delete_socialaccount'),
(132, 'Can view social account', 33, 'view_socialaccount'),
(133, 'Can add social application', 34, 'add_socialapp'),
(134, 'Can change social application', 34, 'change_socialapp'),
(135, 'Can delete social application', 34, 'delete_socialapp'),
(136, 'Can view social application', 34, 'view_socialapp'),
(137, 'Can add social application token', 35, 'add_socialtoken'),
(138, 'Can change social application token', 35, 'change_socialtoken'),
(139, 'Can delete social application token', 35, 'delete_socialtoken'),
(140, 'Can view social application token', 35, 'view_socialtoken'),
(141, 'Can add Token', 36, 'add_token'),
(142, 'Can change Token', 36, 'change_token'),
(143, 'Can delete Token', 36, 'delete_token'),
(144, 'Can view Token', 36, 'view_token'),
(145, 'Can add Token', 37, 'add_tokenproxy'),
(146, 'Can change Token', 37, 'change_tokenproxy'),
(147, 'Can delete Token', 37, 'delete_tokenproxy'),
(148, 'Can view Token', 37, 'view_tokenproxy');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-05-16 10:29:53.597123', '63', 'Yên Bái', 2, '[{\"changed\": {\"fields\": [\"Anhtinh\"]}}]', 8, 1),
(2, '2024-05-16 10:30:04.486244', '62', 'Vĩnh Phúc', 2, '[{\"changed\": {\"fields\": [\"Anhtinh\"]}}]', 8, 1),
(3, '2024-05-16 10:30:11.695579', '61', 'Vĩnh Long', 2, '[{\"changed\": {\"fields\": [\"Anhtinh\"]}}]', 8, 1),
(4, '2024-05-16 10:33:59.195488', '1', 'An Giang', 2, '[{\"changed\": {\"fields\": [\"Anhtinh\"]}}]', 8, 1),
(5, '2024-05-16 10:34:03.602650', '2', 'Bà Rịa - Vũng Tàu', 2, '[]', 8, 1),
(6, '2024-05-16 10:34:12.392710', '2', 'Bà Rịa - Vũng Tàu', 2, '[{\"changed\": {\"fields\": [\"Anhtinh\"]}}]', 8, 1),
(7, '2024-05-16 10:34:25.433670', '3', 'Bạc Liêu', 2, '[{\"changed\": {\"fields\": [\"Anhtinh\"]}}]', 8, 1),
(8, '2024-05-18 15:25:21.442375', '1', 'Buffet sáng', 1, '[{\"added\": {}}]', 6, 1),
(9, '2024-05-18 15:25:30.131587', '1', 'Merry Land LANDMARK 81', 1, '[{\"added\": {}}]', 12, 1),
(10, '2024-05-18 15:36:11.808539', '1', 'Phong object (1)', 1, '[{\"added\": {}}]', 14, 1),
(11, '2024-05-18 15:53:18.112238', '1', 'HoaDon object (1)', 1, '[{\"added\": {}}]', 10, 1),
(12, '2024-05-18 15:54:24.526045', '1', 'ChiTietHoaDon object (1)', 1, '[{\"added\": {}}]', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(31, 'account', 'emailaddress'),
(32, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(36, 'authtoken', 'token'),
(37, 'authtoken', 'tokenproxy'),
(4, 'contenttypes', 'contenttype'),
(27, 'django_rest_passwordreset', 'resetpasswordtoken'),
(23, 'oauth2_provider', 'accesstoken'),
(22, 'oauth2_provider', 'application'),
(24, 'oauth2_provider', 'grant'),
(26, 'oauth2_provider', 'idtoken'),
(25, 'oauth2_provider', 'refreshtoken'),
(5, 'sessions', 'session'),
(30, 'sites', 'site'),
(33, 'socialaccount', 'socialaccount'),
(34, 'socialaccount', 'socialapp'),
(35, 'socialaccount', 'socialtoken'),
(28, 'token_blacklist', 'blacklistedtoken'),
(29, 'token_blacklist', 'outstandingtoken'),
(13, 'travelnestapp', 'anhkhachsan'),
(17, 'travelnestapp', 'anhphong'),
(16, 'travelnestapp', 'chitiethoadon'),
(11, 'travelnestapp', 'danhgia'),
(6, 'travelnestapp', 'dichvu'),
(10, 'travelnestapp', 'hoadon'),
(20, 'travelnestapp', 'huyen'),
(12, 'travelnestapp', 'khachsan'),
(15, 'travelnestapp', 'khuyenmai'),
(7, 'travelnestapp', 'loaitiennghi'),
(14, 'travelnestapp', 'phong'),
(18, 'travelnestapp', 'profile'),
(19, 'travelnestapp', 'tiennghi'),
(8, 'travelnestapp', 'tinh'),
(9, 'travelnestapp', 'user'),
(21, 'travelnestapp', 'xa');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-05-16 08:17:13.116019'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-05-16 08:17:13.163018'),
(3, 'auth', '0001_initial', '2024-05-16 08:17:13.325015'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-05-16 08:17:13.363017'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-05-16 08:17:13.370018'),
(6, 'auth', '0004_alter_user_username_opts', '2024-05-16 08:17:13.377017'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-05-16 08:17:13.383018'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-05-16 08:17:13.385016'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-05-16 08:17:13.391016'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-05-16 08:17:13.397019'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-05-16 08:17:13.405017'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-05-16 08:17:13.415019'),
(13, 'auth', '0011_update_proxy_permissions', '2024-05-16 08:17:13.423021'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-05-16 08:17:13.429016'),
(15, 'travelnestapp', '0001_initial', '2024-05-16 08:17:14.507133'),
(16, 'admin', '0001_initial', '2024-05-16 08:17:14.600980'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-05-16 08:17:14.609981'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-16 08:17:14.620990'),
(19, 'django_rest_passwordreset', '0001_initial', '2024-05-16 08:17:14.679981'),
(20, 'django_rest_passwordreset', '0002_pk_migration', '2024-05-16 08:17:15.023724'),
(21, 'django_rest_passwordreset', '0003_allow_blank_and_null_fields', '2024-05-16 08:17:15.071001'),
(22, 'django_rest_passwordreset', '0004_alter_resetpasswordtoken_user_agent', '2024-05-16 08:17:15.084998'),
(23, 'oauth2_provider', '0001_initial', '2024-05-16 08:17:15.607761'),
(24, 'oauth2_provider', '0002_auto_20190406_1805', '2024-05-16 08:17:15.643761'),
(25, 'oauth2_provider', '0003_auto_20201211_1314', '2024-05-16 08:17:15.693760'),
(26, 'oauth2_provider', '0004_auto_20200902_2022', '2024-05-16 08:17:15.924063'),
(27, 'oauth2_provider', '0005_auto_20211222_2352', '2024-05-16 08:17:16.045062'),
(28, 'oauth2_provider', '0006_alter_application_client_secret', '2024-05-16 08:17:16.084065'),
(29, 'oauth2_provider', '0007_application_post_logout_redirect_uris', '2024-05-16 08:17:16.106066'),
(30, 'sessions', '0001_initial', '2024-05-16 08:17:16.134133'),
(31, 'token_blacklist', '0001_initial', '2024-05-16 08:17:16.352978'),
(32, 'token_blacklist', '0002_outstandingtoken_jti_hex', '2024-05-16 08:17:16.370983'),
(33, 'token_blacklist', '0003_auto_20171017_2007', '2024-05-16 08:17:16.405982'),
(34, 'token_blacklist', '0004_auto_20171017_2013', '2024-05-16 08:17:16.450980'),
(35, 'token_blacklist', '0005_remove_outstandingtoken_jti', '2024-05-16 08:17:16.472982'),
(36, 'token_blacklist', '0006_auto_20171017_2113', '2024-05-16 08:17:16.493981'),
(37, 'token_blacklist', '0007_auto_20171017_2214', '2024-05-16 08:17:16.771024'),
(38, 'token_blacklist', '0008_migrate_to_bigautofield', '2024-05-16 08:17:17.098020'),
(39, 'token_blacklist', '0010_fix_migrate_to_bigautofield', '2024-05-16 08:17:17.132019'),
(40, 'token_blacklist', '0011_linearizes_history', '2024-05-16 08:17:17.134021'),
(41, 'token_blacklist', '0012_alter_outstandingtoken_user', '2024-05-16 08:17:17.171022'),
(42, 'travelnestapp', '0002_user_phone', '2024-05-16 08:20:20.043942'),
(43, 'account', '0001_initial', '2024-05-18 09:54:50.681919'),
(44, 'account', '0002_email_max_length', '2024-05-18 09:54:50.705921'),
(45, 'account', '0003_alter_emailaddress_create_unique_verified_email', '2024-05-18 09:54:50.748922'),
(46, 'account', '0004_alter_emailaddress_drop_unique_email', '2024-05-18 09:54:51.732075'),
(47, 'account', '0005_emailaddress_idx_upper_email', '2024-05-18 09:54:51.752072'),
(48, 'account', '0006_emailaddress_lower', '2024-05-18 09:54:51.791075'),
(49, 'account', '0007_emailaddress_idx_email', '2024-05-18 09:54:51.831879'),
(50, 'account', '0008_emailaddress_unique_primary_email_fixup', '2024-05-18 09:54:51.868879'),
(51, 'account', '0009_emailaddress_unique_primary_email', '2024-05-18 09:54:51.887878'),
(52, 'authtoken', '0001_initial', '2024-05-18 09:54:51.987897'),
(53, 'authtoken', '0002_auto_20160226_1747', '2024-05-18 09:54:52.069893'),
(54, 'authtoken', '0003_tokenproxy', '2024-05-18 09:54:52.074899'),
(55, 'authtoken', '0004_alter_tokenproxy_options', '2024-05-18 09:54:52.081897'),
(56, 'sites', '0001_initial', '2024-05-18 09:54:52.094892'),
(57, 'sites', '0002_alter_domain_unique', '2024-05-18 09:54:52.110892'),
(58, 'socialaccount', '0001_initial', '2024-05-18 09:54:52.535139'),
(59, 'socialaccount', '0002_token_max_lengths', '2024-05-18 09:54:52.581886'),
(60, 'socialaccount', '0003_extra_data_default_dict', '2024-05-18 09:54:52.604978'),
(61, 'socialaccount', '0004_app_provider_id_settings', '2024-05-18 09:54:52.660962'),
(62, 'socialaccount', '0005_socialtoken_nullable_app', '2024-05-18 09:54:52.935574'),
(63, 'socialaccount', '0006_alter_socialaccount_extra_data', '2024-05-18 09:54:52.996917'),
(64, 'travelnestapp', '0003_remove_khachsan_xa_khachsan_tinh', '2024-05-19 03:20:04.894737');

-- --------------------------------------------------------

--
-- Table structure for table `django_rest_passwordreset_resetpasswordtoken`
--

CREATE TABLE `django_rest_passwordreset_resetpasswordtoken` (
  `created_at` datetime(6) NOT NULL,
  `key` varchar(64) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `user_agent` varchar(512) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('nzup47kuqov8dp15mswt77z6ek17hn3y', '.eJxVjLsOAiEQAP-F2hBW9hawtL9vILuAcmoguUdl_HdzyRXazkzmrSJva43bUuY4ZXVRoE6_TDg9S9tFfnC7d516W-dJ9J7owy567Lm8rkf7N6i81H3LxOTRm7MVvgkkB5kJkNBYSQAlOC7eB3TZWCMDUhokOELKAFiM-nwBzU03AA:1s8Got:oe_Pm82c-61BVeZS4u4__2OB2RlZ7oB0Yndlia10Qxk', '2024-06-01 09:57:39.569291');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_accesstoken`
--

CREATE TABLE `oauth2_provider_accesstoken` (
  `id` bigint(20) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `source_refresh_token_id` bigint(20) DEFAULT NULL,
  `id_token_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_application`
--

CREATE TABLE `oauth2_provider_application` (
  `id` bigint(20) NOT NULL,
  `client_id` varchar(100) NOT NULL,
  `redirect_uris` longtext NOT NULL,
  `client_type` varchar(32) NOT NULL,
  `authorization_grant_type` varchar(32) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `skip_authorization` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `algorithm` varchar(5) NOT NULL,
  `post_logout_redirect_uris` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_grant`
--

CREATE TABLE `oauth2_provider_grant` (
  `id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `redirect_uri` longtext NOT NULL,
  `scope` longtext NOT NULL,
  `application_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `code_challenge` varchar(128) NOT NULL,
  `code_challenge_method` varchar(10) NOT NULL,
  `nonce` varchar(255) NOT NULL,
  `claims` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_idtoken`
--

CREATE TABLE `oauth2_provider_idtoken` (
  `id` bigint(20) NOT NULL,
  `jti` char(32) NOT NULL,
  `expires` datetime(6) NOT NULL,
  `scope` longtext NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `application_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_provider_refreshtoken`
--

CREATE TABLE `oauth2_provider_refreshtoken` (
  `id` bigint(20) NOT NULL,
  `token` varchar(255) NOT NULL,
  `access_token_id` bigint(20) DEFAULT NULL,
  `application_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `revoked` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(200) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`extra_data`)),
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  `provider_id` varchar(200) NOT NULL,
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`settings`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp_sites`
--

CREATE TABLE `socialaccount_socialapp_sites` (
  `id` bigint(20) NOT NULL,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint(20) NOT NULL,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

INSERT INTO `token_blacklist_blacklistedtoken` (`id`, `blacklisted_at`, `token_id`) VALUES
(1, '2024-05-16 12:30:18.998828', 3),
(2, '2024-05-16 17:05:41.703157', 5),
(3, '2024-05-17 03:10:11.885944', 9),
(7, '2024-05-17 03:17:29.965431', 10),
(9, '2024-05-21 04:27:45.713610', 18);

-- --------------------------------------------------------

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint(20) NOT NULL,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `jti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

INSERT INTO `token_blacklist_outstandingtoken` (`id`, `token`, `created_at`, `expires_at`, `user_id`, `jti`) VALUES
(1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDE2ODI2NywiaWF0IjoxNzE1ODQ4MjY3LCJqdGkiOiJiYzI3MmZhZTYzMWU0MTU2OWJmOWVmNDg2OGQyZDg1NSIsInVzZXJfaWQiOjJ9.Jio9yxZJWA2e4sEqrVbbbcPCF8GV8TY344LvM3gBjm8', '2024-05-16 08:31:07.813167', '2024-07-05 08:31:07.000000', 2, 'bc272fae631e41569bf9ef4868d2d855'),
(2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDE2ODM5MywiaWF0IjoxNzE1ODQ4MzkzLCJqdGkiOiJmN2I4OTllMDc0ZDA0YTkxYjVmNjNkODUxMmQzMTU0NyIsInVzZXJfaWQiOjJ9.LNl0AMy4zMrocZk_CG1H3-ZxM6YmPiMTRHgfuyw4aMg', '2024-05-16 08:33:13.957305', '2024-07-05 08:33:13.000000', 2, 'f7b899e074d04a91b5f63d8512d31547'),
(3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDE4MjU2MywiaWF0IjoxNzE1ODYyNTYzLCJqdGkiOiJjZWM5OWZlMjVkMDg0ZWU2OWYwZWU0MjkzMWQ4NjhiZCIsInVzZXJfaWQiOjN9.gjDDOgv9AQpFqbODvL4RfhdFtazn4IdPtcE8cyFriLo', '2024-05-16 12:29:23.349264', '2024-07-05 12:29:23.000000', 3, 'cec99fe25d084ee69f0ee42931d868bd'),
(4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDE5Nzk0MywiaWF0IjoxNzE1ODc3OTQzLCJqdGkiOiJlNzgzNDg1ZjE5MTk0ZTViYWVjNDFiM2EwZWQ3MzUzZCIsInVzZXJfaWQiOjN9.e-17F5JrxImfU0mEPPWTmw1LRJwkoFqgJEgDYv4eHEg', '2024-05-16 16:45:43.826099', '2024-07-05 16:45:43.000000', 3, 'e783485f19194e5baec41b3a0ed7353d'),
(5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDE5OTAzNywiaWF0IjoxNzE1ODc5MDM3LCJqdGkiOiJkZTk0NzkyYjk0YTA0MWEyODM2NTJhMTA3MjY4NWM3OSIsInVzZXJfaWQiOjN9.duFjZOxCdxCn8kIebrbcpl1-o5ljP0drFSkHNQLjYr4', '2024-05-16 17:03:57.543277', '2024-07-05 17:03:57.000000', 3, 'de94792b94a041a283652a1072685c79'),
(6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDIzNDQ3NCwiaWF0IjoxNzE1OTE0NDc0LCJqdGkiOiI0ODdjMzRkNDFmOTY0MjQ4OWViNDVlNTZjMzExMTk4MCIsInVzZXJfaWQiOjN9.PIP_a8i7vDrMq0ootZytQn3zKsDKOf4BjVyhcdVVriw', '2024-05-17 02:54:34.009428', '2024-07-06 02:54:34.000000', 3, '487c34d41f9642489eb45e56c3111980'),
(7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDIzNDUwOSwiaWF0IjoxNzE1OTE0NTA5LCJqdGkiOiJmNDc0ZGFiOGU3NWE0NjY3YWU4Mzc2NzBjZDdjNWY2NyIsInVzZXJfaWQiOjN9.wtawG51FWl0q55pQAKWlB9JHyu7OWb5gyW2Py71e7g4', '2024-05-17 02:55:09.887009', '2024-07-06 02:55:09.000000', 3, 'f474dab8e75a4667ae837670cd7c5f67'),
(8, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDIzNDUxMSwiaWF0IjoxNzE1OTE0NTExLCJqdGkiOiIyNTQzNzM5NDJkOTA0N2VmYjFhNDdlNDY2MTk0MWY1NSIsInVzZXJfaWQiOjN9.RMWIGfPFg0Xfg6nWhZR1NAT4Ql9PIA742z2okF8XIKg', '2024-05-17 02:55:11.584681', '2024-07-06 02:55:11.000000', 3, '254373942d9047efb1a47e4661941f55'),
(9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDIzNDYxNywiaWF0IjoxNzE1OTE0NjE3LCJqdGkiOiI5ZWZjN2I2YmYxMmQ0NDc1OTgzNmQwYmM3NWYzYzk4OCIsInVzZXJfaWQiOjN9.BD6drtFVtIVV9EWQAt6ZmQyhtpoAZtA51C3rsICpW5I', '2024-05-17 02:56:57.196771', '2024-07-06 02:56:57.000000', 3, '9efc7b6bf12d44759836d0bc75f3c988'),
(10, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDIzNTQxMSwiaWF0IjoxNzE1OTE1NDExLCJqdGkiOiJiMTEyNjA1YmMzNTI0NzNlYjFlMjAxMDIzYWRkODJiYiIsInVzZXJfaWQiOjMsImZ1bGxfbmFtZSI6bnVsbCwidXNlcm5hbWUiOiJob3RhIiwiZW1haWwiOiJwcUBnbWFpbC5jb20iLCJiaW8iOm51bGwsImF2YXRhciI6IiIsInZlcmlmaWVkIjpmYWxzZX0.QgatHVmQYn3SJ-lRKH0AoXMB75gKwF336UEvRfIsN4E', NULL, '2024-07-06 03:10:11.000000', NULL, 'b112605bc352473eb1e201023add82bb'),
(13, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDIzNjAxNCwiaWF0IjoxNzE1OTE2MDE0LCJqdGkiOiJlNTk2M2Q0ZmI1MWE0YjI3YTk2OGQ2YTI0NWUyZjcxMiIsInVzZXJfaWQiOjN9.XjDCVlB6kJaWzFi0eVfumf9_F8JTGNakZnufwMqMs1U', '2024-05-17 03:20:14.983182', '2024-07-06 03:20:14.000000', 3, 'e5963d4fb51a4b27a968d6a245e2f712'),
(14, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDIzNjg5OSwiaWF0IjoxNzE1OTE2ODk5LCJqdGkiOiJlOGJiMGNlN2JlNGQ0ZjI4YjVmZTRhN2E5ZWIzM2E3ZiIsInVzZXJfaWQiOjN9.S_awwUv-y8z7h7YwMX2k9cOSVqodtMRCGVnlxXk4YS8', '2024-05-17 03:34:59.544729', '2024-07-06 03:34:59.000000', 3, 'e8bb0ce7be4d4f28b5fe4a7a9eb33a7f'),
(15, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDI2MDk1OSwiaWF0IjoxNzE1OTQwOTU5LCJqdGkiOiI1MTk5MmIxMDBmOGE0Njk4OGY4ZGI3ODQ3MzBlMDBhZCIsInVzZXJfaWQiOjN9.AT9lCaFkx3TWquPyQut-dw3hLso-ODzugoi11YGBPMo', '2024-05-17 10:15:59.525693', '2024-07-06 10:15:59.000000', 3, '51992b100f8a46988f8db784730e00ad'),
(16, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDI2MTU3NSwiaWF0IjoxNzE1OTQxNTc1LCJqdGkiOiI5ODhmNzE0OGRlZWI0YjFiYjI2NmRmMTNiMDg0YjI4MiIsInVzZXJfaWQiOjN9.rdQarOTDgsDipEkdTXUKHXBS3r79_gph6PFChU3uFgU', '2024-05-17 10:26:15.934763', '2024-07-06 10:26:15.000000', 3, '988f7148deeb4b1bb266df13b084b282'),
(17, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDI2MTc3OSwiaWF0IjoxNzE1OTQxNzc5LCJqdGkiOiJmOTkzNmJmODk5Zjg0NGRiOTBkMDFmMzYzZTllNmQwZCIsInVzZXJfaWQiOjN9.pSyU3QbvFjrRYr-mDnwxcLEHPXmdQQRtWjPy7CFrEIc', '2024-05-17 10:29:39.576851', '2024-07-06 10:29:39.000000', 3, 'f9936bf899f844db90d01f363e9e6d0d'),
(18, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcyMDU4NTI5OSwiaWF0IjoxNzE2MjY1Mjk5LCJqdGkiOiI5NDc1Zjg3ODU5Mjg0ZTYxODYzNzllNDUyM2Y1ZTM4YiIsInVzZXJfaWQiOjN9.hV74Cn93FXZeFepFtgGW4_NqmQzqaRkGyGRHgvocpQ0', '2024-05-21 04:21:39.543955', '2024-07-10 04:21:39.000000', 3, '9475f87859284e6186379e4523f5e38b');

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_anhkhachsan`
--

CREATE TABLE `travelnestapp_anhkhachsan` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `anhks` varchar(100) DEFAULT NULL,
  `khachsan_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_anhphong`
--

CREATE TABLE `travelnestapp_anhphong` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `anhphong` varchar(100) DEFAULT NULL,
  `phong_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_chitiethoadon`
--

CREATE TABLE `travelnestapp_chitiethoadon` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `ngay_gio_nhan` datetime(6) NOT NULL,
  `ngay_gio_tra` datetime(6) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` double NOT NULL,
  `hoadon_id` bigint(20) DEFAULT NULL,
  `phong_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travelnestapp_chitiethoadon`
--

INSERT INTO `travelnestapp_chitiethoadon` (`id`, `created_date`, `updated_date`, `active`, `ngay_gio_nhan`, `ngay_gio_tra`, `soluong`, `dongia`, `hoadon_id`, `phong_id`) VALUES
(1, '2024-05-18 15:54:24.524044', '2024-05-18 15:54:24.524044', 1, '2024-05-22 15:54:22.000000', '2024-05-25 15:54:23.000000', 1, 1000000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_danhgia`
--

CREATE TABLE `travelnestapp_danhgia` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `diem` int(11) NOT NULL,
  `binhluan` varchar(200) DEFAULT NULL,
  `hoadon_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_dichvu`
--

CREATE TABLE `travelnestapp_dichvu` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `tendichvu` varchar(200) DEFAULT NULL,
  `mota_dichvu` longtext DEFAULT NULL,
  `gia_dichvu` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travelnestapp_dichvu`
--

INSERT INTO `travelnestapp_dichvu` (`id`, `created_date`, `updated_date`, `active`, `tendichvu`, `mota_dichvu`, `gia_dichvu`) VALUES
(1, '2024-05-18 15:25:21.441374', '2024-05-18 15:25:21.441374', 1, 'Buffet sáng', 'Tự do lựa chọn các món ăn', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_hoadon`
--

CREATE TABLE `travelnestapp_hoadon` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travelnestapp_hoadon`
--

INSERT INTO `travelnestapp_hoadon` (`id`, `created_date`, `updated_date`, `active`, `user_id`) VALUES
(1, '2024-05-18 15:53:18.111237', '2024-05-18 15:53:18.111237', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_huyen`
--

CREATE TABLE `travelnestapp_huyen` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `tenhuyen` varchar(200) DEFAULT NULL,
  `tinh_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travelnestapp_huyen`
--

INSERT INTO `travelnestapp_huyen` (`id`, `created_date`, `updated_date`, `active`, `tenhuyen`, `tinh_id`) VALUES
(1, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Ba Đình', 24),
(2, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Hoàn Kiếm', 24),
(3, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Tây Hồ', 24),
(4, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Long Biên', 24),
(5, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Cầu Giấy', 24),
(6, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Đống Đa', 24),
(7, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Hai Bà Trưng', 24),
(8, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Hoàng Mai', 24),
(9, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Thanh Xuân', 24),
(10, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Sóc Sơn', 24),
(11, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đông Anh', 24),
(12, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Gia Lâm', 24),
(13, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Nam Từ Liêm', 24),
(14, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Trì', 24),
(15, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Bắc Từ Liêm', 24),
(16, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mê Linh', 24),
(17, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Hà Đông', 24),
(18, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Sơn Tây', 24),
(19, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ba Vì', 24),
(20, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phúc Thọ', 24),
(21, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đan Phượng', 24),
(22, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hoài Đức', 24),
(23, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quốc Oai', 24),
(24, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thạch Thất', 24),
(25, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chương Mỹ', 24),
(26, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Oai', 24),
(27, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thường Tín', 24),
(28, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Xuyên', 24),
(29, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ứng Hòa', 24),
(30, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mỹ Đức', 24),
(31, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Phan Thiết', 11),
(32, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã La Gi', 11),
(33, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tuy Phong', 11),
(34, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bắc Bình', 11),
(35, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hàm Thuận Bắc', 11),
(36, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hàm Thuận Nam', 11),
(37, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tánh Linh', 11),
(38, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đức Linh', 11),
(39, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hàm Tân', 11),
(40, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Quí', 11),
(41, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Cà Mau', 12),
(42, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện U Minh', 12),
(43, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thới Bình', 12),
(44, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trần Văn Thời', 12),
(45, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cái Nước', 12),
(46, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đầm Dơi', 12),
(47, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Năm Căn', 12),
(48, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ngọc Hiển', 12),
(49, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Cao Bằng', 13),
(50, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bảo Lâm', 13),
(51, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bảo Lạc', 13),
(52, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hà Quảng', 13),
(53, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trùng Khánh', 13),
(54, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hạ Lang', 13),
(55, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quảng Hòa', 13),
(56, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hoà An', 13),
(57, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nguyên Bình', 13),
(58, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thạch An', 13),
(59, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Biên Hòa', 19),
(60, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Long Khánh', 19),
(61, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Phú', 19),
(62, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vĩnh Cửu', 19),
(63, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Định Quán', 19),
(64, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trảng Bom', 19),
(65, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thống Nhất', 19),
(66, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cẩm Mỹ', 19),
(67, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Long Thành', 19),
(68, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Xuân Lộc', 19),
(69, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nhơn Trạch', 19),
(70, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Cao Lãnh', 20),
(71, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Sa Đéc', 20),
(72, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hồng Ngự', 20),
(73, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Hồng', 20),
(74, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hồng Ngự', 20),
(75, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tháp Mười', 20),
(76, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tam Nông', 20),
(77, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Bình', 20),
(78, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cao Lãnh', 20),
(79, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lấp Vò', 20),
(80, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lai Vung', 20),
(81, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành', 20),
(82, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Pleiku', 21),
(83, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã An Khê', 21),
(84, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Ayun Pa', 21),
(85, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện KBang', 21),
(86, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đăk Đoa', 21),
(87, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chư Păh', 21),
(88, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ia Grai', 21),
(89, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mang Yang', 21),
(90, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kông Chro', 21),
(91, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đức Cơ', 21),
(92, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chư Prông', 21),
(93, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chư Sê', 21),
(94, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đăk Pơ', 21),
(95, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ia Pa', 21),
(96, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Krông Pa', 21),
(97, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Thiện', 21),
(98, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chư Pưh', 21),
(99, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hà Giang', 22),
(100, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đồng Văn', 22),
(101, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mèo Vạc', 22),
(102, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Minh', 22),
(103, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quản Bạ', 22),
(104, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vị Xuyên', 22),
(105, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bắc Mê', 22),
(106, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hoàng Su Phì', 22),
(107, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Xín Mần', 22),
(108, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bắc Quang', 22),
(109, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quang Bình', 22),
(110, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Phủ Lý', 23),
(111, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Duy Tiên', 23),
(112, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kim Bảng', 23),
(113, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Liêm', 23),
(114, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bình Lục', 23),
(115, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lý Nhân', 23),
(116, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hà Tĩnh', 25),
(117, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Hồng Lĩnh', 25),
(118, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hương Sơn', 25),
(119, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đức Thọ', 25),
(120, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vũ Quang', 25),
(121, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nghi Xuân', 25),
(122, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Can Lộc', 25),
(123, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hương Khê', 25),
(124, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thạch Hà', 25),
(125, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cẩm Xuyên', 25),
(126, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kỳ Anh', 25),
(127, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lộc Hà', 25),
(128, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Kỳ Anh', 25),
(129, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hải Dương', 26),
(130, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Chí Linh', 26),
(131, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nam Sách', 26),
(132, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kinh Môn', 26),
(133, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kim Thành', 26),
(134, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Hà', 26),
(135, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cẩm Giàng', 26),
(136, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bình Giang', 26),
(137, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Gia Lộc', 26),
(138, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tứ Kỳ', 26),
(139, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ninh Giang', 26),
(140, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Miện', 26),
(141, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Vị Thanh', 28),
(142, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Ngã Bảy', 28),
(143, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành A', 28),
(144, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành', 28),
(145, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phụng Hiệp', 28),
(146, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vị Thuỷ', 28),
(147, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Long Mỹ', 28),
(148, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Long Mỹ', 28),
(149, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hoà Bình', 29),
(150, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đà Bắc', 29),
(151, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kỳ Sơn', 29),
(152, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lương Sơn', 29),
(153, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kim Bôi', 29),
(154, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cao Phong', 29),
(155, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Lạc', 29),
(156, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mai Châu', 29),
(157, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lạc Sơn', 29),
(158, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Thuỷ', 29),
(159, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lạc Thuỷ', 29),
(160, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hưng Yên', 31),
(161, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Văn Lâm', 31),
(162, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Văn Giang', 31),
(163, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Mỹ', 31),
(164, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mỹ Hào', 31),
(165, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ân Thi', 31),
(166, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Khoái Châu', 31),
(167, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kim Động', 31),
(168, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tiên Lữ', 31),
(169, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phù Cừ', 31),
(170, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Nha Trang', 32),
(171, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Cam Ranh', 32),
(172, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cam Lâm', 32),
(173, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vạn Ninh', 32),
(174, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Ninh Hòa', 32),
(175, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Khánh Vĩnh', 32),
(176, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Diên Khánh', 32),
(177, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Khánh Sơn', 32),
(178, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trường Sa', 32),
(179, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Rạch Giá', 33),
(180, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hà Tiên', 33),
(181, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kiên Lương', 33),
(182, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hòn Đất', 33),
(183, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Hiệp', 33),
(184, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành', 33),
(185, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Giồng Riềng', 33),
(186, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Gò Quao', 33),
(187, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện An Biên', 33),
(188, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện An Minh', 33),
(189, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vĩnh Thuận', 33),
(190, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Phú Quốc', 33),
(191, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kiên Hải', 33),
(192, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện U Minh Thượng', 33),
(193, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Giang Thành', 33),
(194, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Phước Long', 10),
(195, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Đồng Xoài', 10),
(196, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Bình Long', 10),
(197, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bù Gia Mập', 10),
(198, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lộc Ninh', 10),
(199, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bù Đốp', 10),
(200, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hớn Quản', 10),
(201, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đồng Phú', 10),
(202, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bù Đăng', 10),
(203, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Chơn Thành', 10),
(204, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Riềng', 10),
(205, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Phan Thiết', 11),
(206, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã La Gi', 11),
(207, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tuy Phong', 11),
(208, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bắc Bình', 11),
(209, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hàm Thuận Bắc', 11),
(210, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hàm Thuận Nam', 11),
(211, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tánh Linh', 11),
(212, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đức Linh', 11),
(213, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hàm Tân', 11),
(214, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Quí', 11),
(215, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Cà Mau', 12),
(216, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện U Minh', 12),
(217, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thới Bình', 12),
(218, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trần Văn Thời', 12),
(219, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cái Nước', 12),
(220, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đầm Dơi', 12),
(221, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Năm Căn', 12),
(222, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ngọc Hiển', 12),
(223, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Cao Bằng', 13),
(224, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bảo Lâm', 13),
(225, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bảo Lạc', 13),
(226, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hà Quảng', 13),
(227, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trùng Khánh', 13),
(228, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hạ Lang', 13),
(229, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quảng Hòa', 13),
(230, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hoà An', 13),
(231, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nguyên Bình', 13),
(232, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thạch An', 13),
(233, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Biên Hòa', 19),
(234, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Long Khánh', 19),
(235, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Phú', 19),
(236, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vĩnh Cửu', 19),
(237, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Định Quán', 19),
(238, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trảng Bom', 19),
(239, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thống Nhất', 19),
(240, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cẩm Mỹ', 19),
(241, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Long Thành', 19),
(242, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Xuân Lộc', 19),
(243, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nhơn Trạch', 19),
(244, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Cao Lãnh', 20),
(245, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Sa Đéc', 20),
(246, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hồng Ngự', 20),
(247, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Hồng', 20),
(248, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hồng Ngự', 20),
(249, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tháp Mười', 20),
(250, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tam Nông', 20),
(251, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Bình', 20),
(252, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cao Lãnh', 20),
(253, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lấp Vò', 20),
(254, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lai Vung', 20),
(255, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành', 20),
(256, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Pleiku', 21),
(257, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã An Khê', 21),
(258, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Ayun Pa', 21),
(259, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện KBang', 21),
(260, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đăk Đoa', 21),
(261, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chư Păh', 21),
(262, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ia Grai', 21),
(263, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mang Yang', 21),
(264, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kông Chro', 21),
(265, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đức Cơ', 21),
(266, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chư Prông', 21),
(267, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chư Sê', 21),
(268, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đăk Pơ', 21),
(269, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ia Pa', 21),
(270, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Krông Pa', 21),
(271, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Thiện', 21),
(272, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chư Pưh', 21),
(273, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hà Giang', 22),
(274, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đồng Văn', 22),
(275, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mèo Vạc', 22),
(276, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Minh', 22),
(277, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quản Bạ', 22),
(278, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vị Xuyên', 22),
(279, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bắc Mê', 22),
(280, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hoàng Su Phì', 22),
(281, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Xín Mần', 22),
(282, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bắc Quang', 22),
(283, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quang Bình', 22),
(284, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Phủ Lý', 23),
(285, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Duy Tiên', 23),
(286, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kim Bảng', 23),
(287, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Liêm', 23),
(288, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bình Lục', 23),
(289, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lý Nhân', 23),
(290, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hà Tĩnh', 25),
(291, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Hồng Lĩnh', 25),
(292, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hương Sơn', 25),
(293, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đức Thọ', 25),
(294, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vũ Quang', 25),
(295, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nghi Xuân', 25),
(296, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Can Lộc', 25),
(297, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hương Khê', 25),
(298, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thạch Hà', 25),
(299, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cẩm Xuyên', 25),
(300, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kỳ Anh', 25),
(301, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lộc Hà', 25),
(302, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Kỳ Anh', 25),
(303, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hải Dương', 26),
(304, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Chí Linh', 26),
(305, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nam Sách', 26),
(306, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kinh Môn', 26),
(307, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kim Thành', 26),
(308, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Hà', 26),
(309, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cẩm Giàng', 26),
(310, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bình Giang', 26),
(311, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Gia Lộc', 26),
(312, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tứ Kỳ', 26),
(313, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ninh Giang', 26),
(314, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Miện', 26),
(315, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Vị Thanh', 28),
(316, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Ngã Bảy', 28),
(317, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành A', 28),
(318, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành', 28),
(319, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phụng Hiệp', 28),
(320, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vị Thuỷ', 28),
(321, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Long Mỹ', 28),
(322, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Long Mỹ', 28),
(323, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hoà Bình', 29),
(324, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đà Bắc', 29),
(325, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kỳ Sơn', 29),
(326, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lương Sơn', 29),
(327, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kim Bôi', 29),
(328, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cao Phong', 29),
(329, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Lạc', 29),
(330, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mai Châu', 29),
(331, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lạc Sơn', 29),
(332, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Thuỷ', 29),
(333, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lạc Thuỷ', 29),
(334, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hưng Yên', 31),
(335, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Văn Lâm', 31),
(336, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Văn Giang', 31),
(337, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Mỹ', 31),
(338, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mỹ Hào', 31),
(339, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ân Thi', 31),
(340, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Khoái Châu', 31),
(341, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kim Động', 31),
(342, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tiên Lữ', 31),
(343, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phù Cừ', 31),
(344, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Nha Trang', 32),
(345, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Cam Ranh', 32),
(346, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cam Lâm', 32),
(347, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vạn Ninh', 32),
(348, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Ninh Hòa', 32),
(349, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Khánh Vĩnh', 32),
(350, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Diên Khánh', 32),
(351, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Khánh Sơn', 32),
(352, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trường Sa', 32),
(353, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Rạch Giá', 33),
(354, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hà Tiên', 33),
(355, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kiên Lương', 33),
(356, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hòn Đất', 33),
(357, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Hiệp', 33),
(358, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành', 33),
(359, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Giồng Riềng', 33),
(360, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Gò Quao', 33),
(361, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện An Biên', 33),
(362, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện An Minh', 33),
(363, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vĩnh Thuận', 33),
(364, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Phú Quốc', 33),
(365, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kiên Hải', 33),
(366, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện U Minh Thượng', 33),
(367, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Giang Thành', 33),
(368, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Phước Long', 10),
(369, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Đồng Xoài', 10),
(370, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Bình Long', 10),
(371, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bù Gia Mập', 10),
(372, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lộc Ninh', 10),
(373, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bù Đốp', 10),
(374, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hớn Quản', 10),
(375, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đồng Phú', 10),
(376, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bù Đăng', 10),
(377, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Chơn Thành', 10),
(378, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Riềng', 10),
(379, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Phan Thiết', 11),
(380, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã La Gi', 11),
(381, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tuy Phong', 11),
(382, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bắc Bình', 11),
(383, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hàm Thuận Bắc', 11),
(384, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hàm Thuận Nam', 11),
(385, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tánh Linh', 11),
(386, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đức Linh', 11),
(387, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hàm Tân', 11),
(388, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Quí', 11),
(389, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Cà Mau', 12),
(390, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện U Minh', 12),
(391, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thới Bình', 12),
(392, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trần Văn Thời', 12),
(393, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cái Nước', 12),
(394, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đầm Dơi', 12),
(395, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Năm Căn', 12),
(396, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ngọc Hiển', 12),
(397, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Cao Bằng', 13),
(398, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bảo Lâm', 13),
(399, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bảo Lạc', 13),
(400, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hà Quảng', 13),
(401, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trùng Khánh', 13),
(402, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hạ Lang', 13),
(403, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quảng Hòa', 13),
(404, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hoà An', 13),
(405, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nguyên Bình', 13),
(406, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thạch An', 13),
(407, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Buôn Ma Thuột', 16),
(408, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị Xã Buôn Hồ', 16),
(409, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ea H\'leo', 16),
(410, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ea Súp', 16),
(411, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Buôn Đôn', 16),
(412, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cư M\'gar', 16),
(413, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Krông Búk', 16),
(414, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Krông Năng', 16),
(415, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ea Kar', 16),
(416, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện M\'Đrắk', 16),
(417, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Krông Bông', 16),
(418, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Krông Pắc', 16),
(419, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Krông A Na', 16),
(420, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lắk', 16),
(421, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cư Kuin', 16),
(422, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Gia Nghĩa', 17),
(423, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đăk Glong', 17),
(424, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cư Jút', 17),
(425, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đắk Mil', 17),
(426, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Krông Nô', 17),
(427, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đắk Song', 17),
(428, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đắk R\'Lấp', 17),
(429, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tuy Đức', 17),
(430, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Biên Hòa', 19),
(431, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Long Khánh', 19),
(432, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Phú', 19),
(433, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vĩnh Cửu', 19),
(434, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Định Quán', 19),
(435, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trảng Bom', 19),
(436, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thống Nhất', 19),
(437, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cẩm Mỹ', 19),
(438, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Long Thành', 19),
(439, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Xuân Lộc', 19),
(440, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nhơn Trạch', 19),
(441, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Cao Lãnh', 20),
(442, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Sa Đéc', 20),
(443, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hồng Ngự', 20),
(444, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Hồng', 20),
(445, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hồng Ngự', 20),
(446, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tháp Mười', 20),
(447, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tam Nông', 20),
(448, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Bình', 20),
(449, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cao Lãnh', 20),
(450, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lấp Vò', 20),
(451, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lai Vung', 20),
(452, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành', 20),
(453, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Pleiku', 21),
(454, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã An Khê', 21),
(455, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Ayun Pa', 21),
(456, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện KBang', 21),
(457, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đăk Đoa', 21),
(458, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chư Păh', 21),
(459, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ia Grai', 21),
(460, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mang Yang', 21),
(461, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kông Chro', 21),
(462, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đức Cơ', 21),
(463, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chư Prông', 21),
(464, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chư Sê', 21),
(465, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đăk Pơ', 21),
(466, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ia Pa', 21),
(467, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Krông Pa', 21),
(468, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Thiện', 21),
(469, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chư Pưh', 21),
(470, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hà Giang', 22),
(471, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đồng Văn', 22),
(472, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mèo Vạc', 22),
(473, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Minh', 22),
(474, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quản Bạ', 22),
(475, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vị Xuyên', 22),
(476, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bắc Mê', 22),
(477, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hoàng Su Phì', 22),
(478, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Xín Mần', 22),
(479, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bắc Quang', 22),
(480, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quang Bình', 22),
(481, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Phủ Lý', 23),
(482, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Duy Tiên', 23),
(483, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kim Bảng', 23),
(484, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Liêm', 23),
(485, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bình Lục', 23),
(486, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lý Nhân', 23),
(487, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hà Tĩnh', 25),
(488, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Hồng Lĩnh', 25),
(489, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hương Sơn', 25),
(490, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đức Thọ', 25),
(491, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vũ Quang', 25),
(492, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nghi Xuân', 25),
(493, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Can Lộc', 25),
(494, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hương Khê', 25),
(495, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thạch Hà', 25),
(496, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cẩm Xuyên', 25),
(497, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kỳ Anh', 25),
(498, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lộc Hà', 25),
(499, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Kỳ Anh', 25),
(500, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hải Dương', 26),
(501, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Chí Linh', 26),
(502, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nam Sách', 26),
(503, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kinh Môn', 26),
(504, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kim Thành', 26),
(505, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Hà', 26),
(506, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cẩm Giàng', 26),
(507, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bình Giang', 26),
(508, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Gia Lộc', 26),
(509, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tứ Kỳ', 26),
(510, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ninh Giang', 26),
(511, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Miện', 26),
(512, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Vị Thanh', 28),
(513, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Ngã Bảy', 28),
(514, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành A', 28),
(515, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành', 28),
(516, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phụng Hiệp', 28),
(517, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vị Thuỷ', 28),
(518, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Long Mỹ', 28),
(519, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Long Mỹ', 28),
(520, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hoà Bình', 29),
(521, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đà Bắc', 29),
(522, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kỳ Sơn', 29),
(523, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lương Sơn', 29),
(524, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kim Bôi', 29),
(525, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cao Phong', 29),
(526, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Lạc', 29),
(527, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mai Châu', 29),
(528, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lạc Sơn', 29),
(529, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Thuỷ', 29),
(530, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lạc Thuỷ', 29),
(531, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hưng Yên', 31),
(532, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Văn Lâm', 31),
(533, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Văn Giang', 31),
(534, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Mỹ', 31),
(535, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mỹ Hào', 31),
(536, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ân Thi', 31),
(537, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Khoái Châu', 31),
(538, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kim Động', 31),
(539, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tiên Lữ', 31),
(540, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phù Cừ', 31),
(541, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Nha Trang', 32),
(542, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Cam Ranh', 32),
(543, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cam Lâm', 32),
(544, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vạn Ninh', 32),
(545, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Ninh Hòa', 32),
(546, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Khánh Vĩnh', 32),
(547, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Diên Khánh', 32),
(548, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Khánh Sơn', 32),
(549, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trường Sa', 32),
(550, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Rạch Giá', 33),
(551, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hà Tiên', 33);
INSERT INTO `travelnestapp_huyen` (`id`, `created_date`, `updated_date`, `active`, `tenhuyen`, `tinh_id`) VALUES
(552, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kiên Lương', 33),
(553, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hòn Đất', 33),
(554, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Hiệp', 33),
(555, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành', 33),
(556, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Giồng Riềng', 33),
(557, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Gò Quao', 33),
(558, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện An Biên', 33),
(559, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện An Minh', 33),
(560, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vĩnh Thuận', 33),
(561, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Phú Quốc', 33),
(562, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kiên Hải', 33),
(563, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện U Minh Thượng', 33),
(564, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Giang Thành', 33),
(565, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Phước Long', 10),
(566, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Đồng Xoài', 10),
(567, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Bình Long', 10),
(568, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bù Gia Mập', 10),
(569, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lộc Ninh', 10),
(570, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bù Đốp', 10),
(571, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hớn Quản', 10),
(572, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đồng Phú', 10),
(573, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bù Đăng', 10),
(574, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Chơn Thành', 10),
(575, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Riềng', 10),
(576, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Phan Thiết', 11),
(577, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã La Gi', 11),
(578, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tuy Phong', 11),
(579, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bắc Bình', 11),
(580, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hàm Thuận Bắc', 11),
(581, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hàm Thuận Nam', 11),
(582, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tánh Linh', 11),
(583, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đức Linh', 11),
(584, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hàm Tân', 11),
(585, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Quí', 11),
(586, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Cà Mau', 12),
(587, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện U Minh', 12),
(588, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thới Bình', 12),
(589, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trần Văn Thời', 12),
(590, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cái Nước', 12),
(591, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đầm Dơi', 12),
(592, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Năm Căn', 12),
(593, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ngọc Hiển', 12),
(594, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Cao Bằng', 13),
(595, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bảo Lâm', 13),
(596, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bảo Lạc', 13),
(597, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hà Quảng', 13),
(598, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trùng Khánh', 13),
(599, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hạ Lang', 13),
(600, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quảng Hòa', 13),
(601, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hoà An', 13),
(602, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nguyên Bình', 13),
(603, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thạch An', 13),
(604, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Buôn Ma Thuột', 16),
(605, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị Xã Buôn Hồ', 16),
(606, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ea H\'leo', 16),
(607, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ea Súp', 16),
(608, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Buôn Đôn', 16),
(609, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cư M\'gar', 16),
(610, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Krông Búk', 16),
(611, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Krông Năng', 16),
(612, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ea Kar', 16),
(613, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện M\'Đrắk', 16),
(614, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Krông Bông', 16),
(615, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Krông Pắc', 16),
(616, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Krông A Na', 16),
(617, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lắk', 16),
(618, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cư Kuin', 16),
(619, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Gia Nghĩa', 17),
(620, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đăk Glong', 17),
(621, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cư Jút', 17),
(622, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đắk Mil', 17),
(623, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Krông Nô', 17),
(624, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đắk Song', 17),
(625, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đắk R\'Lấp', 17),
(626, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tuy Đức', 17),
(627, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Biên Hòa', 19),
(628, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Long Khánh', 19),
(629, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Phú', 19),
(630, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vĩnh Cửu', 19),
(631, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Định Quán', 19),
(632, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trảng Bom', 19),
(633, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thống Nhất', 19),
(634, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cẩm Mỹ', 19),
(635, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Long Thành', 19),
(636, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Xuân Lộc', 19),
(637, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nhơn Trạch', 19),
(638, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Cao Lãnh', 20),
(639, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Sa Đéc', 20),
(640, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hồng Ngự', 20),
(641, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Hồng', 20),
(642, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hồng Ngự', 20),
(643, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tháp Mười', 20),
(644, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tam Nông', 20),
(645, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Bình', 20),
(646, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cao Lãnh', 20),
(647, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lấp Vò', 20),
(648, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lai Vung', 20),
(649, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành', 20),
(650, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Pleiku', 21),
(651, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã An Khê', 21),
(652, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Ayun Pa', 21),
(653, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện KBang', 21),
(654, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đăk Đoa', 21),
(655, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chư Păh', 21),
(656, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ia Grai', 21),
(657, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mang Yang', 21),
(658, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kông Chro', 21),
(659, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đức Cơ', 21),
(660, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chư Prông', 21),
(661, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chư Sê', 21),
(662, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đăk Pơ', 21),
(663, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ia Pa', 21),
(664, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Krông Pa', 21),
(665, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Thiện', 21),
(666, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chư Pưh', 21),
(667, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hà Giang', 22),
(668, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đồng Văn', 22),
(669, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mèo Vạc', 22),
(670, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Minh', 22),
(671, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quản Bạ', 22),
(672, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vị Xuyên', 22),
(673, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bắc Mê', 22),
(674, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hoàng Su Phì', 22),
(675, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Xín Mần', 22),
(676, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bắc Quang', 22),
(677, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quang Bình', 22),
(678, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Phủ Lý', 23),
(679, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Duy Tiên', 23),
(680, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kim Bảng', 23),
(681, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Liêm', 23),
(682, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bình Lục', 23),
(683, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lý Nhân', 23),
(684, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hà Tĩnh', 25),
(685, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Hồng Lĩnh', 25),
(686, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hương Sơn', 25),
(687, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đức Thọ', 25),
(688, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vũ Quang', 25),
(689, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nghi Xuân', 25),
(690, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Can Lộc', 25),
(691, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hương Khê', 25),
(692, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thạch Hà', 25),
(693, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cẩm Xuyên', 25),
(694, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kỳ Anh', 25),
(695, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lộc Hà', 25),
(696, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Kỳ Anh', 25),
(697, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hải Dương', 26),
(698, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Chí Linh', 26),
(699, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nam Sách', 26),
(700, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kinh Môn', 26),
(701, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kim Thành', 26),
(702, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Hà', 26),
(703, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cẩm Giàng', 26),
(704, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bình Giang', 26),
(705, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Gia Lộc', 26),
(706, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tứ Kỳ', 26),
(707, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ninh Giang', 26),
(708, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Miện', 26),
(709, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Vị Thanh', 28),
(710, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Ngã Bảy', 28),
(711, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành A', 28),
(712, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành', 28),
(713, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phụng Hiệp', 28),
(714, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vị Thuỷ', 28),
(715, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Long Mỹ', 28),
(716, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Long Mỹ', 28),
(717, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hoà Bình', 29),
(718, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đà Bắc', 29),
(719, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kỳ Sơn', 29),
(720, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lương Sơn', 29),
(721, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kim Bôi', 29),
(722, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cao Phong', 29),
(723, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Lạc', 29),
(724, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mai Châu', 29),
(725, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lạc Sơn', 29),
(726, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Thuỷ', 29),
(727, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lạc Thuỷ', 29),
(728, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hưng Yên', 31),
(729, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Văn Lâm', 31),
(730, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Văn Giang', 31),
(731, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Mỹ', 31),
(732, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mỹ Hào', 31),
(733, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ân Thi', 31),
(734, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Khoái Châu', 31),
(735, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kim Động', 31),
(736, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tiên Lữ', 31),
(737, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phù Cừ', 31),
(738, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Nha Trang', 32),
(739, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Cam Ranh', 32),
(740, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cam Lâm', 32),
(741, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vạn Ninh', 32),
(742, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Ninh Hòa', 32),
(743, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Khánh Vĩnh', 32),
(744, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Diên Khánh', 32),
(745, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Khánh Sơn', 32),
(746, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trường Sa', 32),
(747, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Rạch Giá', 33),
(748, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hà Tiên', 33),
(749, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kiên Lương', 33),
(750, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hòn Đất', 33),
(751, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Hiệp', 33),
(752, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành', 33),
(753, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Giồng Riềng', 33),
(754, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Gò Quao', 33),
(755, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện An Biên', 33),
(756, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện An Minh', 33),
(757, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vĩnh Thuận', 33),
(758, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Phú Quốc', 33),
(759, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kiên Hải', 33),
(760, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện U Minh Thượng', 33),
(761, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Giang Thành', 33),
(762, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Kon Tum', 34),
(763, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đắk Glei', 34),
(764, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ngọc Hồi', 34),
(765, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đắk Tô', 34),
(766, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kon Plông', 34),
(767, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kon Rẫy', 34),
(768, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đắk Hà', 34),
(769, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Sa Thầy', 34),
(770, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tu Mơ Rông', 34),
(771, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ia H\'Drai', 34),
(772, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Lai Châu', 35),
(773, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tam Đường', 35),
(774, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mường Tè', 35),
(775, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Sìn Hồ', 35),
(776, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phong Thổ', 35),
(777, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Than Uyên', 35),
(778, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Uyên', 35),
(779, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nậm Nhùn', 35),
(780, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Đà Lạt', 36),
(781, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Bảo Lộc', 36),
(782, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lạc Dương', 36),
(783, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đơn Dương', 36),
(784, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đức Trọng', 36),
(785, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lâm Hà', 36),
(786, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bảo Lâm', 36),
(787, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Di Linh', 36),
(788, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đắk Mil', 36),
(789, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cát Tiên', 36),
(790, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đạ Tẻh', 36),
(791, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đam Rông', 36),
(792, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Lạng Sơn', 37),
(793, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tràng Định', 37),
(794, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bình Gia', 37),
(795, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Văn Lãng', 37),
(796, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cao Lộc', 37),
(797, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Văn Quan', 37),
(798, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bắc Sơn', 37),
(799, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hữu Lũng', 37),
(800, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chi Lăng', 37),
(801, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lộc Bình', 37),
(802, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đình Lập', 37),
(803, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Lào Cai', 38),
(804, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bát Xát', 38),
(805, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mường Khương', 38),
(806, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Si Ma Cai', 38),
(807, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bắc Hà', 38),
(808, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bảo Thắng', 38),
(809, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bảo Yên', 38),
(810, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Sa Pa', 38),
(811, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Văn Bàn', 38),
(812, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Tân An', 39),
(813, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Kiến Tường', 39),
(814, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Hưng', 39),
(815, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vĩnh Hưng', 39),
(816, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mộc Hoá', 39),
(817, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Thạnh', 39),
(818, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thạnh Hoá', 39),
(819, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đức Huệ', 39),
(820, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đức Hoà', 39),
(821, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bến Lức', 39),
(822, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thủ Thừa', 39),
(823, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Trụ', 39),
(824, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cần Đước', 39),
(825, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cần Giuộc', 39),
(826, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành', 39),
(827, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Nam Định', 40),
(828, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mỹ Lộc', 40),
(829, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vụ Bản', 40),
(830, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ý Yên', 40),
(831, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nghĩa Hưng', 40),
(832, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nam Trực', 40),
(833, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trực Ninh', 40),
(834, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Xuân Trường', 40),
(835, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Giao Thủy', 40),
(836, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hải Hậu', 40),
(837, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Vinh', 41),
(838, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Cửa Lò', 41),
(839, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Thái Hoà', 41),
(840, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quế Phong', 41),
(841, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quỳ Châu', 41),
(842, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kỳ Sơn', 41),
(843, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tương Dương', 41),
(844, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nghĩa Đàn', 41),
(845, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quỳ Hợp', 41),
(846, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quỳnh Lưu', 41),
(847, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Con Cuông', 41),
(848, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Kỳ', 41),
(849, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Anh Sơn', 41),
(850, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Diễn Châu', 41),
(851, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Thành', 41),
(852, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đô Lương', 41),
(853, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Chương', 41),
(854, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nghi Lộc', 41),
(855, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nam Đàn', 41),
(856, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hưng Nguyên', 41),
(857, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Hoàng Mai', 41),
(858, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Ninh Bình', 42),
(859, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Tam Điệp', 42),
(860, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nho Quan', 42),
(861, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Gia Viễn', 42),
(862, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hoa Lư', 42),
(863, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Khánh', 42),
(864, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kim Sơn', 42),
(865, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Mô', 42),
(866, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Phan Rang-Tháp Chàm', 43),
(867, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bác Ái', 43),
(868, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ninh Sơn', 43),
(869, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ninh Hải', 43),
(870, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ninh Phước', 43),
(871, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thuận Bắc', 43),
(872, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thuận Nam', 43),
(873, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Việt Trì', 44),
(874, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Phú Thọ', 44),
(875, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đoan Hùng', 44),
(876, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hạ Hoà', 44),
(877, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Ba', 44),
(878, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phù Ninh', 44),
(879, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Lập', 44),
(880, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cẩm Khê', 44),
(881, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tam Nông', 44),
(882, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lâm Thao', 44),
(883, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Sơn', 44),
(884, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thanh Thuỷ', 44),
(885, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Sơn', 44),
(886, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Tuy Hoà', 45),
(887, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Sông Cầu', 45),
(888, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đồng Xuân', 45),
(889, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tuy An', 45),
(890, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Sơn Hoà', 45),
(891, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Sông Hinh', 45),
(892, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tây Hoà', 45),
(893, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Hoà', 45),
(894, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Đông Hòa', 45),
(895, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Đồng Hới', 46),
(896, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Ba Đồn', 46),
(897, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Minh Hóa', 46),
(898, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tuyên Hóa', 46),
(899, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quảng Trạch', 46),
(900, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bố Trạch', 46),
(901, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quảng Ninh', 46),
(902, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lệ Thủy', 46),
(903, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Tam Kỳ', 47),
(904, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hội An', 47),
(905, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Núi Thành', 47),
(906, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Ninh', 47),
(907, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thăng Bình', 47),
(908, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tiên Phước', 47),
(909, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bắc Trà My', 47),
(910, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nam Trà My', 47),
(911, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đông Giang', 47),
(912, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tây Giang', 47),
(913, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đại Lộc', 47),
(914, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Điện Bàn', 47),
(915, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Duy Xuyên', 47),
(916, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quế Sơn', 47),
(917, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nông Sơn', 47),
(918, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phước Sơn', 47),
(919, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hiệp Đức', 47),
(920, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nam Giang', 47),
(921, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Quảng Ngãi', 48),
(922, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bình Sơn', 48),
(923, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trà Bồng', 48),
(924, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tây Trà', 48),
(925, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Sơn Tịnh', 48),
(926, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tư Nghĩa', 48),
(927, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Sơn Hà', 48),
(928, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Sơn Tây', 48),
(929, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Minh Long', 48),
(930, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nghĩa Hành', 48),
(931, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mộ Đức', 48),
(932, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Đức Phổ', 48),
(933, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ba Tơ', 48),
(934, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lý Sơn', 48),
(935, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hạ Long', 49),
(936, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Móng Cái', 49),
(937, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Cẩm Phả', 49),
(938, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Uông Bí', 49),
(939, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bình Liêu', 49),
(940, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tiên Yên', 49),
(941, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đầm Hà', 49),
(942, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hải Hà', 49),
(943, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ba Chẽ', 49),
(944, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vân Đồn', 49),
(945, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hoành Bồ', 49),
(946, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Đông Triều', 49),
(947, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Quảng Yên', 49),
(948, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cô Tô', 49),
(949, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Đông Hà', 50),
(950, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Quảng Trị', 50),
(951, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vĩnh Linh', 50),
(952, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hướng Hoá', 50),
(953, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Gio Linh', 50),
(954, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đa Krông', 50),
(955, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cam Lộ', 50),
(956, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Triệu Phong', 50),
(957, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hải Lăng', 50),
(958, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cồn Cỏ', 50),
(959, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Sóc Trăng', 51),
(960, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kế Sách', 51),
(961, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mỹ Tú', 51),
(962, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cù Lao Dung', 51),
(963, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Long Phú', 51),
(964, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mỹ Xuyên', 51),
(965, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Ngã Năm', 51),
(966, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thạnh Trị', 51),
(967, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Vĩnh Châu', 51),
(968, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành', 51),
(969, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trần Đề', 51),
(970, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Sơn La', 52),
(971, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quỳnh Nhai', 52),
(972, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thuận Châu', 52),
(973, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mường La', 52),
(974, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bắc Yên', 52),
(975, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phù Yên', 52),
(976, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mộc Châu', 52),
(977, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Châu', 52),
(978, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mai Sơn', 52),
(979, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Sông Mã', 52),
(980, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Sốp Cộp', 52),
(981, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vân Hồ', 52),
(982, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Tây Ninh', 53),
(983, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Biên', 53),
(984, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Châu', 53),
(985, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Dương Minh Châu', 53),
(986, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành', 53),
(987, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Hòa Thành', 53),
(988, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bến Cầu', 53),
(989, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Trảng Bàng', 53),
(990, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Gò Dầu', 53),
(991, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Thái Bình', 54),
(992, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quỳnh Phụ', 54),
(993, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hưng Hà', 54),
(994, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đông Hưng', 54),
(995, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thái Thụy', 54),
(996, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tiền Hải', 54),
(997, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kiến Xương', 54),
(998, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vũ Thư', 54),
(999, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Thái Nguyên', 55),
(1000, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Sông Công', 55),
(1001, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Định Hóa', 55),
(1002, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Lương', 55),
(1003, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đồng Hỷ', 55),
(1004, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Võ Nhai', 55),
(1005, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đại Từ', 55),
(1006, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Phổ Yên', 55),
(1007, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Bình', 55),
(1008, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Thanh Hóa', 56),
(1009, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Bỉm Sơn', 56),
(1010, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Sầm Sơn', 56),
(1011, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mường Lát', 56),
(1012, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quan Hóa', 56),
(1013, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bá Thước', 56),
(1014, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quan Sơn', 56),
(1015, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lang Chánh', 56),
(1016, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ngọc Lặc', 56),
(1017, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cẩm Thủy', 56),
(1018, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thạch Thành', 56),
(1019, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hà Trung', 56),
(1020, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vĩnh Lộc', 56),
(1021, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Định', 56),
(1022, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thọ Xuân', 56),
(1023, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thường Xuân', 56),
(1024, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Triệu Sơn', 56),
(1025, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thiệu Hóa', 56),
(1026, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hoằng Hóa', 56),
(1027, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hậu Lộc', 56),
(1028, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nga Sơn', 56),
(1029, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Như Xuân', 56),
(1030, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Như Thanh', 56),
(1031, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nông Cống', 56),
(1032, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đông Sơn', 56),
(1033, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quảng Xương', 56),
(1034, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Nghi Sơn', 56),
(1035, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Huế', 64),
(1036, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phong Điền', 64),
(1037, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quảng Điền', 64),
(1038, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Vang', 64),
(1039, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Hương Thủy', 64),
(1040, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Hương Trà', 64),
(1041, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện A Lưới', 64),
(1042, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Lộc', 64),
(1043, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nam Đông', 64),
(1044, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Mỹ Tho', 58),
(1045, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Gò Công', 58),
(1046, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Cai Lậy', 58),
(1047, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Phước', 58),
(1048, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cái Bè', 58),
(1049, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cai Lậy', 58),
(1050, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành', 58),
(1051, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chợ Gạo', 58),
(1052, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Gò Công Tây', 58),
(1053, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Gò Công Đông', 58),
(1054, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Phú Đông', 58),
(1055, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Trà Vinh', 59),
(1056, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Càng Long', 59),
(1057, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cầu Kè', 59),
(1058, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tiểu Cần', 59),
(1059, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Thành', 59),
(1060, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cầu Ngang', 59),
(1061, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trà Cú', 59),
(1062, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Duyên Hải', 59),
(1063, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Duyên Hải', 59),
(1064, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Tuyên Quang', 60),
(1065, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lâm Bình', 60),
(1066, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Na Hang', 60),
(1067, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chiêm Hóa', 60),
(1068, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hàm Yên', 60),
(1069, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Sơn', 60),
(1070, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Sơn Dương', 60),
(1071, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Vĩnh Long', 61),
(1072, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Bình Minh', 61),
(1073, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Long Hồ', 61),
(1074, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mang Thít', 61),
(1075, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vũng Liêm', 61),
(1076, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tam Bình', 61),
(1077, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Bình Tân', 61),
(1078, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trà Ôn', 61),
(1079, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Vĩnh Yên', 62),
(1080, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Phúc Yên', 62),
(1081, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lập Thạch', 62),
(1082, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tam Dương', 62),
(1083, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tam Đảo', 62),
(1084, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bình Xuyên', 62),
(1085, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Lạc', 62),
(1086, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vĩnh Tường', 62),
(1087, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Sông Lô', 62),
(1088, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Yên Bái', 63),
(1089, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Nghĩa Lộ', 63),
(1090, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lục Yên', 63),
(1091, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Văn Yên', 63),
(1092, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mù Căng Chải', 63),
(1093, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trạm Tấu', 63),
(1094, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Trấn Yên', 63),
(1095, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Văn Chấn', 63),
(1096, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Bình', 63),
(1097, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận 1', 65),
(1098, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận 12', 65),
(1099, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Gò Vấp', 65),
(1100, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Bình Thạnh', 65);
INSERT INTO `travelnestapp_huyen` (`id`, `created_date`, `updated_date`, `active`, `tenhuyen`, `tinh_id`) VALUES
(1101, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Tân Bình', 65),
(1102, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Tân Phú', 65),
(1103, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Phú Nhuận', 65),
(1104, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Thủ Đức', 65),
(1105, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận 3', 65),
(1106, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận 10', 65),
(1107, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận 11', 65),
(1108, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận 4', 65),
(1109, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận 5', 65),
(1110, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận 6', 65),
(1111, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận 8', 65),
(1112, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Bình Tân', 65),
(1113, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận 7', 65),
(1114, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Củ Chi', 65),
(1115, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hóc Môn', 65),
(1116, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bình Chánh', 65),
(1117, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Nhà Bè', 65),
(1118, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cần Giờ', 65),
(1119, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Hồng Bàng', 27),
(1120, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Ngô Quyền', 27),
(1121, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Lê Chân', 27),
(1122, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Hải An', 27),
(1123, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Kiến An', 27),
(1124, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Đồ Sơn', 27),
(1125, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Dương Kinh', 27),
(1126, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thuỷ Nguyên', 27),
(1127, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện An Dương', 27),
(1128, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện An Lão', 27),
(1129, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Kiến Thuỵ', 27),
(1130, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tiên Lãng', 27),
(1131, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vĩnh Bảo', 27),
(1132, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cát Hải', 27),
(1133, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bạch Long Vĩ', 27),
(1134, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Liên Chiểu', 15),
(1135, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Thanh Khê', 15),
(1136, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Hải Châu', 15),
(1137, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Sơn Trà', 15),
(1138, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Ngũ Hành Sơn', 15),
(1139, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Cẩm Lệ', 15),
(1140, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hòa Vang', 15),
(1141, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hoàng Sa', 15),
(1142, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Ninh Kiều', 14),
(1143, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Ô Môn', 14),
(1144, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Bình Thuỷ', 14),
(1145, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Cái Răng', 14),
(1146, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Quận Thốt Nốt', 14),
(1147, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Cờ Đỏ', 14),
(1148, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thới Lai', 14),
(1149, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Long Xuyên', 1),
(1150, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Châu Đốc', 1),
(1151, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện An Phú', 1),
(1152, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Tân Châu', 1),
(1153, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Tân', 1),
(1154, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Phú', 1),
(1155, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tịnh Biên', 1),
(1156, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tri Tôn', 1),
(1157, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thoại Sơn', 1),
(1158, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Vũng Tàu', 66),
(1159, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Bà Rịa', 66),
(1160, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Châu Đức', 66),
(1161, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Xuyên Mộc', 66),
(1162, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Long Điền', 66),
(1163, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đất Đỏ', 66),
(1164, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Phú Mỹ', 66),
(1165, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Côn Đảo', 66),
(1166, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Bạc Liêu', 3),
(1167, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hồng Dân', 3),
(1168, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phước Long', 3),
(1169, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vĩnh Lợi', 3),
(1170, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Giá Rai', 3),
(1171, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Đông Hải', 3),
(1172, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hoà Bình', 3),
(1173, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Bắc Giang', 5),
(1174, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Thế', 5),
(1175, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tân Yên', 5),
(1176, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lạng Giang', 5),
(1177, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lục Nam', 5),
(1178, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lục Ngạn', 5),
(1179, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Sơn Động', 5),
(1180, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Dũng', 5),
(1181, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Việt Yên', 5),
(1182, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hiệp Hòa', 5),
(1183, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành Phố Bắc Kạn', 4),
(1184, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Pác Nặm', 4),
(1185, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ba Bể', 4),
(1186, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ngân Sơn', 4),
(1187, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bạch Thông', 4),
(1188, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chợ Đồn', 4),
(1189, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chợ Mới', 4),
(1190, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Na Rì', 4),
(1191, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Bắc Ninh', 6),
(1192, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Yên Phong', 6),
(1193, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Quế Võ', 6),
(1194, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tiên Du', 6),
(1195, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Từ Sơn', 6),
(1196, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thuận Thành', 6),
(1197, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Gia Bình', 6),
(1198, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Lương Tài', 6),
(1199, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Bến Tre', 7),
(1200, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Chợ Lách', 7),
(1201, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mỏ Cày Nam', 7),
(1202, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Giồng Trôm', 7),
(1203, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bình Đại', 7),
(1204, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Ba Tri', 7),
(1205, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Thạnh Phú', 7),
(1206, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Mỏ Cày Bắc', 7),
(1207, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Thủ Dầu Một', 8),
(1208, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bàu Bàng', 8),
(1209, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Dầu Tiếng', 8),
(1210, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Bến Cát', 8),
(1211, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phú Giáo', 8),
(1212, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Tân Uyên', 8),
(1213, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Dĩ An', 8),
(1214, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Thuận An', 8),
(1215, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Bắc Tân Uyên', 8),
(1216, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Quy Nhơn', 9),
(1217, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã Hoài Nhơn', 9),
(1218, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Hoài Ân', 9),
(1219, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phù Mỹ', 9),
(1220, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vĩnh Thạnh', 9),
(1221, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tây Sơn', 9),
(1222, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Phù Cát', 9),
(1223, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thị xã An Nhơn', 9),
(1224, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Tuy Phước', 9),
(1225, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Huyện Vân Canh', 9);

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_khachsan`
--

CREATE TABLE `travelnestapp_khachsan` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `tenkhachsan` varchar(200) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL,
  `diachi` varchar(200) DEFAULT NULL,
  `sdt` varchar(11) DEFAULT NULL,
  `mota` varchar(200) DEFAULT NULL,
  `email_ks` varchar(200) DEFAULT NULL,
  `tinh_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travelnestapp_khachsan`
--

INSERT INTO `travelnestapp_khachsan` (`id`, `created_date`, `updated_date`, `active`, `tenkhachsan`, `featured`, `diachi`, `sdt`, `mota`, `email_ks`, `tinh_id`) VALUES
(1, '2024-05-18 15:25:30.129590', '2024-05-18 15:25:30.129590', 1, 'Merry Land LANDMARK 81', 1, '720A Đường Điện Biên Phủ, Quận Bình Thạnh, TP. Hồ Chí Minh, Việt Nam', '02846547777', 'Căn hộ có sân hiên nơi khách có thể nhìn ra thành phố, khu vực ghế ngồi, TV màn hình phẳng truyền hình cáp, bếp đầy đủ tiện nghi gồm tủ lạnh và lò vi sóng, cùng phòng tắm riêng được trang bị vòi xịt/c', 'abc@gmail.com', 65);

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_khachsan_dichvu`
--

CREATE TABLE `travelnestapp_khachsan_dichvu` (
  `id` bigint(20) NOT NULL,
  `khachsan_id` bigint(20) NOT NULL,
  `dichvu_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travelnestapp_khachsan_dichvu`
--

INSERT INTO `travelnestapp_khachsan_dichvu` (`id`, `khachsan_id`, `dichvu_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_khuyenmai`
--

CREATE TABLE `travelnestapp_khuyenmai` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `tenkhuyenmai` varchar(200) DEFAULT NULL,
  `thoigian_bd` datetime(6) NOT NULL,
  `thoigian_kt` datetime(6) NOT NULL,
  `giatri_km` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_khuyenmai_phong`
--

CREATE TABLE `travelnestapp_khuyenmai_phong` (
  `id` bigint(20) NOT NULL,
  `khuyenmai_id` bigint(20) NOT NULL,
  `phong_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_loaitiennghi`
--

CREATE TABLE `travelnestapp_loaitiennghi` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `tenloai` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_phong`
--

CREATE TABLE `travelnestapp_phong` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `tenphong` varchar(200) DEFAULT NULL,
  `dientich` varchar(200) DEFAULT NULL,
  `phongtam` varchar(200) DEFAULT NULL,
  `soluongnguoi` int(11) NOT NULL,
  `giaphong` double NOT NULL,
  `soluong` int(11) NOT NULL,
  `khachsan_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travelnestapp_phong`
--

INSERT INTO `travelnestapp_phong` (`id`, `created_date`, `updated_date`, `active`, `tenphong`, `dientich`, `phongtam`, `soluongnguoi`, `giaphong`, `soluong`, `khachsan_id`) VALUES
(1, '2024-05-18 15:36:11.806264', '2024-05-18 15:36:11.806264', 1, 'Căn hộ 1 phòng ngủ', '35 m2', '1', 2, 1000000, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_phong_tiennghi`
--

CREATE TABLE `travelnestapp_phong_tiennghi` (
  `id` bigint(20) NOT NULL,
  `phong_id` bigint(20) NOT NULL,
  `tiennghi_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_profile`
--

CREATE TABLE `travelnestapp_profile` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(200) DEFAULT NULL,
  `bio` varchar(200) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travelnestapp_profile`
--

INSERT INTO `travelnestapp_profile` (`id`, `full_name`, `bio`, `avatar`, `verified`, `user_id`) VALUES
(1, NULL, NULL, '', 0, 1),
(2, NULL, NULL, '', 0, 2),
(3, NULL, NULL, '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_tiennghi`
--

CREATE TABLE `travelnestapp_tiennghi` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `tentiennghi` varchar(200) DEFAULT NULL,
  `mota_tiennghi` longtext DEFAULT NULL,
  `loai_tiennghi_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_tinh`
--

CREATE TABLE `travelnestapp_tinh` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `tentinh` varchar(200) DEFAULT NULL,
  `anhtinh` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travelnestapp_tinh`
--

INSERT INTO `travelnestapp_tinh` (`id`, `created_date`, `updated_date`, `active`, `tentinh`, `anhtinh`) VALUES
(1, '0000-00-00 00:00:00.000000', '2024-05-16 10:33:59.188900', 1, 'An Giang', 'images/2024/05/angiang.jpg'),
(2, '0000-00-00 00:00:00.000000', '2024-05-16 10:34:12.388698', 1, 'Bà Rịa - Vũng Tàu', 'images/2024/05/vungtau.jpg'),
(3, '0000-00-00 00:00:00.000000', '2024-05-16 10:34:25.429663', 1, 'Bạc Liêu', 'images/2024/05/baclieu.jpg'),
(4, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Bắc Kạn', NULL),
(5, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Bắc Giang', NULL),
(6, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Bắc Ninh', NULL),
(7, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Bến Tre', NULL),
(8, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Bình Dương', NULL),
(9, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Bình Định', NULL),
(10, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Bình Phước', NULL),
(11, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Bình Thuận', NULL),
(12, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Cà Mau', NULL),
(13, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Cao Bằng', NULL),
(14, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Cần Thơ', NULL),
(15, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Đà Nẵng', NULL),
(16, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Đắk Lắk', NULL),
(17, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Đắk Nông', NULL),
(18, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Điện Biên', NULL),
(19, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Đồng Nai', NULL),
(20, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Đồng Tháp', NULL),
(21, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Gia Lai', NULL),
(22, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Hà Giang', NULL),
(23, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Hà Nam', NULL),
(24, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Hà Nội', NULL),
(25, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Hà Tĩnh', NULL),
(26, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Hải Dương', NULL),
(27, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Hải Phòng', NULL),
(28, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Hậu Giang', NULL),
(29, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Hòa Bình', NULL),
(30, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Hồ Chí Minh', NULL),
(31, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Hưng Yên', NULL),
(32, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Khánh Hòa', NULL),
(33, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Kiên Giang', NULL),
(34, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Kon Tum', NULL),
(35, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Lai Châu', NULL),
(36, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Lâm Đồng', NULL),
(37, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Lạng Sơn', NULL),
(38, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Lào Cai', NULL),
(39, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Long An', NULL),
(40, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Nam Định', NULL),
(41, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Nghệ An', NULL),
(42, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Ninh Bình', NULL),
(43, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Ninh Thuận', NULL),
(44, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Phú Thọ', NULL),
(45, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Phú Yên', NULL),
(46, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Quảng Bình', NULL),
(47, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Quảng Nam', NULL),
(48, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Quảng Ngãi', NULL),
(49, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Quảng Ninh', NULL),
(50, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Quảng Trị', NULL),
(51, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Sóc Trăng', NULL),
(52, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Sơn La', NULL),
(53, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Tây Ninh', NULL),
(54, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Thái Bình', NULL),
(55, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Thái Nguyên', NULL),
(56, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Thanh Hóa', NULL),
(57, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Thừa Thiên Huế', NULL),
(58, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Tiền Giang', NULL),
(59, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Trà Vinh', NULL),
(60, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 1, 'Tuyên Quang', NULL),
(61, '0000-00-00 00:00:00.000000', '2024-05-16 10:30:11.692422', 1, 'Vĩnh Long', 'images/2024/05/vinhlong_fFUG1zf.jpg'),
(62, '0000-00-00 00:00:00.000000', '2024-05-16 10:30:04.483241', 1, 'Vĩnh Phúc', 'images/2024/05/vinhphuc.jpg'),
(63, '0000-00-00 00:00:00.000000', '2024-05-16 10:29:53.593111', 1, 'Yên Bái', 'images/2024/05/yenbai_NYwk9Rz.jpg'),
(64, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thừa Thiên - Huế', NULL),
(65, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Thành phố Hồ Chí Minh', NULL),
(66, '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', 0, 'Bà Rịa – Vũng Tàu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_user`
--

CREATE TABLE `travelnestapp_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travelnestapp_user`
--

INSERT INTO `travelnestapp_user` (`id`, `password`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `username`, `email`, `phone`) VALUES
(1, 'pbkdf2_sha256$720000$eqASxGfgQ0redBSjIUW32J$lMQb/YgcoI0PMI5wPcxxEyjAhdvavrS3Sl535cIPgX8=', '2024-05-18 09:57:39.563289', 1, '', '', 1, 1, '2024-05-16 08:24:18.399855', 'admin', 'phanque.0923@gmail.com', NULL),
(2, 'pbkdf2_sha256$720000$PR7xMmxVBFElDvtXO0hisr$TcArvKCKbdv70peMojDdHCi1eYEuSYonWmlZHyEeZwQ=', NULL, 0, '', '', 0, 1, '2024-05-16 08:29:29.789278', 'weppi', 'phanhanue@gmail.com', NULL),
(3, 'pbkdf2_sha256$720000$c9OUqJoUDX388SXIhJ9Y9T$kkcYF9b/Gd5tzVzqGhxIXrFt/1t+ACgQ6SlOf8lxHWg=', NULL, 0, '', '', 0, 1, '2024-05-16 12:28:43.556995', 'hota', 'pq@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_user_groups`
--

CREATE TABLE `travelnestapp_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_user_user_permissions`
--

CREATE TABLE `travelnestapp_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travelnestapp_xa`
--

CREATE TABLE `travelnestapp_xa` (
  `id` bigint(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `tenXa` varchar(200) DEFAULT NULL,
  `huyen_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_emailaddress_user_id_email_987c8728_uniq` (`user_id`,`email`),
  ADD KEY `account_emailaddress_email_03be32b2` (`email`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_travelnestapp_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_rest_passwordreset_resetpasswordtoken`
--
ALTER TABLE `django_rest_passwordreset_resetpasswordtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_rest_passwordreset_resetpasswordtoken_key_f1b65873_uniq` (`key`),
  ADD KEY `django_rest_password_user_id_e8015b11_fk_travelnes` (`user_id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `oauth2_provider_accesstoken`
--
ALTER TABLE `oauth2_provider_accesstoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `source_refresh_token_id` (`source_refresh_token_id`),
  ADD UNIQUE KEY `id_token_id` (`id_token_id`),
  ADD KEY `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` (`application_id`),
  ADD KEY `oauth2_provider_acce_user_id_6e4c9a65_fk_travelnes` (`user_id`);

--
-- Indexes for table `oauth2_provider_application`
--
ALTER TABLE `oauth2_provider_application`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_id` (`client_id`),
  ADD KEY `oauth2_provider_appl_user_id_79829054_fk_travelnes` (`user_id`),
  ADD KEY `oauth2_provider_application_client_secret_53133678` (`client_secret`);

--
-- Indexes for table `oauth2_provider_grant`
--
ALTER TABLE `oauth2_provider_grant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` (`application_id`),
  ADD KEY `oauth2_provider_grant_user_id_e8f62af8_fk_travelnestapp_user_id` (`user_id`);

--
-- Indexes for table `oauth2_provider_idtoken`
--
ALTER TABLE `oauth2_provider_idtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jti` (`jti`),
  ADD KEY `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` (`application_id`),
  ADD KEY `oauth2_provider_idto_user_id_dd512b59_fk_travelnes` (`user_id`);

--
-- Indexes for table `oauth2_provider_refreshtoken`
--
ALTER TABLE `oauth2_provider_refreshtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `access_token_id` (`access_token_id`),
  ADD UNIQUE KEY `oauth2_provider_refreshtoken_token_revoked_af8a5134_uniq` (`token`,`revoked`),
  ADD KEY `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` (`application_id`),
  ADD KEY `oauth2_provider_refr_user_id_da837fce_fk_travelnes` (`user_id`);

--
-- Indexes for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_social_user_id_8146e70c_fk_travelnes` (`user_id`);

--
-- Indexes for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- Indexes for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- Indexes for table `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_id` (`token_id`);

--
-- Indexes for table `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  ADD KEY `token_blacklist_outs_user_id_83bc629a_fk_travelnes` (`user_id`);

--
-- Indexes for table `travelnestapp_anhkhachsan`
--
ALTER TABLE `travelnestapp_anhkhachsan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travelnestapp_anhkha_khachsan_id_f79f2d9d_fk_travelnes` (`khachsan_id`);

--
-- Indexes for table `travelnestapp_anhphong`
--
ALTER TABLE `travelnestapp_anhphong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travelnestapp_anhpho_phong_id_a5a73cd8_fk_travelnes` (`phong_id`);

--
-- Indexes for table `travelnestapp_chitiethoadon`
--
ALTER TABLE `travelnestapp_chitiethoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travelnestapp_chitie_hoadon_id_58ed5e8b_fk_travelnes` (`hoadon_id`),
  ADD KEY `travelnestapp_chitie_phong_id_aa432a48_fk_travelnes` (`phong_id`);

--
-- Indexes for table `travelnestapp_danhgia`
--
ALTER TABLE `travelnestapp_danhgia`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hoadon_id` (`hoadon_id`);

--
-- Indexes for table `travelnestapp_dichvu`
--
ALTER TABLE `travelnestapp_dichvu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travelnestapp_hoadon`
--
ALTER TABLE `travelnestapp_hoadon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travelnestapp_hoadon_user_id_8125226a_fk_travelnestapp_user_id` (`user_id`);

--
-- Indexes for table `travelnestapp_huyen`
--
ALTER TABLE `travelnestapp_huyen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travelnestapp_huyen_tinh_id_ed40a2f6_fk_travelnestapp_tinh_id` (`tinh_id`);

--
-- Indexes for table `travelnestapp_khachsan`
--
ALTER TABLE `travelnestapp_khachsan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travelnestapp_khachsan_tinh_id_ab52678e_fk_travelnestapp_tinh_id` (`tinh_id`);

--
-- Indexes for table `travelnestapp_khachsan_dichvu`
--
ALTER TABLE `travelnestapp_khachsan_dichvu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `travelnestapp_khachsan_d_khachsan_id_dichvu_id_deb76289_uniq` (`khachsan_id`,`dichvu_id`),
  ADD KEY `travelnestapp_khachs_dichvu_id_7c47fa53_fk_travelnes` (`dichvu_id`);

--
-- Indexes for table `travelnestapp_khuyenmai`
--
ALTER TABLE `travelnestapp_khuyenmai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travelnestapp_khuyenmai_phong`
--
ALTER TABLE `travelnestapp_khuyenmai_phong`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `travelnestapp_khuyenmai__khuyenmai_id_phong_id_5585299c_uniq` (`khuyenmai_id`,`phong_id`),
  ADD KEY `travelnestapp_khuyen_phong_id_bed30ab4_fk_travelnes` (`phong_id`);

--
-- Indexes for table `travelnestapp_loaitiennghi`
--
ALTER TABLE `travelnestapp_loaitiennghi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travelnestapp_phong`
--
ALTER TABLE `travelnestapp_phong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travelnestapp_phong_khachsan_id_cca9a67e_fk_travelnes` (`khachsan_id`);

--
-- Indexes for table `travelnestapp_phong_tiennghi`
--
ALTER TABLE `travelnestapp_phong_tiennghi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `travelnestapp_phong_tiennghi_phong_id_tiennghi_id_e90091be_uniq` (`phong_id`,`tiennghi_id`),
  ADD KEY `travelnestapp_phong__tiennghi_id_34e4b403_fk_travelnes` (`tiennghi_id`);

--
-- Indexes for table `travelnestapp_profile`
--
ALTER TABLE `travelnestapp_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `travelnestapp_tiennghi`
--
ALTER TABLE `travelnestapp_tiennghi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travelnestapp_tienng_loai_tiennghi_id_aa3dae07_fk_travelnes` (`loai_tiennghi_id`);

--
-- Indexes for table `travelnestapp_tinh`
--
ALTER TABLE `travelnestapp_tinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travelnestapp_user`
--
ALTER TABLE `travelnestapp_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `travelnestapp_user_groups`
--
ALTER TABLE `travelnestapp_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `travelnestapp_user_groups_user_id_group_id_d0879023_uniq` (`user_id`,`group_id`),
  ADD KEY `travelnestapp_user_groups_group_id_851e3271_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `travelnestapp_user_user_permissions`
--
ALTER TABLE `travelnestapp_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `travelnestapp_user_user__user_id_permission_id_db96226a_uniq` (`user_id`,`permission_id`),
  ADD KEY `travelnestapp_user_u_permission_id_3a8f0288_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `travelnestapp_xa`
--
ALTER TABLE `travelnestapp_xa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travelnestapp_xa_huyen_id_274e5669_fk_travelnestapp_huyen_id` (`huyen_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `django_rest_passwordreset_resetpasswordtoken`
--
ALTER TABLE `django_rest_passwordreset_resetpasswordtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth2_provider_accesstoken`
--
ALTER TABLE `oauth2_provider_accesstoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth2_provider_application`
--
ALTER TABLE `oauth2_provider_application`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth2_provider_grant`
--
ALTER TABLE `oauth2_provider_grant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth2_provider_idtoken`
--
ALTER TABLE `oauth2_provider_idtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth2_provider_refreshtoken`
--
ALTER TABLE `oauth2_provider_refreshtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `travelnestapp_anhkhachsan`
--
ALTER TABLE `travelnestapp_anhkhachsan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travelnestapp_anhphong`
--
ALTER TABLE `travelnestapp_anhphong`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travelnestapp_chitiethoadon`
--
ALTER TABLE `travelnestapp_chitiethoadon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `travelnestapp_danhgia`
--
ALTER TABLE `travelnestapp_danhgia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travelnestapp_dichvu`
--
ALTER TABLE `travelnestapp_dichvu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `travelnestapp_hoadon`
--
ALTER TABLE `travelnestapp_hoadon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `travelnestapp_huyen`
--
ALTER TABLE `travelnestapp_huyen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1226;

--
-- AUTO_INCREMENT for table `travelnestapp_khachsan`
--
ALTER TABLE `travelnestapp_khachsan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `travelnestapp_khachsan_dichvu`
--
ALTER TABLE `travelnestapp_khachsan_dichvu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `travelnestapp_khuyenmai`
--
ALTER TABLE `travelnestapp_khuyenmai`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travelnestapp_khuyenmai_phong`
--
ALTER TABLE `travelnestapp_khuyenmai_phong`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travelnestapp_loaitiennghi`
--
ALTER TABLE `travelnestapp_loaitiennghi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travelnestapp_phong`
--
ALTER TABLE `travelnestapp_phong`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `travelnestapp_phong_tiennghi`
--
ALTER TABLE `travelnestapp_phong_tiennghi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travelnestapp_profile`
--
ALTER TABLE `travelnestapp_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `travelnestapp_tiennghi`
--
ALTER TABLE `travelnestapp_tiennghi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travelnestapp_tinh`
--
ALTER TABLE `travelnestapp_tinh`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `travelnestapp_user`
--
ALTER TABLE `travelnestapp_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `travelnestapp_user_groups`
--
ALTER TABLE `travelnestapp_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travelnestapp_user_user_permissions`
--
ALTER TABLE `travelnestapp_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travelnestapp_xa`
--
ALTER TABLE `travelnestapp_xa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_travelnestapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `travelnestapp_user` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_travelnestapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `travelnestapp_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_travelnestapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `travelnestapp_user` (`id`);

--
-- Constraints for table `django_rest_passwordreset_resetpasswordtoken`
--
ALTER TABLE `django_rest_passwordreset_resetpasswordtoken`
  ADD CONSTRAINT `django_rest_password_user_id_e8015b11_fk_travelnes` FOREIGN KEY (`user_id`) REFERENCES `travelnestapp_user` (`id`);

--
-- Constraints for table `oauth2_provider_accesstoken`
--
ALTER TABLE `oauth2_provider_accesstoken`
  ADD CONSTRAINT `oauth2_provider_acce_application_id_b22886e1_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  ADD CONSTRAINT `oauth2_provider_acce_id_token_id_85db651b_fk_oauth2_pr` FOREIGN KEY (`id_token_id`) REFERENCES `oauth2_provider_idtoken` (`id`),
  ADD CONSTRAINT `oauth2_provider_acce_source_refresh_token_e66fbc72_fk_oauth2_pr` FOREIGN KEY (`source_refresh_token_id`) REFERENCES `oauth2_provider_refreshtoken` (`id`),
  ADD CONSTRAINT `oauth2_provider_acce_user_id_6e4c9a65_fk_travelnes` FOREIGN KEY (`user_id`) REFERENCES `travelnestapp_user` (`id`);

--
-- Constraints for table `oauth2_provider_application`
--
ALTER TABLE `oauth2_provider_application`
  ADD CONSTRAINT `oauth2_provider_appl_user_id_79829054_fk_travelnes` FOREIGN KEY (`user_id`) REFERENCES `travelnestapp_user` (`id`);

--
-- Constraints for table `oauth2_provider_grant`
--
ALTER TABLE `oauth2_provider_grant`
  ADD CONSTRAINT `oauth2_provider_gran_application_id_81923564_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  ADD CONSTRAINT `oauth2_provider_grant_user_id_e8f62af8_fk_travelnestapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `travelnestapp_user` (`id`);

--
-- Constraints for table `oauth2_provider_idtoken`
--
ALTER TABLE `oauth2_provider_idtoken`
  ADD CONSTRAINT `oauth2_provider_idto_application_id_08c5ff4f_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  ADD CONSTRAINT `oauth2_provider_idto_user_id_dd512b59_fk_travelnes` FOREIGN KEY (`user_id`) REFERENCES `travelnestapp_user` (`id`);

--
-- Constraints for table `oauth2_provider_refreshtoken`
--
ALTER TABLE `oauth2_provider_refreshtoken`
  ADD CONSTRAINT `oauth2_provider_refr_access_token_id_775e84e8_fk_oauth2_pr` FOREIGN KEY (`access_token_id`) REFERENCES `oauth2_provider_accesstoken` (`id`),
  ADD CONSTRAINT `oauth2_provider_refr_application_id_2d1c311b_fk_oauth2_pr` FOREIGN KEY (`application_id`) REFERENCES `oauth2_provider_application` (`id`),
  ADD CONSTRAINT `oauth2_provider_refr_user_id_da837fce_fk_travelnes` FOREIGN KEY (`user_id`) REFERENCES `travelnestapp_user` (`id`);

--
-- Constraints for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_social_user_id_8146e70c_fk_travelnes` FOREIGN KEY (`user_id`) REFERENCES `travelnestapp_user` (`id`);

--
-- Constraints for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);

--
-- Constraints for table `token_blacklist_blacklistedtoken`
--
ALTER TABLE `token_blacklist_blacklistedtoken`
  ADD CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`);

--
-- Constraints for table `token_blacklist_outstandingtoken`
--
ALTER TABLE `token_blacklist_outstandingtoken`
  ADD CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_travelnes` FOREIGN KEY (`user_id`) REFERENCES `travelnestapp_user` (`id`);

--
-- Constraints for table `travelnestapp_anhkhachsan`
--
ALTER TABLE `travelnestapp_anhkhachsan`
  ADD CONSTRAINT `travelnestapp_anhkha_khachsan_id_f79f2d9d_fk_travelnes` FOREIGN KEY (`khachsan_id`) REFERENCES `travelnestapp_khachsan` (`id`);

--
-- Constraints for table `travelnestapp_anhphong`
--
ALTER TABLE `travelnestapp_anhphong`
  ADD CONSTRAINT `travelnestapp_anhpho_phong_id_a5a73cd8_fk_travelnes` FOREIGN KEY (`phong_id`) REFERENCES `travelnestapp_phong` (`id`);

--
-- Constraints for table `travelnestapp_chitiethoadon`
--
ALTER TABLE `travelnestapp_chitiethoadon`
  ADD CONSTRAINT `travelnestapp_chitie_hoadon_id_58ed5e8b_fk_travelnes` FOREIGN KEY (`hoadon_id`) REFERENCES `travelnestapp_hoadon` (`id`),
  ADD CONSTRAINT `travelnestapp_chitie_phong_id_aa432a48_fk_travelnes` FOREIGN KEY (`phong_id`) REFERENCES `travelnestapp_phong` (`id`);

--
-- Constraints for table `travelnestapp_danhgia`
--
ALTER TABLE `travelnestapp_danhgia`
  ADD CONSTRAINT `travelnestapp_danhgi_hoadon_id_aedf363a_fk_travelnes` FOREIGN KEY (`hoadon_id`) REFERENCES `travelnestapp_hoadon` (`id`);

--
-- Constraints for table `travelnestapp_hoadon`
--
ALTER TABLE `travelnestapp_hoadon`
  ADD CONSTRAINT `travelnestapp_hoadon_user_id_8125226a_fk_travelnestapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `travelnestapp_user` (`id`);

--
-- Constraints for table `travelnestapp_huyen`
--
ALTER TABLE `travelnestapp_huyen`
  ADD CONSTRAINT `travelnestapp_huyen_tinh_id_ed40a2f6_fk_travelnestapp_tinh_id` FOREIGN KEY (`tinh_id`) REFERENCES `travelnestapp_tinh` (`id`);

--
-- Constraints for table `travelnestapp_khachsan`
--
ALTER TABLE `travelnestapp_khachsan`
  ADD CONSTRAINT `travelnestapp_khachsan_tinh_id_ab52678e_fk_travelnestapp_tinh_id` FOREIGN KEY (`tinh_id`) REFERENCES `travelnestapp_tinh` (`id`);

--
-- Constraints for table `travelnestapp_khachsan_dichvu`
--
ALTER TABLE `travelnestapp_khachsan_dichvu`
  ADD CONSTRAINT `travelnestapp_khachs_dichvu_id_7c47fa53_fk_travelnes` FOREIGN KEY (`dichvu_id`) REFERENCES `travelnestapp_dichvu` (`id`),
  ADD CONSTRAINT `travelnestapp_khachs_khachsan_id_8e339f23_fk_travelnes` FOREIGN KEY (`khachsan_id`) REFERENCES `travelnestapp_khachsan` (`id`);

--
-- Constraints for table `travelnestapp_khuyenmai_phong`
--
ALTER TABLE `travelnestapp_khuyenmai_phong`
  ADD CONSTRAINT `travelnestapp_khuyen_khuyenmai_id_6259fa29_fk_travelnes` FOREIGN KEY (`khuyenmai_id`) REFERENCES `travelnestapp_khuyenmai` (`id`),
  ADD CONSTRAINT `travelnestapp_khuyen_phong_id_bed30ab4_fk_travelnes` FOREIGN KEY (`phong_id`) REFERENCES `travelnestapp_phong` (`id`);

--
-- Constraints for table `travelnestapp_phong`
--
ALTER TABLE `travelnestapp_phong`
  ADD CONSTRAINT `travelnestapp_phong_khachsan_id_cca9a67e_fk_travelnes` FOREIGN KEY (`khachsan_id`) REFERENCES `travelnestapp_khachsan` (`id`);

--
-- Constraints for table `travelnestapp_phong_tiennghi`
--
ALTER TABLE `travelnestapp_phong_tiennghi`
  ADD CONSTRAINT `travelnestapp_phong__phong_id_a5d3502d_fk_travelnes` FOREIGN KEY (`phong_id`) REFERENCES `travelnestapp_phong` (`id`),
  ADD CONSTRAINT `travelnestapp_phong__tiennghi_id_34e4b403_fk_travelnes` FOREIGN KEY (`tiennghi_id`) REFERENCES `travelnestapp_tiennghi` (`id`);

--
-- Constraints for table `travelnestapp_profile`
--
ALTER TABLE `travelnestapp_profile`
  ADD CONSTRAINT `travelnestapp_profile_user_id_3f9a654e_fk_travelnestapp_user_id` FOREIGN KEY (`user_id`) REFERENCES `travelnestapp_user` (`id`);

--
-- Constraints for table `travelnestapp_tiennghi`
--
ALTER TABLE `travelnestapp_tiennghi`
  ADD CONSTRAINT `travelnestapp_tienng_loai_tiennghi_id_aa3dae07_fk_travelnes` FOREIGN KEY (`loai_tiennghi_id`) REFERENCES `travelnestapp_loaitiennghi` (`id`);

--
-- Constraints for table `travelnestapp_user_groups`
--
ALTER TABLE `travelnestapp_user_groups`
  ADD CONSTRAINT `travelnestapp_user_g_user_id_d3b38f31_fk_travelnes` FOREIGN KEY (`user_id`) REFERENCES `travelnestapp_user` (`id`),
  ADD CONSTRAINT `travelnestapp_user_groups_group_id_851e3271_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `travelnestapp_user_user_permissions`
--
ALTER TABLE `travelnestapp_user_user_permissions`
  ADD CONSTRAINT `travelnestapp_user_u_permission_id_3a8f0288_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `travelnestapp_user_u_user_id_0f0b3582_fk_travelnes` FOREIGN KEY (`user_id`) REFERENCES `travelnestapp_user` (`id`);

--
-- Constraints for table `travelnestapp_xa`
--
ALTER TABLE `travelnestapp_xa`
  ADD CONSTRAINT `travelnestapp_xa_huyen_id_274e5669_fk_travelnestapp_huyen_id` FOREIGN KEY (`huyen_id`) REFERENCES `travelnestapp_huyen` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
