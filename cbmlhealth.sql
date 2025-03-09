-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 11, 2022 at 12:25 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cbmlhealth`
--
CREATE DATABASE IF NOT EXISTS `cbmlhealth` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cbmlhealth`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add patientregistrationmodel', 7, 'add_patientregistrationmodel'),
(26, 'Can change patientregistrationmodel', 7, 'change_patientregistrationmodel'),
(27, 'Can delete patientregistrationmodel', 7, 'delete_patientregistrationmodel'),
(28, 'Can view patientregistrationmodel', 7, 'view_patientregistrationmodel'),
(29, 'Can add docotrtregistrationmodel', 8, 'add_docotrtregistrationmodel'),
(30, 'Can change docotrtregistrationmodel', 8, 'change_docotrtregistrationmodel'),
(31, 'Can delete docotrtregistrationmodel', 8, 'delete_docotrtregistrationmodel'),
(32, 'Can view docotrtregistrationmodel', 8, 'view_docotrtregistrationmodel'),
(33, 'Can add patientsymptomsanalysis', 9, 'add_patientsymptomsanalysis'),
(34, 'Can change patientsymptomsanalysis', 9, 'change_patientsymptomsanalysis'),
(35, 'Can delete patientsymptomsanalysis', 9, 'delete_patientsymptomsanalysis'),
(36, 'Can view patientsymptomsanalysis', 9, 'view_patientsymptomsanalysis'),
(37, 'Can add blkchainapproach', 10, 'add_blkchainapproach'),
(38, 'Can change blkchainapproach', 10, 'change_blkchainapproach'),
(39, 'Can delete blkchainapproach', 10, 'delete_blkchainapproach'),
(40, 'Can view blkchainapproach', 10, 'view_blkchainapproach'),
(41, 'Can add transactionsstore', 11, 'add_transactionsstore'),
(42, 'Can change transactionsstore', 11, 'change_transactionsstore'),
(43, 'Can delete transactionsstore', 11, 'delete_transactionsstore'),
(44, 'Can view transactionsstore', 11, 'view_transactionsstore'),
(45, 'Can add doctorreplaysysmptoms', 12, 'add_doctorreplaysysmptoms'),
(46, 'Can change doctorreplaysysmptoms', 12, 'change_doctorreplaysysmptoms'),
(47, 'Can delete doctorreplaysysmptoms', 12, 'delete_doctorreplaysysmptoms'),
(48, 'Can view doctorreplaysysmptoms', 12, 'view_doctorreplaysysmptoms');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'converginblockchain', 'docotrtregistrationmodel'),
(7, 'converginblockchain', 'patientregistrationmodel'),
(12, 'doctors', 'doctorreplaysysmptoms'),
(10, 'patients', 'blkchainapproach'),
(9, 'patients', 'patientsymptomsanalysis'),
(11, 'patients', 'transactionsstore'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-08-11 12:05:35.843911'),
(2, 'auth', '0001_initial', '2022-08-11 12:05:54.730356'),
(3, 'admin', '0001_initial', '2022-08-11 12:06:33.240236'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-08-11 12:06:37.795461'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-11 12:06:38.008142'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-08-11 12:06:40.982782'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-08-11 12:06:42.768216'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-08-11 12:06:43.787054'),
(9, 'auth', '0004_alter_user_username_opts', '2022-08-11 12:06:43.864923'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-08-11 12:06:44.836417'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-08-11 12:06:44.913454'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-08-11 12:06:44.994413'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-08-11 12:06:46.107226'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-08-11 12:06:47.328457'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-08-11 12:06:48.566217'),
(16, 'auth', '0011_update_proxy_permissions', '2022-08-11 12:06:48.680199'),
(17, 'patients', '0001_initial', '2022-08-11 12:06:49.319267'),
(18, 'patients', '0002_auto_20220811_1735', '2022-08-11 12:06:52.046617'),
(19, 'sessions', '0001_initial', '2022-08-11 12:06:53.111422');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patients_blkchainapproach`
--

CREATE TABLE IF NOT EXISTS `patients_blkchainapproach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docname` varchar(100) NOT NULL,
  `docid` int(11) NOT NULL,
  `patientname` varchar(100) NOT NULL,
  `patientid` int(11) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `sysmptid` int(11) NOT NULL,
  `ledgerbalance` double NOT NULL,
  `tranxid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `patients_patientsymptomsanalysis`
--

CREATE TABLE IF NOT EXISTS `patients_patientsymptomsanalysis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patintid` varchar(10) NOT NULL,
  `patinetname` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `patinetallsymptoms` varchar(600) NOT NULL,
  `diseasname` varchar(250) NOT NULL,
  `descriptions` varchar(600) NOT NULL,
  `createdon` datetime(6) NOT NULL,
  `docname` varchar(600) NOT NULL,
  `status` varchar(600) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `patients_transactionsstore`
--

CREATE TABLE IF NOT EXISTS `patients_transactionsstore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docid` int(11) NOT NULL,
  `patientid` int(11) NOT NULL,
  `nameoncard` varchar(100) NOT NULL,
  `cvv` int(11) NOT NULL,
  `cardnumber` varchar(100) NOT NULL,
  `expiredate` varchar(100) NOT NULL,
  `tranxid` int(11) NOT NULL,
  `price` double NOT NULL,
  `ledgerbalance` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
