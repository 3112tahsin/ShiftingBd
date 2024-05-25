-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 11:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shiftingbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 2, 'add_permission'),
(2, 'Can change permission', 2, 'change_permission'),
(3, 'Can delete permission', 2, 'delete_permission'),
(4, 'Can view permission', 2, 'view_permission'),
(5, 'Can add group', 3, 'add_group'),
(6, 'Can change group', 3, 'change_group'),
(7, 'Can delete group', 3, 'delete_group'),
(8, 'Can view group', 3, 'view_group'),
(9, 'Can add user', 4, 'add_user'),
(10, 'Can change user', 4, 'change_user'),
(11, 'Can delete user', 4, 'delete_user'),
(12, 'Can view user', 4, 'view_user'),
(13, 'Can add content type', 1, 'add_contenttype'),
(14, 'Can change content type', 1, 'change_contenttype'),
(15, 'Can delete content type', 1, 'delete_contenttype'),
(16, 'Can view content type', 1, 'view_contenttype'),
(17, 'Can add log entry', 5, 'add_logentry'),
(18, 'Can change log entry', 5, 'change_logentry'),
(19, 'Can delete log entry', 5, 'delete_logentry'),
(20, 'Can view log entry', 5, 'view_logentry'),
(21, 'Can add user dashboard module', 6, 'add_userdashboardmodule'),
(22, 'Can change user dashboard module', 6, 'change_userdashboardmodule'),
(23, 'Can delete user dashboard module', 6, 'delete_userdashboardmodule'),
(24, 'Can view user dashboard module', 6, 'view_userdashboardmodule'),
(25, 'Can add bookmark', 7, 'add_bookmark'),
(26, 'Can change bookmark', 7, 'change_bookmark'),
(27, 'Can delete bookmark', 7, 'delete_bookmark'),
(28, 'Can view bookmark', 7, 'view_bookmark'),
(29, 'Can add pinned application', 8, 'add_pinnedapplication'),
(30, 'Can change pinned application', 8, 'change_pinnedapplication'),
(31, 'Can delete pinned application', 8, 'delete_pinnedapplication'),
(32, 'Can view pinned application', 8, 'view_pinnedapplication'),
(33, 'Can add session', 9, 'add_session'),
(34, 'Can change session', 9, 'change_session'),
(35, 'Can delete session', 9, 'delete_session'),
(36, 'Can view session', 9, 'view_session'),
(37, 'Can add about_bottom', 10, 'add_about_bottom'),
(38, 'Can change about_bottom', 10, 'change_about_bottom'),
(39, 'Can delete about_bottom', 10, 'delete_about_bottom'),
(40, 'Can view about_bottom', 10, 'view_about_bottom'),
(41, 'Can add about_brand', 11, 'add_about_brand'),
(42, 'Can change about_brand', 11, 'change_about_brand'),
(43, 'Can delete about_brand', 11, 'delete_about_brand'),
(44, 'Can view about_brand', 11, 'view_about_brand'),
(45, 'Can add about_feature', 12, 'add_about_feature'),
(46, 'Can change about_feature', 12, 'change_about_feature'),
(47, 'Can delete about_feature', 12, 'delete_about_feature'),
(48, 'Can view about_feature', 12, 'view_about_feature'),
(49, 'Can add about_us', 13, 'add_about_us'),
(50, 'Can change about_us', 13, 'change_about_us'),
(51, 'Can delete about_us', 13, 'delete_about_us'),
(52, 'Can view about_us', 13, 'view_about_us'),
(53, 'Can add blog_popular_tags', 14, 'add_blog_popular_tags'),
(54, 'Can change blog_popular_tags', 14, 'change_blog_popular_tags'),
(55, 'Can delete blog_popular_tags', 14, 'delete_blog_popular_tags'),
(56, 'Can view blog_popular_tags', 14, 'view_blog_popular_tags'),
(57, 'Can add blogs', 15, 'add_blogs'),
(58, 'Can change blogs', 15, 'change_blogs'),
(59, 'Can delete blogs', 15, 'delete_blogs'),
(60, 'Can view blogs', 15, 'view_blogs'),
(61, 'Can add booking_labour', 16, 'add_booking_labour'),
(62, 'Can change booking_labour', 16, 'change_booking_labour'),
(63, 'Can delete booking_labour', 16, 'delete_booking_labour'),
(64, 'Can view booking_labour', 16, 'view_booking_labour'),
(65, 'Can add booking_tec', 17, 'add_booking_tec'),
(66, 'Can change booking_tec', 17, 'change_booking_tec'),
(67, 'Can delete booking_tec', 17, 'delete_booking_tec'),
(68, 'Can view booking_tec', 17, 'view_booking_tec'),
(69, 'Can add booking commercial', 18, 'add_bookingcommercial'),
(70, 'Can change booking commercial', 18, 'change_bookingcommercial'),
(71, 'Can delete booking commercial', 18, 'delete_bookingcommercial'),
(72, 'Can view booking commercial', 18, 'view_bookingcommercial'),
(73, 'Can add bookinghome', 19, 'add_bookinghome'),
(74, 'Can change bookinghome', 19, 'change_bookinghome'),
(75, 'Can delete bookinghome', 19, 'delete_bookinghome'),
(76, 'Can view bookinghome', 19, 'view_bookinghome'),
(77, 'Can add booking house', 20, 'add_bookinghouse'),
(78, 'Can change booking house', 20, 'change_bookinghouse'),
(79, 'Can delete booking house', 20, 'delete_bookinghouse'),
(80, 'Can view booking house', 20, 'view_bookinghouse'),
(81, 'Can add booking office', 21, 'add_bookingoffice'),
(82, 'Can change booking office', 21, 'change_bookingoffice'),
(83, 'Can delete booking office', 21, 'delete_bookingoffice'),
(84, 'Can view booking office', 21, 'view_bookingoffice'),
(85, 'Can add branch_barisal', 22, 'add_branch_barisal'),
(86, 'Can change branch_barisal', 22, 'change_branch_barisal'),
(87, 'Can delete branch_barisal', 22, 'delete_branch_barisal'),
(88, 'Can view branch_barisal', 22, 'view_branch_barisal'),
(89, 'Can add branch_chittagong', 23, 'add_branch_chittagong'),
(90, 'Can change branch_chittagong', 23, 'change_branch_chittagong'),
(91, 'Can delete branch_chittagong', 23, 'delete_branch_chittagong'),
(92, 'Can view branch_chittagong', 23, 'view_branch_chittagong'),
(93, 'Can add branch_chittagong_city', 24, 'add_branch_chittagong_city'),
(94, 'Can change branch_chittagong_city', 24, 'change_branch_chittagong_city'),
(95, 'Can delete branch_chittagong_city', 24, 'delete_branch_chittagong_city'),
(96, 'Can view branch_chittagong_city', 24, 'view_branch_chittagong_city'),
(97, 'Can add branch_dhaka', 25, 'add_branch_dhaka'),
(98, 'Can change branch_dhaka', 25, 'change_branch_dhaka'),
(99, 'Can delete branch_dhaka', 25, 'delete_branch_dhaka'),
(100, 'Can view branch_dhaka', 25, 'view_branch_dhaka'),
(101, 'Can add branch_dhaka_city', 26, 'add_branch_dhaka_city'),
(102, 'Can change branch_dhaka_city', 26, 'change_branch_dhaka_city'),
(103, 'Can delete branch_dhaka_city', 26, 'delete_branch_dhaka_city'),
(104, 'Can view branch_dhaka_city', 26, 'view_branch_dhaka_city'),
(105, 'Can add branch_khulna', 27, 'add_branch_khulna'),
(106, 'Can change branch_khulna', 27, 'change_branch_khulna'),
(107, 'Can delete branch_khulna', 27, 'delete_branch_khulna'),
(108, 'Can view branch_khulna', 27, 'view_branch_khulna'),
(109, 'Can add branch_mymensingh', 28, 'add_branch_mymensingh'),
(110, 'Can change branch_mymensingh', 28, 'change_branch_mymensingh'),
(111, 'Can delete branch_mymensingh', 28, 'delete_branch_mymensingh'),
(112, 'Can view branch_mymensingh', 28, 'view_branch_mymensingh'),
(113, 'Can add branch_rajshahi', 29, 'add_branch_rajshahi'),
(114, 'Can change branch_rajshahi', 29, 'change_branch_rajshahi'),
(115, 'Can delete branch_rajshahi', 29, 'delete_branch_rajshahi'),
(116, 'Can view branch_rajshahi', 29, 'view_branch_rajshahi'),
(117, 'Can add branch_rangpur', 30, 'add_branch_rangpur'),
(118, 'Can change branch_rangpur', 30, 'change_branch_rangpur'),
(119, 'Can delete branch_rangpur', 30, 'delete_branch_rangpur'),
(120, 'Can view branch_rangpur', 30, 'view_branch_rangpur'),
(121, 'Can add branch_sylhet', 31, 'add_branch_sylhet'),
(122, 'Can change branch_sylhet', 31, 'change_branch_sylhet'),
(123, 'Can delete branch_sylhet', 31, 'delete_branch_sylhet'),
(124, 'Can view branch_sylhet', 31, 'view_branch_sylhet'),
(125, 'Can add contact_address', 32, 'add_contact_address'),
(126, 'Can change contact_address', 32, 'change_contact_address'),
(127, 'Can delete contact_address', 32, 'delete_contact_address'),
(128, 'Can view contact_address', 32, 'view_contact_address'),
(129, 'Can add contact_ us', 33, 'add_contact_us'),
(130, 'Can change contact_ us', 33, 'change_contact_us'),
(131, 'Can delete contact_ us', 33, 'delete_contact_us'),
(132, 'Can view contact_ us', 33, 'view_contact_us'),
(133, 'Can add couriers', 34, 'add_couriers'),
(134, 'Can change couriers', 34, 'change_couriers'),
(135, 'Can delete couriers', 34, 'delete_couriers'),
(136, 'Can view couriers', 34, 'view_couriers'),
(137, 'Can add couriers_service', 35, 'add_couriers_service'),
(138, 'Can change couriers_service', 35, 'change_couriers_service'),
(139, 'Can delete couriers_service', 35, 'delete_couriers_service'),
(140, 'Can view couriers_service', 35, 'view_couriers_service'),
(141, 'Can add covertruckdetails', 36, 'add_covertruckdetails'),
(142, 'Can change covertruckdetails', 36, 'change_covertruckdetails'),
(143, 'Can delete covertruckdetails', 36, 'delete_covertruckdetails'),
(144, 'Can view covertruckdetails', 36, 'view_covertruckdetails'),
(145, 'Can add home_slider', 37, 'add_home_slider'),
(146, 'Can change home_slider', 37, 'change_home_slider'),
(147, 'Can delete home_slider', 37, 'delete_home_slider'),
(148, 'Can view home_slider', 37, 'view_home_slider'),
(149, 'Can add home video', 38, 'add_homevideo'),
(150, 'Can change home video', 38, 'change_homevideo'),
(151, 'Can delete home video', 38, 'delete_homevideo'),
(152, 'Can view home video', 38, 'view_homevideo'),
(153, 'Can add labour_demand', 39, 'add_labour_demand'),
(154, 'Can change labour_demand', 39, 'change_labour_demand'),
(155, 'Can delete labour_demand', 39, 'delete_labour_demand'),
(156, 'Can view labour_demand', 39, 'view_labour_demand'),
(157, 'Can add labours_type', 40, 'add_labours_type'),
(158, 'Can change labours_type', 40, 'change_labours_type'),
(159, 'Can delete labours_type', 40, 'delete_labours_type'),
(160, 'Can view labours_type', 40, 'view_labours_type'),
(161, 'Can add large covertruckdetails', 41, 'add_largecovertruckdetails'),
(162, 'Can change large covertruckdetails', 41, 'change_largecovertruckdetails'),
(163, 'Can delete large covertruckdetails', 41, 'delete_largecovertruckdetails'),
(164, 'Can view large covertruckdetails', 41, 'view_largecovertruckdetails'),
(165, 'Can add largtruckdetails', 42, 'add_largtruckdetails'),
(166, 'Can change largtruckdetails', 42, 'change_largtruckdetails'),
(167, 'Can delete largtruckdetails', 42, 'delete_largtruckdetails'),
(168, 'Can view largtruckdetails', 42, 'view_largtruckdetails'),
(169, 'Can add md', 43, 'add_md'),
(170, 'Can change md', 43, 'change_md'),
(171, 'Can delete md', 43, 'delete_md'),
(172, 'Can view md', 43, 'view_md'),
(173, 'Can add medium covertruckdetails', 44, 'add_mediumcovertruckdetails'),
(174, 'Can change medium covertruckdetails', 44, 'change_mediumcovertruckdetails'),
(175, 'Can delete medium covertruckdetails', 44, 'delete_mediumcovertruckdetails'),
(176, 'Can view medium covertruckdetails', 44, 'view_mediumcovertruckdetails'),
(177, 'Can add mediumtruckdetails', 45, 'add_mediumtruckdetails'),
(178, 'Can change mediumtruckdetails', 45, 'change_mediumtruckdetails'),
(179, 'Can delete mediumtruckdetails', 45, 'delete_mediumtruckdetails'),
(180, 'Can view mediumtruckdetails', 45, 'view_mediumtruckdetails'),
(181, 'Can add notice_description', 46, 'add_notice_description'),
(182, 'Can change notice_description', 46, 'change_notice_description'),
(183, 'Can delete notice_description', 46, 'delete_notice_description'),
(184, 'Can view notice_description', 46, 'view_notice_description'),
(185, 'Can add notice_job_circular', 47, 'add_notice_job_circular'),
(186, 'Can change notice_job_circular', 47, 'change_notice_job_circular'),
(187, 'Can delete notice_job_circular', 47, 'delete_notice_job_circular'),
(188, 'Can view notice_job_circular', 47, 'view_notice_job_circular'),
(189, 'Can add our_services', 48, 'add_our_services'),
(190, 'Can change our_services', 48, 'change_our_services'),
(191, 'Can delete our_services', 48, 'delete_our_services'),
(192, 'Can view our_services', 48, 'view_our_services'),
(193, 'Can add portfolios category', 49, 'add_portfolioscategory'),
(194, 'Can change portfolios category', 49, 'change_portfolioscategory'),
(195, 'Can delete portfolios category', 49, 'delete_portfolioscategory'),
(196, 'Can view portfolios category', 49, 'view_portfolioscategory'),
(197, 'Can add questions', 50, 'add_questions'),
(198, 'Can change questions', 50, 'change_questions'),
(199, 'Can delete questions', 50, 'delete_questions'),
(200, 'Can view questions', 50, 'view_questions'),
(201, 'Can add securities', 51, 'add_securities'),
(202, 'Can change securities', 51, 'change_securities'),
(203, 'Can delete securities', 51, 'delete_securities'),
(204, 'Can view securities', 51, 'view_securities'),
(205, 'Can add security booking', 52, 'add_securitybooking'),
(206, 'Can change security booking', 52, 'change_securitybooking'),
(207, 'Can delete security booking', 52, 'delete_securitybooking'),
(208, 'Can view security booking', 52, 'view_securitybooking'),
(209, 'Can add shifting_house', 53, 'add_shifting_house'),
(210, 'Can change shifting_house', 53, 'change_shifting_house'),
(211, 'Can delete shifting_house', 53, 'delete_shifting_house'),
(212, 'Can view shifting_house', 53, 'view_shifting_house'),
(213, 'Can add shifting_houseser', 54, 'add_shifting_houseser'),
(214, 'Can change shifting_houseser', 54, 'change_shifting_houseser'),
(215, 'Can delete shifting_houseser', 54, 'delete_shifting_houseser'),
(216, 'Can view shifting_houseser', 54, 'view_shifting_houseser'),
(217, 'Can add shifting_office', 55, 'add_shifting_office'),
(218, 'Can change shifting_office', 55, 'change_shifting_office'),
(219, 'Can delete shifting_office', 55, 'delete_shifting_office'),
(220, 'Can view shifting_office', 55, 'view_shifting_office'),
(221, 'Can add shifting_other_cost', 56, 'add_shifting_other_cost'),
(222, 'Can change shifting_other_cost', 56, 'change_shifting_other_cost'),
(223, 'Can delete shifting_other_cost', 56, 'delete_shifting_other_cost'),
(224, 'Can view shifting_other_cost', 56, 'view_shifting_other_cost'),
(225, 'Can add shifting_transport_cost', 57, 'add_shifting_transport_cost'),
(226, 'Can change shifting_transport_cost', 57, 'change_shifting_transport_cost'),
(227, 'Can delete shifting_transport_cost', 57, 'delete_shifting_transport_cost'),
(228, 'Can view shifting_transport_cost', 57, 'view_shifting_transport_cost'),
(229, 'Can add shiftingc_ommercial', 58, 'add_shiftingc_ommercial'),
(230, 'Can change shiftingc_ommercial', 58, 'change_shiftingc_ommercial'),
(231, 'Can delete shiftingc_ommercial', 58, 'delete_shiftingc_ommercial'),
(232, 'Can view shiftingc_ommercial', 58, 'view_shiftingc_ommercial'),
(233, 'Can add subscribe', 59, 'add_subscribe'),
(234, 'Can change subscribe', 59, 'change_subscribe'),
(235, 'Can delete subscribe', 59, 'delete_subscribe'),
(236, 'Can view subscribe', 59, 'view_subscribe'),
(237, 'Can add team_members', 60, 'add_team_members'),
(238, 'Can change team_members', 60, 'change_team_members'),
(239, 'Can delete team_members', 60, 'delete_team_members'),
(240, 'Can view team_members', 60, 'view_team_members'),
(241, 'Can add technician_category', 61, 'add_technician_category'),
(242, 'Can change technician_category', 61, 'change_technician_category'),
(243, 'Can delete technician_category', 61, 'delete_technician_category'),
(244, 'Can view technician_category', 61, 'view_technician_category'),
(245, 'Can add technician_chart', 62, 'add_technician_chart'),
(246, 'Can change technician_chart', 62, 'change_technician_chart'),
(247, 'Can delete technician_chart', 62, 'delete_technician_chart'),
(248, 'Can view technician_chart', 62, 'view_technician_chart'),
(249, 'Can add testimonials', 63, 'add_testimonials'),
(250, 'Can change testimonials', 63, 'change_testimonials'),
(251, 'Can delete testimonials', 63, 'delete_testimonials'),
(252, 'Can view testimonials', 63, 'view_testimonials'),
(253, 'Can add truck_details', 64, 'add_truck_details'),
(254, 'Can change truck_details', 64, 'change_truck_details'),
(255, 'Can delete truck_details', 64, 'delete_truck_details'),
(256, 'Can view truck_details', 64, 'view_truck_details'),
(257, 'Can add technician', 65, 'add_technician'),
(258, 'Can change technician', 65, 'change_technician'),
(259, 'Can delete technician', 65, 'delete_technician'),
(260, 'Can view technician', 65, 'view_technician'),
(261, 'Can add portfolios', 66, 'add_portfolios'),
(262, 'Can change portfolios', 66, 'change_portfolios'),
(263, 'Can delete portfolios', 66, 'delete_portfolios'),
(264, 'Can view portfolios', 66, 'view_portfolios'),
(265, 'Can add labours', 67, 'add_labours'),
(266, 'Can change labours', 67, 'change_labours'),
(267, 'Can delete labours', 67, 'delete_labours'),
(268, 'Can view labours', 67, 'view_labours'),
(269, 'Can add comment blog', 68, 'add_commentblog'),
(270, 'Can change comment blog', 68, 'change_commentblog'),
(271, 'Can delete comment blog', 68, 'delete_commentblog'),
(272, 'Can view comment blog', 68, 'view_commentblog');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$aoEkpu4y0azIwEgFZrwXPB$TGN01L65eE7nv/Eu1hvxIBH+OIhuPuL2C4c1V+y27Ao=', '2024-03-28 07:23:24.352950', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2024-03-13 04:39:17.378768');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_userdashboardmodule`
--

CREATE TABLE `dashboard_userdashboardmodule` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `app_label` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `column` int(10) UNSIGNED NOT NULL CHECK (`column` >= 0),
  `order` int(11) NOT NULL,
  `settings` longtext NOT NULL,
  `children` longtext NOT NULL,
  `collapsed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_userdashboardmodule`
--

INSERT INTO `dashboard_userdashboardmodule` (`id`, `title`, `module`, `app_label`, `user_id`, `column`, `order`, `settings`, `children`, `collapsed`) VALUES
(1, 'Quick links', 'jet.dashboard.modules.LinkList', NULL, 1, 0, 0, '{\"draggable\": false, \"deletable\": false, \"collapsible\": false, \"layout\": \"inline\"}', '[{\"title\": \"Return to site\", \"url\": \"/\"}, {\"title\": \"Change password\", \"url\": \"/admin/password_change/\"}, {\"title\": \"Log out\", \"url\": \"/admin/logout/\"}]', 0),
(2, 'Applications', 'jet.dashboard.modules.AppList', NULL, 1, 1, 0, '{\"models\": null, \"exclude\": [\"auth.*\"]}', '', 0),
(3, 'Administration', 'jet.dashboard.modules.AppList', NULL, 1, 2, 0, '{\"models\": [\"auth.*\"], \"exclude\": null}', '', 0),
(4, 'Recent Actions', 'jet.dashboard.modules.RecentActions', NULL, 1, 0, 1, '{\"limit\": 10, \"include_list\": null, \"exclude_list\": null, \"user\": null}', '', 0),
(5, 'Latest Django News', 'jet.dashboard.modules.Feed', NULL, 1, 1, 1, '{\"feed_url\": \"http://www.djangoproject.com/rss/weblog/\", \"limit\": 5}', '', 0),
(6, 'Support', 'jet.dashboard.modules.LinkList', NULL, 1, 2, 1, '{\"draggable\": true, \"deletable\": true, \"collapsible\": true, \"layout\": \"stacked\"}', '[{\"title\": \"Django documentation\", \"url\": \"http://docs.djangoproject.com/\", \"external\": true}, {\"title\": \"Django \\\"django-users\\\" mailing list\", \"url\": \"http://groups.google.com/group/django-users\", \"external\": true}, {\"title\": \"Django irc channel\", \"url\": \"irc://irc.freenode.net/django\", \"external\": true}]', 0),
(7, 'Application models', 'jet.dashboard.modules.ModelList', 'shifting', 1, 0, 0, '{\"models\": [\"shifting.*\"], \"exclude\": null}', '', 0),
(8, 'Recent Actions', 'jet.dashboard.modules.RecentActions', 'shifting', 1, 1, 0, '{\"limit\": 10, \"include_list\": [\"shifting.*\"], \"exclude_list\": null, \"user\": null}', '', 0);

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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-03-13 04:41:35.786111', '1', 'dd', 1, '[{\"added\": {}}]', 37, 1),
(2, '2024-03-13 04:42:10.786643', '1', 'HomeVideo object (1)', 1, '[{\"added\": {}}]', 38, 1),
(3, '2024-03-13 04:43:20.037729', '2', 'HomeVideo object (2)', 1, '[{\"added\": {}}]', 38, 1),
(4, '2024-03-13 04:43:32.204035', '3', 'HomeVideo object (3)', 1, '[{\"added\": {}}]', 38, 1),
(5, '2024-03-28 07:41:35.766461', '1', 'dd', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 37, 1),
(6, '2024-03-30 04:26:33.757584', '1', 'Heavy Weight Worker', 1, '[{\"added\": {}}]', 40, 1),
(7, '2024-03-30 04:28:54.562824', '1', 'Heavy Weight Worker', 1, '[{\"added\": {}}]', 67, 1),
(8, '2024-03-30 04:48:27.412548', '1', '0 1686-570172', 1, '[{\"added\": {}}]', 32, 1),
(9, '2024-03-30 04:49:01.585922', '1', '0 1686-570172', 2, '[{\"changed\": {\"fields\": [\"Logo\", \"Top image\"]}}]', 32, 1),
(10, '2024-03-30 04:55:42.592166', '1', 'Stay Informed, Stay Connected', 1, '[{\"added\": {}}]', 46, 1),
(11, '2024-03-30 04:55:56.358217', '2', 'Easy Accessibility and Navigation', 1, '[{\"added\": {}}]', 46, 1),
(12, '2024-03-30 04:56:12.784814', '3', 'Real-Time Updates', 1, '[{\"added\": {}}]', 46, 1),
(13, '2024-03-30 04:56:29.534792', '4', 'Categorized Notices for Easy Exploration', 1, '[{\"added\": {}}]', 46, 1),
(14, '2024-03-30 04:56:36.383492', '5', 'Community Engagement', 1, '[{\"added\": {}}]', 46, 1),
(15, '2024-03-30 04:56:49.199824', '6', 'Conclusion', 1, '[{\"added\": {}}]', 46, 1),
(16, '2024-03-30 05:30:58.925327', '1', '0 1686-570172', 2, '[{\"changed\": {\"fields\": [\"Logo\", \"Top image\"]}}]', 32, 1),
(17, '2024-03-30 05:39:09.024885', '1', 'dd', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 37, 1),
(18, '2024-03-30 05:47:14.691404', '1', 'Heavy Weight Worker', 2, '[{\"changed\": {\"fields\": [\"Main image\"]}}]', 67, 1),
(19, '2024-03-30 06:25:29.441926', '1', 'about_brand object (1)', 1, '[{\"added\": {}}]', 11, 1),
(20, '2024-03-30 06:25:35.320095', '2', 'about_brand object (2)', 1, '[{\"added\": {}}]', 11, 1),
(21, '2024-03-30 06:25:39.580302', '3', 'about_brand object (3)', 1, '[{\"added\": {}}]', 11, 1),
(22, '2024-03-30 06:25:43.551198', '4', 'about_brand object (4)', 1, '[{\"added\": {}}]', 11, 1),
(23, '2024-03-30 06:25:49.639528', '5', 'about_brand object (5)', 1, '[{\"added\": {}}]', 11, 1),
(24, '2024-03-30 06:25:53.535474', '6', 'about_brand object (6)', 1, '[{\"added\": {}}]', 11, 1),
(25, '2024-03-30 06:27:21.872220', '7', 'about_brand object (7)', 1, '[{\"added\": {}}]', 11, 1),
(26, '2024-03-30 06:27:30.695671', '8', 'about_brand object (8)', 1, '[{\"added\": {}}]', 11, 1),
(27, '2024-03-30 06:30:06.157033', '1', 'Expert Member', 1, '[{\"added\": {}}]', 10, 1),
(28, '2024-03-30 06:30:43.269662', '2', 'Complete Deliveries', 1, '[{\"added\": {}}]', 10, 1),
(29, '2024-03-30 06:31:04.598296', '3', 'Happy Clients', 1, '[{\"added\": {}}]', 10, 1),
(30, '2024-03-30 06:31:23.029302', '4', 'Awards Winning', 1, '[{\"added\": {}}]', 10, 1),
(31, '2024-03-30 06:32:33.052323', '1', 'Safety & Security', 1, '[{\"added\": {}}]', 12, 1),
(32, '2024-03-30 06:33:22.619967', '2', 'Transport Reputation', 1, '[{\"added\": {}}]', 12, 1),
(33, '2024-03-30 06:33:51.352754', '3', 'Powerfull Services', 1, '[{\"added\": {}}]', 12, 1),
(34, '2024-03-30 06:34:19.660150', '4', 'Safety & Security', 1, '[{\"added\": {}}]', 12, 1),
(35, '2024-03-30 06:36:33.135582', '1', 'Check Out What We Do!', 1, '[{\"added\": {}}]', 13, 1),
(36, '2024-03-30 06:46:16.353753', '1', 'Importers Achieve Cost Savings Through The First Sale Transport Rule!', 1, '[{\"added\": {}}]', 15, 1),
(37, '2024-03-30 06:50:21.098691', '1', 'Commercial Vehicles', 1, '[{\"added\": {}}]', 14, 1),
(38, '2024-03-30 06:50:30.543986', '2', 'Warehousing', 1, '[{\"added\": {}}]', 14, 1),
(39, '2024-03-30 06:50:39.351066', '3', 'Ocean Freight', 1, '[{\"added\": {}}]', 14, 1),
(40, '2024-03-30 06:50:56.632684', '4', 'Packaging Options', 1, '[{\"added\": {}}]', 14, 1),
(41, '2024-03-30 06:51:08.168111', '5', 'Road Freight', 1, '[{\"added\": {}}]', 14, 1),
(42, '2024-03-30 06:51:22.550707', '6', 'Default Title', 1, '[{\"added\": {}}]', 14, 1),
(43, '2024-03-30 06:51:27.960717', '7', 'Default Title', 1, '[{\"added\": {}}]', 14, 1),
(44, '2024-03-30 06:59:19.187420', '1', 'Shifting', 1, '[{\"added\": {}}]', 48, 1),
(45, '2024-03-30 06:59:37.036825', '2', 'Truck', 1, '[{\"added\": {}}]', 48, 1),
(46, '2024-03-30 06:59:53.508661', '3', 'Couriar', 1, '[{\"added\": {}}]', 48, 1),
(47, '2024-03-30 07:00:55.987822', '4', 'Security', 1, '[{\"added\": {}}]', 48, 1),
(48, '2024-03-30 07:01:22.148748', '5', 'Labour', 1, '[{\"added\": {}}]', 48, 1),
(49, '2024-03-30 07:01:45.722462', '6', 'Technician', 1, '[{\"added\": {}}]', 48, 1),
(50, '2024-03-30 07:02:18.166140', '1', 'Shifting', 1, '[{\"added\": {}}]', 49, 1),
(51, '2024-03-30 07:02:21.445822', '2', 'Truck', 1, '[{\"added\": {}}]', 49, 1),
(52, '2024-03-30 07:02:46.120015', '3', 'Labour', 1, '[{\"added\": {}}]', 49, 1),
(53, '2024-03-30 07:02:48.973370', '4', 'Courier', 1, '[{\"added\": {}}]', 49, 1),
(54, '2024-03-30 07:02:52.141493', '5', 'Technician', 1, '[{\"added\": {}}]', 49, 1),
(55, '2024-03-30 07:04:26.966203', '1', 'Labour', 1, '[{\"added\": {}}]', 66, 1),
(56, '2024-03-30 07:05:15.219613', '2', 'Truck', 1, '[{\"added\": {}}]', 66, 1),
(57, '2024-03-30 07:05:43.652631', '3', 'Courier', 1, '[{\"added\": {}}]', 66, 1),
(58, '2024-03-30 07:06:14.869585', '4', 'Labor', 1, '[{\"added\": {}}]', 66, 1),
(59, '2024-03-30 07:06:42.324563', '5', 'Technician', 1, '[{\"added\": {}}]', 66, 1),
(60, '2024-03-30 07:07:23.782743', '6', 'hh', 1, '[{\"added\": {}}]', 66, 1),
(61, '2024-03-30 07:52:07.243284', '1', 'Orpo Khan', 1, '[{\"added\": {}}]', 63, 1),
(62, '2024-03-30 07:52:32.156465', '2', 'Ahmad Faruk', 1, '[{\"added\": {}}]', 63, 1),
(63, '2024-03-30 07:52:56.366773', '3', 'Abdullah Wasif', 1, '[{\"added\": {}}]', 63, 1),
(64, '2024-03-30 07:57:59.922798', '1', 'Md.Shamsudduha', 1, '[{\"added\": {}}]', 60, 1),
(65, '2024-03-30 07:58:26.222637', '2', 'MD.Mahmudul Hasan', 1, '[{\"added\": {}}]', 60, 1),
(66, '2024-03-30 07:58:47.830645', '3', 'Arifa Akter', 1, '[{\"added\": {}}]', 60, 1),
(67, '2024-03-30 07:59:15.102721', '4', 'Sanjida Mahmud Tithy', 1, '[{\"added\": {}}]', 60, 1),
(68, '2024-03-30 08:00:17.566622', '1', 'MD. Masum', 1, '[{\"added\": {}}]', 43, 1),
(69, '2024-03-30 08:00:49.154524', '2', 'Write Name', 1, '[{\"added\": {}}]', 43, 1),
(70, '2024-03-30 08:07:26.961230', '1', 'WE PROVIDE A WIDE RANGE OF SERVICES :', 1, '[{\"added\": {}}]', 34, 1),
(71, '2024-03-30 08:08:13.894891', '1', 'Door to Door Courier/Parcel Service', 1, '[{\"added\": {}}]', 35, 1),
(72, '2024-03-30 08:08:36.022497', '2', 'Same Day Delivery services within Dhaka', 1, '[{\"added\": {}}]', 35, 1),
(73, '2024-03-30 08:09:08.893399', '3', 'All types of parcel booking', 1, '[{\"added\": {}}]', 35, 1),
(74, '2024-03-30 08:09:21.366382', '4', 'All Business product condition booking', 1, '[{\"added\": {}}]', 35, 1),
(75, '2024-03-30 08:09:30.126168', '5', 'All Business product condition booking', 1, '[{\"added\": {}}]', 35, 1),
(76, '2024-03-30 08:09:38.846860', '6', 'All vehicle have tracking devices linked to our dispatch center via GPRS.', 1, '[{\"added\": {}}]', 35, 1),
(77, '2024-03-30 08:09:47.565787', '7', 'Pick up services.', 1, '[{\"added\": {}}]', 35, 1),
(78, '2024-03-30 08:09:56.261356', '8', 'Specification of our services.', 1, '[{\"added\": {}}]', 35, 1),
(79, '2024-03-30 08:13:54.409500', '1', '9 Feet 1.5 Ton (Open)', 1, '[{\"added\": {}}]', 41, 1),
(80, '2024-03-30 08:14:19.051109', '2', '12 Feet 2 Ton (Open)', 1, '[{\"added\": {}}]', 41, 1),
(81, '2024-03-30 08:14:28.279369', '1', '9 Feet 1.5 Ton (Open)', 2, '[{\"changed\": {\"fields\": [\"Fixed amount\"]}}]', 41, 1),
(82, '2024-03-30 08:15:25.692418', '1', '9 Feet 1.5 Ton (Open)', 1, '[{\"added\": {}}]', 44, 1),
(83, '2024-03-30 08:15:45.369252', '2', '12 Feet 2 Ton (Open)', 1, '[{\"added\": {}}]', 44, 1),
(84, '2024-03-30 08:16:26.376412', '1', '9 Feet 1.5 Ton (Open)', 1, '[{\"added\": {}}]', 36, 1),
(85, '2024-03-30 08:16:59.336899', '2', '12 Feet 2 Ton (Open)', 1, '[{\"added\": {}}]', 36, 1),
(86, '2024-03-30 08:18:28.446020', '1', '7 Feet 1 Ton (Open)', 1, '[{\"added\": {}}]', 42, 1),
(87, '2024-03-30 08:18:42.683397', '2', '9 Feet 1.5 Ton (Open)', 1, '[{\"added\": {}}]', 42, 1),
(88, '2024-03-30 08:18:59.935998', '3', '12 Feet 2 Ton (Open)', 1, '[{\"added\": {}}]', 42, 1),
(89, '2024-03-30 08:19:18.434649', '4', '12 Feet 2 Ton (Open)', 1, '[{\"added\": {}}]', 42, 1),
(90, '2024-03-30 08:19:29.794689', '3', '12 Feet 2 Ton (Open)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 42, 1),
(91, '2024-03-30 08:19:38.193121', '1', '7 Feet 1 Ton (Open)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 42, 1),
(92, '2024-03-30 08:21:05.748333', '1', '7 Feet 1 Ton (Open)', 1, '[{\"added\": {}}]', 45, 1),
(93, '2024-03-30 08:21:19.760749', '2', '9 Feet 1.5 Ton (Open)', 1, '[{\"added\": {}}]', 45, 1),
(94, '2024-03-30 08:21:38.549581', '3', '12 Feet 2 Ton (Open)', 1, '[{\"added\": {}}]', 45, 1),
(95, '2024-03-30 08:22:40.665957', '1', '7 Feet 1 Ton (Open)', 1, '[{\"added\": {}}]', 64, 1),
(96, '2024-03-30 08:22:52.302616', '2', '9 Feet 1.5 Ton (Open)', 1, '[{\"added\": {}}]', 64, 1),
(97, '2024-03-30 08:23:15.032265', '3', '12 Feet 2 Ton (Open)', 1, '[{\"added\": {}}]', 64, 1),
(98, '2024-03-30 08:23:35.298295', '2', '9 Feet 1.5 Ton (Open)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 64, 1),
(99, '2024-03-30 08:28:28.469988', '1', 'Commercial Shifting', 1, '[{\"added\": {}}]', 58, 1),
(100, '2024-03-30 08:29:08.658010', '1', 'Office Shifting', 1, '[{\"added\": {}}]', 55, 1),
(101, '2024-03-30 08:30:16.647801', '1', 'House Shifting', 1, '[{\"added\": {}}]', 54, 1),
(102, '2024-03-30 08:35:04.562111', '1', 'HOUSE SHIFTING SERVICES', 1, '[{\"added\": {}}]', 53, 1),
(103, '2024-03-30 08:36:04.664395', '2', 'OFFICE SHIFTING SERVICS', 1, '[{\"added\": {}}]', 53, 1),
(104, '2024-03-30 08:36:45.464552', '3', 'COMMERCIAL SHIFTING', 1, '[{\"added\": {}}]', 53, 1),
(105, '2024-03-30 08:42:21.417343', '1', 'Daily Security', 1, '[{\"added\": {}}]', 51, 1),
(106, '2024-03-30 08:44:43.459010', '2', 'Monthly Security', 1, '[{\"added\": {}}]', 51, 1),
(107, '2024-03-30 08:46:59.796522', '3', 'House Security', 1, '[{\"added\": {}}]', 51, 1),
(108, '2024-03-30 08:47:56.347184', '4', 'Office/Commercial Security', 1, '[{\"added\": {}}]', 51, 1),
(109, '2024-03-30 08:54:18.416541', '2', 'Working Agricultural Worker', 1, '[{\"added\": {}}]', 40, 1),
(110, '2024-03-30 08:55:54.980721', '2', 'Working Agricultural Worker', 1, '[{\"added\": {}}]', 67, 1),
(111, '2024-03-30 08:58:09.678409', '3', 'Construction Worker', 1, '[{\"added\": {}}]', 40, 1),
(112, '2024-03-30 08:58:18.862433', '4', 'Cleaner Worker', 1, '[{\"added\": {}}]', 40, 1),
(113, '2024-03-30 08:58:27.574385', '5', 'Load/Unload Worker', 1, '[{\"added\": {}}]', 40, 1),
(114, '2024-03-30 08:59:29.321517', '3', 'Construction Worker', 1, '[{\"added\": {}}]', 67, 1),
(115, '2024-03-30 09:00:21.539538', '4', 'Cleaner Worker', 1, '[{\"added\": {}}]', 67, 1),
(116, '2024-03-30 09:01:31.850846', '5', 'Load / Unload Worker', 1, '[{\"added\": {}}]', 67, 1),
(117, '2024-03-30 09:01:51.649404', '4', 'Cleaner Worker', 2, '[{\"changed\": {\"fields\": [\"Main image\"]}}]', 67, 1),
(118, '2024-03-30 09:15:05.311318', '2', 'h', 1, '[{\"added\": {}}]', 37, 1),
(119, '2024-03-30 09:15:14.778412', '3', 'h', 1, '[{\"added\": {}}]', 37, 1),
(120, '2024-03-30 09:15:23.601217', '4', 'h', 1, '[{\"added\": {}}]', 37, 1),
(121, '2024-03-30 09:15:29.594879', '5', 'hh', 1, '[{\"added\": {}}]', 37, 1),
(122, '2024-03-30 09:16:10.244679', '1', 'dd', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 37, 1),
(123, '2024-03-30 09:16:33.653824', '2', 'h', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 37, 1),
(124, '2024-03-30 09:31:53.766681', '1', 'FURNITURE TECHNICIAN SERVICE', 1, '[{\"added\": {}}]', 61, 1),
(125, '2024-03-30 09:35:44.002764', '1', 'FURNITURE TECHNICIAN SERVICE', 1, '[{\"added\": {}}]', 65, 1),
(126, '2024-03-31 04:27:25.496315', '2', 'Electric Technician', 1, '[{\"added\": {}}]', 61, 1),
(127, '2024-03-31 04:27:31.187233', '3', 'Raping Packing Technician', 1, '[{\"added\": {}}]', 61, 1),
(128, '2024-03-31 04:27:37.648464', '4', 'Auto Mobile Technician', 1, '[{\"added\": {}}]', 61, 1),
(129, '2024-03-31 04:27:45.576374', '5', 'Plumbing Technician', 1, '[{\"added\": {}}]', 61, 1),
(130, '2024-03-31 04:27:56.039955', '6', 'Printing Technician', 1, '[{\"added\": {}}]', 61, 1),
(131, '2024-03-31 04:36:19.289967', '2', 'ELECTRIC TECHNICIAN SERVICE', 1, '[{\"added\": {}}]', 65, 1),
(132, '2024-03-31 05:02:14.335681', '3', 'RAPING PACKING TECHNICIAN', 1, '[{\"added\": {}}]', 65, 1),
(133, '2024-03-31 06:31:31.259421', '1', 'Furniture Technician Service', 2, '[{\"changed\": {\"fields\": [\"Category title\"]}}]', 61, 1),
(134, '2024-03-31 06:31:52.387632', '1', 'Furniture Technician', 2, '[{\"changed\": {\"fields\": [\"Category title\"]}}]', 61, 1),
(135, '2024-04-01 05:06:08.105305', '4', 'AUTO MOBILE TECHNICIAN', 1, '[{\"added\": {}}]', 65, 1),
(136, '2024-04-01 05:08:44.456204', '5', 'PLUMBING TECHNICIAN', 1, '[{\"added\": {}}]', 65, 1),
(137, '2024-04-01 05:11:13.308183', '6', 'Printing Technician', 1, '[{\"added\": {}}]', 65, 1),
(138, '2024-04-01 05:28:11.432509', '3', 'Raping & Packing Technician', 2, '[{\"changed\": {\"fields\": [\"Category title\"]}}]', 61, 1),
(139, '2024-04-01 05:34:33.872795', '1', 'Full Stack Developer', 1, '[{\"added\": {}}]', 47, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(5, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(1, 'contenttypes', 'contenttype'),
(6, 'dashboard', 'userdashboardmodule'),
(7, 'jet', 'bookmark'),
(8, 'jet', 'pinnedapplication'),
(9, 'sessions', 'session'),
(10, 'shifting', 'about_bottom'),
(11, 'shifting', 'about_brand'),
(12, 'shifting', 'about_feature'),
(13, 'shifting', 'about_us'),
(15, 'shifting', 'blogs'),
(14, 'shifting', 'blog_popular_tags'),
(18, 'shifting', 'bookingcommercial'),
(19, 'shifting', 'bookinghome'),
(20, 'shifting', 'bookinghouse'),
(21, 'shifting', 'bookingoffice'),
(16, 'shifting', 'booking_labour'),
(17, 'shifting', 'booking_tec'),
(22, 'shifting', 'branch_barisal'),
(23, 'shifting', 'branch_chittagong'),
(24, 'shifting', 'branch_chittagong_city'),
(25, 'shifting', 'branch_dhaka'),
(26, 'shifting', 'branch_dhaka_city'),
(27, 'shifting', 'branch_khulna'),
(28, 'shifting', 'branch_mymensingh'),
(29, 'shifting', 'branch_rajshahi'),
(30, 'shifting', 'branch_rangpur'),
(31, 'shifting', 'branch_sylhet'),
(68, 'shifting', 'commentblog'),
(32, 'shifting', 'contact_address'),
(33, 'shifting', 'contact_us'),
(34, 'shifting', 'couriers'),
(35, 'shifting', 'couriers_service'),
(36, 'shifting', 'covertruckdetails'),
(38, 'shifting', 'homevideo'),
(37, 'shifting', 'home_slider'),
(67, 'shifting', 'labours'),
(40, 'shifting', 'labours_type'),
(39, 'shifting', 'labour_demand'),
(41, 'shifting', 'largecovertruckdetails'),
(42, 'shifting', 'largtruckdetails'),
(43, 'shifting', 'md'),
(44, 'shifting', 'mediumcovertruckdetails'),
(45, 'shifting', 'mediumtruckdetails'),
(46, 'shifting', 'notice_description'),
(47, 'shifting', 'notice_job_circular'),
(48, 'shifting', 'our_services'),
(66, 'shifting', 'portfolios'),
(49, 'shifting', 'portfolioscategory'),
(50, 'shifting', 'questions'),
(51, 'shifting', 'securities'),
(52, 'shifting', 'securitybooking'),
(58, 'shifting', 'shiftingc_ommercial'),
(53, 'shifting', 'shifting_house'),
(54, 'shifting', 'shifting_houseser'),
(55, 'shifting', 'shifting_office'),
(56, 'shifting', 'shifting_other_cost'),
(57, 'shifting', 'shifting_transport_cost'),
(59, 'shifting', 'subscribe'),
(60, 'shifting', 'team_members'),
(65, 'shifting', 'technician'),
(61, 'shifting', 'technician_category'),
(62, 'shifting', 'technician_chart'),
(63, 'shifting', 'testimonials'),
(64, 'shifting', 'truck_details');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-03-13 04:36:06.876293'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-03-13 04:36:06.886024'),
(3, 'auth', '0001_initial', '2024-03-13 04:36:52.285185'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-03-13 04:36:52.294057'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-03-13 04:36:52.298921'),
(6, 'auth', '0004_alter_user_username_opts', '2024-03-13 04:36:52.302951'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-03-13 04:36:52.307592'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-03-13 04:36:52.311067'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-03-13 04:36:52.315623'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-03-13 04:36:52.319127'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-03-13 04:36:52.323482'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-03-13 04:36:52.327579'),
(13, 'auth', '0011_update_proxy_permissions', '2024-03-13 04:36:52.331619'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-03-13 04:36:52.335231'),
(15, 'admin', '0001_initial', '2024-03-13 04:37:19.326454'),
(16, 'admin', '0002_logentry_remove_auto_add', '2024-03-13 04:37:19.332141'),
(17, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-13 04:37:19.335880'),
(18, 'dashboard', '0001_initial', '2024-03-13 04:38:00.242599'),
(19, 'dashboard', '0002_auto_20201228_1929', '2024-03-13 04:38:00.247998'),
(20, 'dashboard', '0003_alter_userdashboardmodule_id', '2024-03-13 04:38:00.250932'),
(21, 'jet', '0001_initial', '2024-03-13 04:38:08.368457'),
(22, 'jet', '0002_delete_userdashboardmodule', '2024-03-13 04:38:08.368457'),
(23, 'jet', '0003_auto_20201228_1540', '2024-03-13 04:38:08.384079'),
(24, 'jet', '0004_auto_20201228_1802', '2024-03-13 04:38:08.384079'),
(25, 'jet', '0005_alter_bookmark_id_alter_pinnedapplication_id', '2024-03-13 04:38:08.519900'),
(26, 'sessions', '0001_initial', '2024-03-13 04:38:08.556817'),
(27, 'shifting', '0001_initial', '2024-03-13 04:38:10.442551'),
(28, 'jet', '0001_squashed_0004_auto_20201228_1802', '2024-03-13 04:38:10.487502'),
(29, 'shifting', '0002_labours_main_image', '2024-03-30 05:45:09.315859'),
(30, 'shifting', '0002_alter_labours_options_remove_shifting_house_image', '2024-03-30 09:10:36.450948'),
(31, 'shifting', '0003_shifting_house_image', '2024-03-30 09:11:40.582658');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('50v3msm7b9rk3gavddtlh98jgo9i9vwp', '.eJxVjDsOwjAQRO_iGlnOOvGHkp4zWGvvggPIluKkQtwdR0oBzRQz781bBNzWHLbGS5hJnMUgTr9dxPTksg_0wHKvMtWyLnOUOyKPtclrJX5dDvbvIGPL3QaniaYbD2PS0Sew3hlPaHpYAOfQaK-IR4hgO6KmLiRmZ70yFgHE5wvRBDb9:1rkGPs:mzlNdkxmU4nf-zELsZ6774IjwhOtLkBK6tPe8MW2oOs', '2024-03-27 04:40:36.707402'),
('ii8weti9zoexhl1j2qi4ep61whwryhb3', '.eJxVjDsOwjAQRO_iGlnOOvGHkp4zWGvvggPIluKkQtwdR0oBzRQz781bBNzWHLbGS5hJnMUgTr9dxPTksg_0wHKvMtWyLnOUOyKPtclrJX5dDvbvIGPL3QaniaYbD2PS0Sew3hlPaHpYAOfQaK-IR4hgO6KmLiRmZ70yFgHE5wvRBDb9:1rlPgB:pg2LChe48gFrcrdV_mVY9RJlegZXDFCgIWl6wUQdN58', '2024-03-30 08:46:11.731046'),
('npxtgbqu12ej7iru296i4i5sn15u4znd', '.eJxVjDsOwjAQRO_iGlnOOvGHkp4zWGvvggPIluKkQtwdR0oBzRQz781bBNzWHLbGS5hJnMUgTr9dxPTksg_0wHKvMtWyLnOUOyKPtclrJX5dDvbvIGPL3QaniaYbD2PS0Sew3hlPaHpYAOfQaK-IR4hgO6KmLiRmZ70yFgHE5wvRBDb9:1rpk6e:80xKO_Z_VEFdnDbk2ksOqIzDPco_rT5Z2scF3Ixj6HI', '2024-04-11 07:23:24.355945');

-- --------------------------------------------------------

--
-- Table structure for table `jet_bookmark`
--

CREATE TABLE `jet_bookmark` (
  `id` bigint(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_add` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jet_pinnedapplication`
--

CREATE TABLE `jet_pinnedapplication` (
  `id` bigint(20) NOT NULL,
  `app_label` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_add` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_about_bottom`
--

CREATE TABLE `shifting_about_bottom` (
  `id` bigint(20) NOT NULL,
  `titles` varchar(31) DEFAULT NULL,
  `values` varchar(10) DEFAULT NULL,
  `icone` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_about_bottom`
--

INSERT INTO `shifting_about_bottom` (`id`, `titles`, `values`, `icone`) VALUES
(1, 'Expert Member', '99', 'fas fa-users'),
(2, 'Complete Deliveries', '564', 'fas fa-truck'),
(3, 'Happy Clients', '780', 'fas fa-journal-whills'),
(4, 'Awards Winning', '80', 'fas fa-award');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_about_bottomc`
--

CREATE TABLE `shifting_about_bottomc` (
  `id` bigint(20) NOT NULL,
  `titles` varchar(31) DEFAULT NULL,
  `values` varchar(10) DEFAULT NULL,
  `icone` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_about_brand`
--

CREATE TABLE `shifting_about_brand` (
  `id` bigint(20) NOT NULL,
  `slider_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_about_brand`
--

INSERT INTO `shifting_about_brand` (`id`, `slider_image`) VALUES
(1, 'slid1.jpg'),
(2, 'slid2.jpg'),
(3, 'slid3.jpg'),
(4, 'slid4.jpg'),
(5, 'slid5.jpg'),
(6, 'slid6.jpg'),
(7, 'slid3.jpeg'),
(8, 'slid5.png');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_about_feature`
--

CREATE TABLE `shifting_about_feature` (
  `id` bigint(20) NOT NULL,
  `feature_title` varchar(31) DEFAULT NULL,
  `feature_details` varchar(127) DEFAULT NULL,
  `feature_icone` varchar(31) NOT NULL,
  `progress_title` varchar(31) DEFAULT NULL,
  `values` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_about_feature`
--

INSERT INTO `shifting_about_feature` (`id`, `feature_title`, `feature_details`, `feature_icone`, `progress_title`, `values`) VALUES
(1, 'Safety & Security', 'Ensuring safety with robust security measures for peace of mind.', 'cmt-num ti-info', 'Management', '96'),
(2, 'Transport Reputation', 'Elevating transport reputation with reliability, efficiency, and customer-centric solutions.', 'cmt-num ti-info', 'Customer Support', '99'),
(3, 'Powerfull Services', 'Empowering excellence through robust services, setting benchmarks in the industry.', 'cmt-num ti-info', 'Transport', '95'),
(4, 'Safety & Security', 'Ensuring safety with robust security measures for peace of mind.', 'cmt-num ti-info', 'Safety & Security', '98');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_about_us`
--

CREATE TABLE `shifting_about_us` (
  `id` bigint(20) NOT NULL,
  `about_title` varchar(31) DEFAULT NULL,
  `about_details` longtext DEFAULT NULL,
  `about_details2` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `our_vision` longtext DEFAULT NULL,
  `our_mission` longtext DEFAULT NULL,
  `shifting_expriance_title` varchar(63) DEFAULT NULL,
  `expriance_details` varchar(510) DEFAULT NULL,
  `site_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_about_us`
--

INSERT INTO `shifting_about_us` (`id`, `about_title`, `about_details`, `about_details2`, `image`, `our_vision`, `our_mission`, `shifting_expriance_title`, `expriance_details`, `site_image`) VALUES
(1, 'Check Out What We Do!', 'A moving company named \"shiftingbd\" was established to provide moving services to customers in Goragora, Bangladesh, with a vision to modernize the global packing and shifting services. It was founded in 2010. Initially, it wasn\'t a fully-fledged company; it was just the beginning of a dream. The seed was sown, and then a tree was nurtured. As time passed, it matured for 11 years. Over the course of 5 years, it evolved into a full-fledged packing and moving service provider. Packing and shifting are now well-established and suitable options for youth across Bangladesh. Today, people can access all relocation services from the comfort of their homes.', 'In the current scenario, a lot of effort, patience, and research are required. The organization, which faced delays multiple times, rekindled its dream and embarked on a new journey. They once saw the light of hope, the face of success, and never looked back. Their customers have trusted them, and now their customers are their path.', 'single-img-five.jpg', 'The \"shiftingbd\" company\'s vision, as described in the text, is to modernize and provide high-quality packing and shifting services to customers in Goragora, Bangladesh, and beyond. They started with a dream and evolved into a reliable and established service provider over the years. Their commitment to customer satisfaction and their ability to adapt and overcome challenges are key elements of their vision and mission.', 'The mission of \"shiftingbd\" is to provide efficient and reliable packing and shifting services to customers in Goragora, Bangladesh, and across the region. They aim to modernize and streamline the moving process, offering convenience and quality to their customers. Their commitment is to continually adapt and overcome challenges, ensuring customer satisfaction and making relocation a hassle-free experience.', 'Our Transport Has 5+ Year Experience', 'At our AutoService garage, we fully appreciate how difficult it is for people to find reliable and trustworthy garages where ervice epair their to our customers that we are different!', 'col-bgimage-4_LDyxxZ3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_blogs`
--

CREATE TABLE `shifting_blogs` (
  `id` bigint(20) NOT NULL,
  `title` varchar(127) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `descriptions` longtext DEFAULT NULL,
  `link_types` varchar(31) DEFAULT NULL,
  `singal_blog_details` longtext DEFAULT NULL,
  `singal_blog_image1` varchar(100) DEFAULT NULL,
  `singal_blog_image2` varchar(100) DEFAULT NULL,
  `singal_blog_image3` varchar(100) DEFAULT NULL,
  `qoute` varchar(250) DEFAULT NULL,
  `person_name` varchar(31) DEFAULT NULL,
  `singal_blog_details2` longtext DEFAULT NULL,
  `singal_blog_title` varchar(60) DEFAULT NULL,
  `singal_blog_image4` varchar(100) DEFAULT NULL,
  `singal_blog_details3` longtext DEFAULT NULL,
  `singal_blog_title2` varchar(60) DEFAULT NULL,
  `singal_blog_details4` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_blogs`
--

INSERT INTO `shifting_blogs` (`id`, `title`, `date`, `picture`, `descriptions`, `link_types`, `singal_blog_details`, `singal_blog_image1`, `singal_blog_image2`, `singal_blog_image3`, `qoute`, `person_name`, `singal_blog_details2`, `singal_blog_title`, `singal_blog_image4`, `singal_blog_details3`, `singal_blog_title2`, `singal_blog_details4`) VALUES
(1, 'Importers Achieve Cost Savings Through The First Sale Transport Rule!', '2024-03-05', 'blog-two-750_x_500_3.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop.', 'Personal', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.', 'blog-one-740x420.jpg', 'blog-one-780x520.jpg', 'blog-six-720x520.jpg', 'Equidem impedit officiis quo te. Illud partem sententiae mel eu, euripidis Urbanitas et sit. Mediocrem reprimique an vim, venia', 'Richard Muldoone', 'Seurus ornarMisl imperdiet auctor. DoPlacerat, sem mi suscipit mi, at varius enim sem at sem. Fusce tempus ex nibh, eget vulpuAenean vel consequat risus.Proin viverra auris id enim ie tincidunt. nisi at nisl imperdiet auctor. Donec ornare,ex nibh, eget vulputate ligula ornartin Misl impMisl imperdiet auctor. DoPlacerat, sem mi suscipit mi, at varius enim sem at sem. Fusce tempus ex nibh, eget vulpuAenean vel consequat rierdiet auctor. DoPlacerat, sem mi suscipit mi, at varius enim sem at sem. Fusce tempus', 'Beneficial Study Strategies', 'blog-two-750_x_500_1.jpg', 'Proin viverra nisi at nisl imperdiet donor auctnec Ornare, estsed tincidunare tincidunt. loream risutincidat, senibeget.t Quisque aliquet nibh sit amet lectus auctor. Nulla at metus ultricies, placerat augue sed. Curabitur mollis ex vestibulum, ullamcorper. Quisque aliquet nibh sit amet lectus aucto.', 'Why Integrate Side Projects?', 'Suscipit mi, at varius enim sem at sem. Fuce tempus ex nibh, eget vlputate lgula ornare eget. Nunc facilisis erat at Donec ornare, est sed tincidunt placerat, sem mi suscipit mi, at varius enim Mauris ienim id purus ornare tincidunt. Aenean vel consequat riss. Proin viverra nisi at nisl imperdiet auctor. Donec ornare, esed tincidunt placerat sem mi suscipit mi, at varius enim sem at sem. Fuce tempus ex nibh, eget vlputate lgula ornare eget. Nunc facilisis erat at ligula blandit tempor. maecenas');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_blog_popular_tags`
--

CREATE TABLE `shifting_blog_popular_tags` (
  `id` bigint(20) NOT NULL,
  `popular_tags_title` varchar(127) DEFAULT NULL,
  `categories_title` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_blog_popular_tags`
--

INSERT INTO `shifting_blog_popular_tags` (`id`, `popular_tags_title`, `categories_title`) VALUES
(1, 'Design', 'Commercial Vehicles'),
(2, 'Transport', 'Warehousing'),
(3, 'Cargo', 'Ocean Freight'),
(4, 'Freight', 'Packaging Options'),
(5, 'Logistic', 'Road Freight'),
(6, 'Truck', 'Default Title'),
(7, 'Transport Development', 'Default Title');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_bookingcommercial`
--

CREATE TABLE `shifting_bookingcommercial` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `commercial_details` longtext NOT NULL,
  `address` longtext NOT NULL,
  `booking_date_time` datetime(6) NOT NULL,
  `shifting_date_time` datetime(6) NOT NULL,
  `booking_details` longtext NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_bookinghome`
--

CREATE TABLE `shifting_bookinghome` (
  `id` bigint(20) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `your_name` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email_id` varchar(254) DEFAULT NULL,
  `address` longtext NOT NULL,
  `booking_datetime` datetime(6) NOT NULL,
  `shifting_datetime` datetime(6) NOT NULL,
  `booking_details` longtext NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_bookinghouse`
--

CREATE TABLE `shifting_bookinghouse` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `acs_ton_items` varchar(255) NOT NULL,
  `furniture_items` varchar(255) NOT NULL,
  `glass_items` varchar(255) NOT NULL,
  `melamine_items` varchar(255) NOT NULL,
  `mattress_items` varchar(255) NOT NULL,
  `others_items` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `booking_date_time` datetime(6) NOT NULL,
  `shifting_date_time` datetime(6) NOT NULL,
  `booking_details` longtext NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_bookingoffice`
--

CREATE TABLE `shifting_bookingoffice` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `acs_ton_items` varchar(255) NOT NULL,
  `chair_tables_items` varchar(255) NOT NULL,
  `computer_items` varchar(255) NOT NULL,
  `monitor_items` varchar(255) NOT NULL,
  `glass_items` varchar(255) NOT NULL,
  `others_items` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `booking_date_time` datetime(6) NOT NULL,
  `shifting_date_time` datetime(6) NOT NULL,
  `booking_details` longtext NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_booking_labour`
--

CREATE TABLE `shifting_booking_labour` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `worker_type` varchar(255) NOT NULL,
  `working_time` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `booking_datetime` datetime(6) NOT NULL,
  `working_datetime` datetime(6) NOT NULL,
  `booking_details` longtext NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_booking_tec`
--

CREATE TABLE `shifting_booking_tec` (
  `id` bigint(20) NOT NULL,
  `your_name` varchar(255) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `technician_type` varchar(255) DEFAULT NULL,
  `address` longtext NOT NULL,
  `booking_date_time` datetime(6) NOT NULL,
  `working_date_time` datetime(6) NOT NULL,
  `booking_details` longtext NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_branch_barisal`
--

CREATE TABLE `shifting_branch_barisal` (
  `id` bigint(20) NOT NULL,
  `office_name` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone_number1` varchar(25) DEFAULT NULL,
  `phone_number2` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_branch_chittagong`
--

CREATE TABLE `shifting_branch_chittagong` (
  `id` bigint(20) NOT NULL,
  `office_name` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone_number1` varchar(25) DEFAULT NULL,
  `phone_number2` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_branch_chittagong_city`
--

CREATE TABLE `shifting_branch_chittagong_city` (
  `id` bigint(20) NOT NULL,
  `office_name` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone_number1` varchar(25) DEFAULT NULL,
  `phone_number2` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_branch_dhaka`
--

CREATE TABLE `shifting_branch_dhaka` (
  `id` bigint(20) NOT NULL,
  `office_name` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone_number1` varchar(25) DEFAULT NULL,
  `phone_number2` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_branch_dhaka_city`
--

CREATE TABLE `shifting_branch_dhaka_city` (
  `id` bigint(20) NOT NULL,
  `office_name` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone_number1` varchar(25) DEFAULT NULL,
  `phone_number2` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_branch_khulna`
--

CREATE TABLE `shifting_branch_khulna` (
  `id` bigint(20) NOT NULL,
  `office_name` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone_number1` varchar(25) DEFAULT NULL,
  `phone_number2` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_branch_mymensingh`
--

CREATE TABLE `shifting_branch_mymensingh` (
  `id` bigint(20) NOT NULL,
  `office_name` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone_number1` varchar(25) DEFAULT NULL,
  `phone_number2` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_branch_rajshahi`
--

CREATE TABLE `shifting_branch_rajshahi` (
  `id` bigint(20) NOT NULL,
  `office_name` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone_number1` varchar(25) DEFAULT NULL,
  `phone_number2` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_branch_rangpur`
--

CREATE TABLE `shifting_branch_rangpur` (
  `id` bigint(20) NOT NULL,
  `office_name` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone_number1` varchar(25) DEFAULT NULL,
  `phone_number2` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_branch_sylhet`
--

CREATE TABLE `shifting_branch_sylhet` (
  `id` bigint(20) NOT NULL,
  `office_name` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `phone_number1` varchar(25) DEFAULT NULL,
  `phone_number2` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_commentblog`
--

CREATE TABLE `shifting_commentblog` (
  `id` bigint(20) NOT NULL,
  `comment_text` longtext NOT NULL,
  `author_name` varchar(100) NOT NULL,
  `author_email` varchar(254) NOT NULL,
  `website` varchar(200) NOT NULL,
  `created` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `blog_title_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_commentblog`
--

INSERT INTO `shifting_commentblog` (`id`, `comment_text`, `author_name`, `author_email`, `website`, `created`, `active`, `blog_title_id`) VALUES
(1, 'Suscipit mi, at varius enim sem at sem. Fuce tempus ex nibh, eget vlputate lgula ornare eget. Nunc facilisis erat at Donec ornare, est sed tincidunt placerat, sem mi suscipit mi, at varius enim Mauris ienim id purus ornare tincidunt.', 'Tahsin', 'jam@gmail.com', 'http://www.xyz.com', '2024-03-30 06:47:24.536958', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shifting_contact_address`
--

CREATE TABLE `shifting_contact_address` (
  `id` bigint(20) NOT NULL,
  `primary_phone_no` varchar(20) DEFAULT NULL,
  `phone_no` varchar(20) NOT NULL,
  `primary_email` varchar(62) DEFAULT NULL,
  `email` varchar(62) NOT NULL,
  `address` longtext DEFAULT NULL,
  `office_time` varchar(126) DEFAULT NULL,
  `holiday` varchar(126) DEFAULT NULL,
  `form_title` varchar(255) DEFAULT NULL,
  `last_updated` datetime(6) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `top_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_contact_address`
--

INSERT INTO `shifting_contact_address` (`id`, `primary_phone_no`, `phone_no`, `primary_email`, `email`, `address`, `office_time`, `holiday`, `form_title`, `last_updated`, `logo`, `top_image`) VALUES
(1, '0 1686-570172', '0 1819-394566', 'info@shiftingbd.com', 'shiftingbdoffice@gmail.com', 'Green Tower, 15-DIT Road, East Rampura, Dhaka-1229', 'Mon - Satday: 9.00am to 6.00pm', 'Friday: Holiday', 'Contact ShiftingBD effortlessly by giving us a call or conveniently filling out the form provided.', '2024-03-30 05:30:58.925327', 'Logo.png', 'single-img-ten720x_478.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_contact_us`
--

CREATE TABLE `shifting_contact_us` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `subject` varchar(63) DEFAULT NULL,
  `messages` longtext DEFAULT NULL,
  `date_time` datetime(6) NOT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_couriers`
--

CREATE TABLE `shifting_couriers` (
  `id` bigint(20) NOT NULL,
  `title` varchar(127) DEFAULT NULL,
  `top_image` varchar(100) DEFAULT NULL,
  `site_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_couriers`
--

INSERT INTO `shifting_couriers` (`id`, `title`, `top_image`, `site_image`) VALUES
(1, 'WE PROVIDE A WIDE RANGE OF SERVICES :', 'rcourier-team-small555x_370.png', 'hou555x_555.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_couriers_service`
--

CREATE TABLE `shifting_couriers_service` (
  `id` bigint(20) NOT NULL,
  `service_title` varchar(255) NOT NULL,
  `cost_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_couriers_service`
--

INSERT INTO `shifting_couriers_service` (`id`, `service_title`, `cost_title`) VALUES
(1, 'Door to Door Courier/Parcel Service', '1% Cash Handling & Risk Management Charge will be added.'),
(2, 'Same Day Delivery services within Dhaka', 'Price may vary due to parcel size.'),
(3, 'All types of parcel booking', 'All charges are VAT & Tax excluded.'),
(4, 'All Business product condition booking', 'Unavoidable circumstances may change in time of delivery.'),
(5, 'All Business product condition booking', ''),
(6, 'All vehicle have tracking devices linked to our dispatch center via GPRS.', ''),
(7, 'Pick up services.', ''),
(8, 'Specification of our services.', '');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_covertruckdetails`
--

CREATE TABLE `shifting_covertruckdetails` (
  `id` bigint(20) NOT NULL,
  `truck_name` varchar(127) DEFAULT NULL,
  `truck_title` varchar(510) DEFAULT NULL,
  `descriptions` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `fixed_amount` varchar(127) DEFAULT NULL,
  `per_km_amount` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_covertruckdetails`
--

INSERT INTO `shifting_covertruckdetails` (`id`, `truck_name`, `truck_title`, `descriptions`, `image`, `fixed_amount`, `per_km_amount`) VALUES
(1, '9 Feet 1.5 Ton (Open)', 'Tata ACE EX2, Ashok Leyland dost', 'Small quantities of goods, electronics, hardware accessories, furniture, cartoons, garment products, cosmetics, particle hardboards, chemicals.', 'LPT-1615-52-03_home_thumb_AiRRMTt.png', '2000', '200'),
(2, '12 Feet 2 Ton (Open)', 'Toyota Townace, Toyota Dyna, Mahindra Big Bolero', 'Medium-sized products, electronics, hardware, furniture, cartoons, garments, cosmetics, partical hardboards.', 'download_1.jpeg_copy_bAaI3VO.png', '3000', '200');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_homevideo`
--

CREATE TABLE `shifting_homevideo` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `video_url` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_homevideo`
--

INSERT INTO `shifting_homevideo` (`id`, `title`, `video_url`) VALUES
(1, 'fg', 'get_default_video_path/Shifting_bd_Service_HyPjT3l.mp4'),
(2, 'd', 'get_default_video_path/Shifting_bd_Service_2_Z6TN1A4.mp4'),
(3, 'sa', 'get_default_video_path/WhatsApp_Video_2024-02-18_at_10.48.24_PM_PBErGpV.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_home_slider`
--

CREATE TABLE `shifting_home_slider` (
  `id` bigint(20) NOT NULL,
  `title` varchar(63) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_home_slider`
--

INSERT INTO `shifting_home_slider` (`id`, `title`, `image`) VALUES
(1, 'dd', 'Home_page_slider-3_XibycAt.jpg'),
(2, 'h', 'Home_page_slider-1_hTylEfH.jpg'),
(3, 'h', 'Home_page_slider-2.jpg'),
(4, 'h', 'Home_page_slider-4.jpg'),
(5, 'hh', 'Home_page_slider-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_labours`
--

CREATE TABLE `shifting_labours` (
  `id` bigint(20) NOT NULL,
  `title` varchar(127) DEFAULT NULL,
  `sub_title` varchar(127) DEFAULT NULL,
  `descriptions` longtext DEFAULT NULL,
  `descriptions2` longtext DEFAULT NULL,
  `descriptions3` longtext DEFAULT NULL,
  `site_title` varchar(127) DEFAULT NULL,
  `site_details` varchar(510) DEFAULT NULL,
  `category_title_id` bigint(20) DEFAULT NULL,
  `main_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_labours`
--

INSERT INTO `shifting_labours` (`id`, `title`, `sub_title`, `descriptions`, `descriptions2`, `descriptions3`, `site_title`, `site_details`, `category_title_id`, `main_image`) VALUES
(1, 'Heavy Weight Worker', 'Introducing our Heavy Weight Worker service, designed to provide.', 'Introducing Heavy Weight Worker service, your ultimate solution for all heavy-duty tasks. Whether you need assistance with moving furniture, loading and unloading goods, or any other physically demanding task, our team of skilled professionals is here to help. With their expertise and strength, they will ensure that your heavy items are handled with care and precision.', 'Our Heavy Weight Worker service is designed to make your life easier and save you time and effort. No need to strain yourself or risk injury when you can rely on our reliable and efficient workers. They are equipped with the necessary tools and equipment to tackle any heavy-duty job effectively.', 'Introducing our Heavy Weight Worker service, designed to meet all your heavy lifting needs. We understand that tackling heavy loads can be a challenge, which is why we offer a team of skilled professionals who are well-equipped to handle even the toughest jobs. Our Heavy Weight Workers are trained to safely move and transport bulky items, ensuring that your belongings are handled with care and precision.', 'Emergency alert instantly.', 'As an expert writer fluent in various Labor, can you booking your worker.', 1, 'col-bgimage-4.jpg'),
(2, 'Working Agricultural Worker', 'As an expert writer fluent in various domains, I can help you with your Agricultural Worker service needs.', 'Shiftingbd is a platform that connects agricultural workers with those in need of their services. Our mission is to streamline the process of finding and hiring agricultural workers, making it easier for both employers and workers to connect. With our user-friendly interface and extensive database of skilled workers, we ensure that employers can quickly find the right candidate for their needs.', 'This not only helps future employers make informed decisions but also encourages workers to maintain high standards of professionalism and efficiency. So whether you\'re a farmer, a rancher, or someone in need of agricultural assistance, Shiftingbd is your go-to platform for connecting with reliable and skilled agricultural workers.', 'As an agricultural worker service, shiftingbd aims to connect farmers with experienced laborers to ensure efficient and productive farming practices.', 'Emergency alert instantly.', 'As an expert writer fluent in various Labor, can you booking your worker.', 2, '2._Truck_WsEVZy2.jpg'),
(3, 'Construction Worker', 'If you\'re in need of reliable Construction Worker services, look no further than shiftingbd.', 'Are you in need of a dependable construction worker service? Look no further than ShiftingBD! Our team of skilled workers is dedicated to providing top-notch construction services for all your needs. Whether you\'re looking to renovate your home, build a new structure, or simply need some repairs done, our experienced professionals have got you covered. With years of experience in the industry, we understand the importance of quality work and timely delivery.', 'We pride ourselves on our attention to detail and commitment to customer satisfaction. From start to finish, we will work closely with you to ensure that your project is completed to perfection.', 'No matter the size or complexity of the job, our construction worker service is equipped to handle it all. Trust ShiftingBD for all your construction needs and experience the difference of working with true professionals.', 'Emergency alert instantly.', 'As an expert writer fluent in various Labor, can you booking your worker.', 3, '5._Labour_1_JdbEUwf.jpg'),
(4, 'Cleaner Worker', 'By shiftingbd ensures that your space is immaculately clean and free from any dirt or clutter.', 'At shiftingbd, we take pride in providing top-notch cleaning services that go beyond the ordinary. Our team of dedicated cleaners is committed to creating a spotless and hygienic environment for your home or office. With our meticulous attention to detail, we ensure that every nook and cranny is thoroughly cleaned, leaving no trace of dirt or dust behind. Our workers are skilled professionals who are trained to handle a wide range of cleaning tasks, from basic tidying up to deep cleaning. They use only the best quality cleaning products and equipment to deliver exceptional results.', 'Whether you need a one-time cleaning service or regular maintenance, we have got you covered. Our flexible scheduling options allow you to choose a time that is convenient for you, ensuring minimal disruption to your daily routine.', 'When you choose shiftingbd, you can expect professionalism, reliability, and outstanding customer service. We believe in building long-term relationships with our clients by consistently exceeding their expectations. Our goal is not just to provide a clean space but also to create an environment that promotes health and well-being.', 'Emergency alert instantly.', 'As an expert writer fluent in various Labor, can you booking your worker.', 4, '2._Truck_HGkZery.jpg'),
(5, 'Load / Unload Worker', 'Looking for a hassle-free way to load and unload worker services? Look no further than shiftingbd!', 'At shiftingbd, we understand the importance of a reliable and efficient Load/Unload Worker service. Our team of skilled workers is trained to handle all your loading and unloading needs with utmost care and professionalism. Whether you are moving to a new home or office, our workers will ensure that your belongings are handled with the utmost care throughout the entire process.', 'We take pride in providing our customers with top-notch service, ensuring that they have a stress-free experience during their move. Our Load/Unload Worker service is not just about physical labor, but also about the expertise and knowledge required to safely handle different types of items. From heavy furniture to delicate antiques, our workers have the skills and experience to load and unload your belongings without any damage or mishaps.', 'With shiftingbd, you can trust that your items are in safe hands, as we strive to provide our customers with a seamless moving experience. So why worry about the daunting task of loading and unloading? Leave it to shiftingbd and let our Load/Unload Worker service take care of all your moving needs.', 'Emergency alert instantly.', 'As an expert writer fluent in various Labor, can you booking your worker.', 5, '2._Truck_UdTtyFM.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_labours_type`
--

CREATE TABLE `shifting_labours_type` (
  `id` bigint(20) NOT NULL,
  `category_title` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_labours_type`
--

INSERT INTO `shifting_labours_type` (`id`, `category_title`) VALUES
(1, 'Heavy Weight Worker'),
(2, 'Working Agricultural Worker'),
(3, 'Construction Worker'),
(4, 'Cleaner Worker'),
(5, 'Load/Unload Worker');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_labour_demand`
--

CREATE TABLE `shifting_labour_demand` (
  `id` bigint(20) NOT NULL,
  `Labour_Type` varchar(127) DEFAULT NULL,
  `inside_dhaka` varchar(127) DEFAULT NULL,
  `outside_dhaka` varchar(127) DEFAULT NULL,
  `onside_outside_dhaka` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_largecovertruckdetails`
--

CREATE TABLE `shifting_largecovertruckdetails` (
  `id` bigint(20) NOT NULL,
  `truck_name` varchar(127) DEFAULT NULL,
  `truck_title` varchar(510) DEFAULT NULL,
  `descriptions` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `fixed_amount` varchar(127) DEFAULT NULL,
  `per_km_amount` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_largecovertruckdetails`
--

INSERT INTO `shifting_largecovertruckdetails` (`id`, `truck_name`, `truck_title`, `descriptions`, `image`, `fixed_amount`, `per_km_amount`) VALUES
(1, '9 Feet 1.5 Ton (Open)', 'Tata ACE EX2, Ashok Leyland dost', 'Small quantities of goods, electronics, hardware accessories, furniture, cartoons, garment products, cosmetics, particle hardboards, chemicals.', 'download_1.jpeg_copy.png', '3000', '200'),
(2, '12 Feet 2 Ton (Open)', 'Tata ACE EX2, Ashok Leyland dost', 'Small quantities of goods, electronics, hardware accessories, furniture, cartoons, garment products, cosmetics, particle hardboards, chemicals.', 'sds.png', '2000', '200');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_largtruckdetails`
--

CREATE TABLE `shifting_largtruckdetails` (
  `id` bigint(20) NOT NULL,
  `truck_name` varchar(127) DEFAULT NULL,
  `truck_title` varchar(510) DEFAULT NULL,
  `descriptions` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `fixed_amount` varchar(127) DEFAULT NULL,
  `per_km_amount` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_largtruckdetails`
--

INSERT INTO `shifting_largtruckdetails` (`id`, `truck_name`, `truck_title`, `descriptions`, `image`, `fixed_amount`, `per_km_amount`) VALUES
(1, '7 Feet 1 Ton (Open)', 'Tata ACE EX2, Ashok Leyland dost', 'Small quantities of goods, electronics, hardware accessories, furniture, cartoons, garment products, cosmetics, particle hardboards, vegetables, fish-meat, chemicals.', 'a0322109aef56494ea38f5513f574cde_c6uaOkD.jpg', '1500', '200'),
(2, '9 Feet 1.5 Ton (Open)', 'Toyota Townace, Toyota Dyna, Mahindra Big Bolero', 'Small quantities of goods, electronics, hardware accessories, furniture, cartoons, garment products, cosmetics, particle hardboards, vegetables, fish-meat, chemicals.', '20230703_162030.jpg', '2000', '200'),
(3, '12 Feet 2 Ton (Open)', 'Tata ACE EX2, Ashok Leyland dost', 'Medium-sized products, electronics, hardware, furniture, cartoons, garments, cosmetics, partical hardboards.', 'a0322109aef56494ea38f5513f574cde.jpg', '3000', '200'),
(4, '12 Feet 2 Ton (Open)', 'Tata ACE EX2, Ashok Leyland dost', 'Medium-sized products, electronics, hardware, furniture, cartoons, garments, cosmetics, partical hardboards.', '01.png', '3000', '200');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_md`
--

CREATE TABLE `shifting_md` (
  `id` bigint(20) NOT NULL,
  `designations` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `messages` longtext DEFAULT NULL,
  `facebook_link` varchar(63) NOT NULL,
  `instagram_link` varchar(63) NOT NULL,
  `google_link` varchar(63) NOT NULL,
  `twitter_link` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_md`
--

INSERT INTO `shifting_md` (`id`, `designations`, `name`, `picture`, `messages`, `facebook_link`, `instagram_link`, `google_link`, `twitter_link`) VALUES
(1, 'Managing Director', 'MD. Masum', 'WhatsApp_Image_2024-02-22_at_3.31.33_PM.jpeg', 'Warm greetings from ShiftingBD! Welcome to our revamped website. The refreshed look symbolizes our commitment to continuous improvement in a dynamic world where change is not just necessary for survival but also for excelling, a principle we uphold across all aspects of our operations. In ShiftingBD, our Managing Director (MD) is the guiding force behind our pursuit of excellence. The MD emphasizes our commitment to customer satisfaction, professionalism, and innovation. Our team strives to surpass expectations, embracing transparency, integrity, and a customer-centric approach in all our initiatives. We anticipate a forthcoming discussion about your business. Our commitment lies in meeting your requests with enthusiasm, passion, and innovative solutions that consistently yield exceptional results, giving our customers a competitive edge. Your opinions are invaluable; over two decades, your trust has sustained our position as a premier logistics solution provider, and for this, we express our gratitude.', '', '', '', ''),
(2, 'Chairman Message', 'Write Name', 'port.jpg', 'In ShiftingBD, our CEO\'s message reflects our unwavering commitment to excellence. As the leader, the CEO prioritizes customer satisfaction, professionalism, and innovation. Our dedicated team strives to exceed expectations, embracing transparency, integrity, and a customer-centric approach. ShiftingBD is not just a service provider; we are your trusted partner for relocation, service, and transportation needs. The CEO fosters a culture of continuous improvement, ensuring our dynamic environment adapts to evolving client requirements. Join us on a journey where ShiftingBD sets new benchmarks and redefines service standards in the industry. The CEO extends gratitude for over 40 years of trust, marking us as a leading logistics solution provider. Expect outstanding results and a competitive edge as we look forward to continued success together.', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_mediumcovertruckdetails`
--

CREATE TABLE `shifting_mediumcovertruckdetails` (
  `id` bigint(20) NOT NULL,
  `truck_name` varchar(127) DEFAULT NULL,
  `truck_title` varchar(510) DEFAULT NULL,
  `descriptions` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `fixed_amount` varchar(127) DEFAULT NULL,
  `per_km_amount` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_mediumcovertruckdetails`
--

INSERT INTO `shifting_mediumcovertruckdetails` (`id`, `truck_name`, `truck_title`, `descriptions`, `image`, `fixed_amount`, `per_km_amount`) VALUES
(1, '9 Feet 1.5 Ton (Open)', 'Tata ACE EX2, Ashok Leyland dost', 'Small quantities of goods, electronics, hardware accessories, furniture, cartoons, garment products, cosmetics, particle hardboards, chemicals.', 'LPT-1615-52-03_home_thumb.png', '2000', '200'),
(2, '12 Feet 2 Ton (Open)', 'Tata ACE EX2, Ashok Leyland dost', 'Medium-sized products, electronics, hardware, furniture, cartoons, garments, cosmetics, partical hardboards.', 'sds_KSpQkZR.png', '3000', '200');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_mediumtruckdetails`
--

CREATE TABLE `shifting_mediumtruckdetails` (
  `id` bigint(20) NOT NULL,
  `truck_name` varchar(127) DEFAULT NULL,
  `truck_title` varchar(510) DEFAULT NULL,
  `descriptions` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `fixed_amount` varchar(127) DEFAULT NULL,
  `per_km_amount` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_mediumtruckdetails`
--

INSERT INTO `shifting_mediumtruckdetails` (`id`, `truck_name`, `truck_title`, `descriptions`, `image`, `fixed_amount`, `per_km_amount`) VALUES
(1, '7 Feet 1 Ton (Open)', 'Tata ACE EX2, Ashok Leyland dost', 'Small quantities of goods, electronics, hardware accessories, furniture, cartoons, garment products, cosmetics, particle hardboards, vegetables, fish-meat, chemicals.', '003_home_thumb_3.png', '1500', '200'),
(2, '9 Feet 1.5 Ton (Open)', 'Tata ACE EX2, Ashok Leyland dost', 'Small quantities of goods, electronics, hardware accessories, furniture, cartoons, garment products, cosmetics, particle hardboards, vegetables, fish-meat, chemicals.', 'e0e52994cf75863a4084d11f7a096d32_copy.png', '2000', '200'),
(3, '12 Feet 2 Ton (Open)', 'Tata ACE EX2, Ashok Leyland dost', 'Medium-sized products, electronics, hardware, furniture, cartoons, garments, cosmetics, partical hardboards.', 'm1.png', '3000', '200');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_notice_description`
--

CREATE TABLE `shifting_notice_description` (
  `id` bigint(20) NOT NULL,
  `title` varchar(127) DEFAULT NULL,
  `descriptions` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_notice_description`
--

INSERT INTO `shifting_notice_description` (`id`, `title`, `descriptions`) VALUES
(1, 'Stay Informed, Stay Connected', 'Looking for a reliable and convenient platform to stay updated with the latest notices, announcements, and information? Look no further than shiftingbd.com Notice Board! Our user-friendly online notice board provides a centralized hub for individuals and organizations to share and access important information easily. In this SEO-friendly content writing, we’ll explore the benefits of shiftingbd.com Notice Board and why it’s the go-to platform for staying informed.'),
(2, 'Easy Accessibility and Navigation', 'Our user-friendly interface makes it incredibly easy to access and navigate shiftingbd.com Notice Board. With a few clicks, you can browse through a wide range of notices, sorted into categories for effortless searching. Whether you’re looking for education-related notices, job opportunities, or community events, our intuitive layout ensures a seamless browsing experience.'),
(3, 'Real-Time Updates', 'We understand the importance of real-time information. shiftingbd.com Notice Board ensures that notices are updated promptly, so you always have access to the most current information. Our platform is designed to deliver timely notifications, ensuring that you never miss an important update or deadline.'),
(4, 'Categorized Notices for Easy Exploration', 'To enhance user experience, shiftingbd.com Notice Board categorizes notices into relevant sections. Whether you’re interested in education, jobs, events, or government notices, you can easily navigate to the respective category and find what you’re looking for. This categorization streamlines your search, saving you time and effort.'),
(5, 'Community Engagement', 'shiftingbd.com Notice Board is more than just a platform for sharing information. It’s a vibrant community where individuals and organizations come together. Users have the opportunity to interact, comment, and engage with notices, fostering a sense of community and collaboration. You can ask questions, provide feedback, and connect with like-minded individuals, creating a supportive environment for sharing and accessing information.'),
(6, 'Conclusion', 'In a fast-paced digital world, staying informed is crucial. shiftingbd.com Notice Board provides a user-friendly, accessible, and up-to-date platform for accessing important notices and announcements. Whether you’re a student, a professional, or a community member, our online notice board keeps you connected and informed. Don’t miss out on the latest updates and opportunities – visit shiftingbd.com Notice Board today and experience the convenience of centralized information sharing. Join our community and empower yourself with the knowledge and connections you need to thrive.');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_notice_job_circular`
--

CREATE TABLE `shifting_notice_job_circular` (
  `id` bigint(20) NOT NULL,
  `job_title` varchar(127) DEFAULT NULL,
  `interview_date` varchar(127) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `descriptions` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `interview_address` varchar(250) DEFAULT NULL,
  `interview_date_time` varchar(250) DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_notice_job_circular`
--

INSERT INTO `shifting_notice_job_circular` (`id`, `job_title`, `interview_date`, `date`, `descriptions`, `image`, `address`, `interview_address`, `interview_date_time`, `note`) VALUES
(1, 'Full Stack Developer', '১৪-০৭-২০২৩ শুক্রবারের ইন্টারভিউ নোটিশ', '2024-04-01', 'সেলস্ এক্সিকিউটিভ shiftingbd.com View all jobs of this company Vacancy Not specific Job Context বিক্রয় লক্ষ্যমাত্রা অর্জনের উদ্দেশ্যে উদ্যোমী সৎ ,পরিশ্রমী ও নিষ্ঠাবান বিক্রয় কর্মী হবে। পরিবেশক মনিটরিং এবং উন্নয়ন…', 'house_Shiting-2.jpg', 'গ্রীন টাওয়ার, ১ম তলা, ডিআইটি রোড, পূর্ব রামপুরা, রামপুরা বাজার, ঢাকা।', '৭৮/২৩/২, নুহাশ ভিলা', 'পূর্ব রামপুরা, বউ-বাজার, বিল্লাল হোটেলের বিপরীতে। সাক্ষাৎকারের সময়: 11:00AM-05:00PM, তারিখ: ১৪/0৭/২০২৩ (শুক্রবার)', 'ইন্টারভিউ দিতে আপনারা যখন আসবেন অবশ্যই আপনার প্রয়োজনীয় কাগজপত্র সঙ্গে নিয়ে আসবেন।');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_our_services`
--

CREATE TABLE `shifting_our_services` (
  `id` bigint(20) NOT NULL,
  `title` varchar(127) DEFAULT NULL,
  `descriptions` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_our_services`
--

INSERT INTO `shifting_our_services` (`id`, `title`, `descriptions`, `image`) VALUES
(1, 'Shifting', 'ShiftingBD ensures smooth transitions for your belongings. Our dedicated team offers expert shifting services, managing every detail with precision and care.', '1._Shifting.jpg'),
(2, 'Truck', 'ShiftingBD\'s efficient truck services guarantee swift and secure transportation for your goods. Trust us for prompt deliveries with our reliable fleet and experienced drivers.', '2._Truck.jpg'),
(3, 'Couriar', 'ShiftingBD\'s courier services ensure swift and reliable delivery. Trust our efficient network for timely transportation of your packages and documents.', '3._Curiar_1.JPG'),
(4, 'Security', 'ShiftingBD prioritizes your safety. Our security services offer vigilant protection, ensuring a secure environment for your premises and belongings.', '4._security_1.jpg'),
(5, 'Labour', 'ShiftingBD provides dedicated labor services. Our skilled workforce ensures efficient and reliable support for various tasks, guaranteeing a seamless experience.', '5._Labour_1.jpg'),
(6, 'Technician', 'ShiftingBD\'s skilled technicians deliver expert solutions. From electrical to glass services, trust us for meticulous craftsmanship and reliable outcomes.', '6._tecnician.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_portfolios`
--

CREATE TABLE `shifting_portfolios` (
  `id` bigint(20) NOT NULL,
  `title` varchar(31) DEFAULT NULL,
  `category` varchar(31) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `category_title_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_portfolios`
--

INSERT INTO `shifting_portfolios` (`id`, `title`, `category`, `image`, `category_title_id`) VALUES
(1, 'Labour', 'Import Fundamentals', '01.jpg', 1),
(2, 'Truck', 'Transportation, Supply Manageme', '02.jpg', 2),
(3, 'Courier', 'Carrier, Optimization', '03.jpg', 4),
(4, 'Labor', 'Carrier, Optimization', '05_1.jpg', 3),
(5, 'Technician', 'Import Fundamentals', '06.jpg', 5),
(6, 'hh', 'Import Fundamentals', '01_Sdb1kfb.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shifting_portfolioscategory`
--

CREATE TABLE `shifting_portfolioscategory` (
  `id` bigint(20) NOT NULL,
  `category_title` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_portfolioscategory`
--

INSERT INTO `shifting_portfolioscategory` (`id`, `category_title`) VALUES
(1, 'Shifting'),
(2, 'Truck'),
(3, 'Labour'),
(4, 'Courier'),
(5, 'Technician');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_questions`
--

CREATE TABLE `shifting_questions` (
  `id` bigint(20) NOT NULL,
  `questions` varchar(127) DEFAULT NULL,
  `questions_answer` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_securities`
--

CREATE TABLE `shifting_securities` (
  `id` bigint(20) NOT NULL,
  `title` varchar(127) DEFAULT NULL,
  `sub_title` varchar(127) DEFAULT NULL,
  `top_descriptions` longtext DEFAULT NULL,
  `top_image` varchar(100) DEFAULT NULL,
  `descriptions1` longtext DEFAULT NULL,
  `descriptions2` longtext DEFAULT NULL,
  `site_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_securities`
--

INSERT INTO `shifting_securities` (`id`, `title`, `sub_title`, `top_descriptions`, `top_image`, `descriptions1`, `descriptions2`, `site_image`) VALUES
(1, 'Daily Security', 'As a Daily Security Worker, you are responsible for ensuring the safety and protection of people and property on a daily basis.', 'As a Daily Security Worker, it is crucial to stay vigilant and proactive in ensuring the safety and protection of the premises at all times. By maintaining a constant presence and conducting regular patrols, potential threats can be detected and addressed promptly, creating a secure environment for all.', 'Daily_copy.png', 'Daily Security Worker required at shiftingbd! Are you looking for a reliable and trustworthy security personnel to ensure the safety of your premises? Look no further! Our team of experienced security workers is dedicated to providing top-notch security services to meet your needs. With their extensive training and expertise, they are well-equipped to handle any security situation that may arise.', 'Rest assured that our daily security workers will maintain a high level of vigilance, ensuring the safety and peace of mind for you and your property. Contact us today to hire our daily security workers and experience unmatched security services. That\'s why we are looking for dedicated individuals to join our team as Daily Security Workers. As a Daily Security Worker, you will play a vital role in maintaining the safety and security of our premises.', 'Daily.png'),
(2, 'Monthly Security', 'Introducing our Monthly Security service, providing peace of mind to workers and ensuring a safer workplace environment.', 'As a Monthly Security service worker, your role is crucial in ensuring the safety and well-being of the community. By diligently patrolling assigned areas and promptly responding to any security concerns, you contribute to creating a secure environment for everyone.', 'Monthly_copy.png', 'Our team of dedicated workers is committed to ensuring your safety and peace of mind. With our expert knowledge and state-of-the-art technology, we provide comprehensive protection to safeguard your home or Office or any other business from any potential threats. Trust us to be your reliable partner in maintaining a secure environment for you and your loved ones.', 'With our Monthly Security service, you can have peace of mind knowing that a team of experts is constantly monitoring and safeguarding your business, allowing you to focus on what matters most: running your operations smoothly. Don\'t leave the security of your business up to chance - choose ShiftingBD for reliable and effective monthly security solutions.', 'Monthly_copy_1.png'),
(3, 'House Security', 'By implementing an advanced security solution that includes features like motion sensors, smart locks, and 24/7 monitoring.', 'As a House Security assistance worker,play an essential role in providing the safety and protection of individuals and their residences.', 'House.png', 'House security is of utmost importance in today\'s world. With the increasing number of burglaries and break-ins, it has become essential to take necessary measures to protect our homes. A security service worker can play a vital role in ensuring the safety and well-being of a household. They not only provide round-the-clock surveillance but also offer expert advice on how to enhance the security system. Having a reliable security service worker can give homeowners the peace of mind they need, knowing that', 'As a House Security service worker, you understand the importance of providing reliable and efficient protection for homeowners. In today\'s world, where crime rates are on the rise, having a trustworthy security system is essential.', 'House_copy.png'),
(4, 'Office/Commercial Security', 'In today\'s fast-paced world, office and commercial spaces require a reliable security service to ensure their sefty.', 'When it comes to office and commercial security services, hiring a dedicated worker ensures the safety and protection of your workplace.', 'Office_copy.png', 'In today\'s fast-paced world, office and commercial spaces require a reliable security service to ensure the safety of both employees and assets. From monitoring access to implementing surveillance systems, a dedicated security worker is essential in maintaining a secure environment.', 'As an Office/Commercial Security service worker, you play a crucial role in ensuring the safety and protection of businesses and their employees. With your expertise in surveillance systems, access control, and emergency response protocols, you provide a vital layer of security that gives peace of mind to all who work within these establishments.', 'Office_copy_1.png');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_securitybooking`
--

CREATE TABLE `shifting_securitybooking` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `security_type` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `booking_datetime` datetime(6) NOT NULL,
  `working_datetime` datetime(6) NOT NULL,
  `booking_details` longtext NOT NULL,
  `date_time` datetime(6) NOT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_shiftingc_ommercial`
--

CREATE TABLE `shifting_shiftingc_ommercial` (
  `id` bigint(20) NOT NULL,
  `title` varchar(127) DEFAULT NULL,
  `descriptions` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_shiftingc_ommercial`
--

INSERT INTO `shifting_shiftingc_ommercial` (`id`, `title`, `descriptions`, `image`) VALUES
(1, 'Commercial Shifting', 'Commercial shifting can be a complex and challenging process, requiring careful planning and coordination to ensure a smooth transition for businesses.', 'Commercial_Shifting.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_shifting_house`
--

CREATE TABLE `shifting_shifting_house` (
  `id` bigint(20) NOT NULL,
  `title` varchar(127) DEFAULT NULL,
  `sub_title` varchar(127) DEFAULT NULL,
  `top_descriptions` longtext DEFAULT NULL,
  `descriptions` longtext DEFAULT NULL,
  `descriptions2` varchar(510) DEFAULT NULL,
  `site_image` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_shifting_house`
--

INSERT INTO `shifting_shifting_house` (`id`, `title`, `sub_title`, `top_descriptions`, `descriptions`, `descriptions2`, `site_image`, `image`) VALUES
(1, 'HOUSE SHIFTING SERVICES', 'Are you thinking about changing your residence?\".', 'Our House Shifting Services are designed to make your move as seamless and stress-free as possible. Our team of experienced professionals understands the importance of handling your belongings with care and ensuring they arrive safely at your new location. We offer a range of services, including packing, loading, transportation, and unpacking, to cater to all your moving needs. Whether you\'re moving locally or long-distance, we have the expertise and resources to handle any size move.', 'With our attention to detail and commitment to customer satisfaction, you can trust us to deliver exceptional service every step of the way. Let us take the hassle out of your next move and provide you with a smooth transition to your new home. Looking for reliable and efficient house shifting services? Look no further! At shiftingbd, we are committed to providing top-notch moving solutions for all your relocation needs.', 'Our team of experienced professionals is trained to handle every aspect of your move, ensuring that your belongings are safe and secure throughout the process. From packing and loading to transportation and unpacking, we take care of it all so that you can focus on settling into your new home. With our affordable rates and excellent customer service, you can trust us to make your house shifting experience smooth and hassle-free. Contact shiftingbd today and let us take the stress out of your next move.', 'hou2_zuiWfxF.jpg', 'avatar.svg'),
(2, 'OFFICE SHIFTING SERVICS', 'Look no further than shiftingbd for all your moving needs.', 'Are you planning an office relocation? Look no further than shiftingbd for all your office shifting services needs. Our team of experienced professionals will ensure a smooth and efficient transition to your new workspace. From packing and unpacking to furniture assembly and disassembly, we handle it all with utmost care and precision. With our reliable and affordable services, you can focus on your business while we take care of the logistics.', 'Trust shiftingbd for a hassle-free office move that meets your deadlines and exceeds your expectations.Are you looking for reliable office shifting services? Look no further! At ShiftingBD, we specialize in providing seamless and efficient office relocation solutions.', 'Our team of experienced professionals understands the unique needs of businesses and ensures a smooth transition to your new office location. From packing and transportation to unpacking and setting up, we handle every aspect of your office move with utmost care and precision. Trust ShiftingBD for all your office shifting needs and experience a hassle-free relocation process.', 'hou2_LiE8j51.jpg', 'avatar.svg'),
(3, 'COMMERCIAL SHIFTING', 'Changing the residence is no longer a matter of concern now.', 'Commercial shifting requires careful planning and execution to ensure a smooth transition for businesses. From packing and labeling to transportation and unpacking, every step needs to be meticulously coordinated. Our team of experts understands the unique challenges of commercial shifting and is committed to providing efficient and reliable services.', 'With our extensive network of partners, we can handle commercial shifting projects of any size, whether it\'s relocating an entire office or moving equipment to a new location. Trust us to manage your commercial shifting needs with professionalism and expertise.Commercial shifting can be a complex and time-consuming process. From packing and transporting to unpacking and arranging, there are numerous tasks that need to be completed efficiently.', 'With our professional commercial shifting services, you can trust us to handle every aspect of your move with utmost care and precision. Our team of experienced movers is trained to handle all types of commercial relocations, ensuring that your belongings reach their new destination safely. Whether you are moving offices, warehouses, or retail spaces, we have the expertise and resources to make your commercial shifting experience smooth and hassle-free.', 'hou_VyDVpxC.jpg', 'avatar.svg');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_shifting_houseser`
--

CREATE TABLE `shifting_shifting_houseser` (
  `id` bigint(20) NOT NULL,
  `title` varchar(127) DEFAULT NULL,
  `descriptions` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `top_details` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_shifting_houseser`
--

INSERT INTO `shifting_shifting_houseser` (`id`, `title`, `descriptions`, `image`, `top_details`) VALUES
(1, 'House Shifting', 'Are you planning a house shifting? We understand that moving to a new house can be a daunting task. That\'s why we are here to help you make your house shifting experience smooth and hassle-free.', 'House_Shifting.jpg', 'Introducing our top-notch shifting services, designed to make your relocation experience seamless and stress-free. With our team of skilled professionals, we ensure that all your belongings are safely packed, transported, and delivered to your new destination.');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_shifting_office`
--

CREATE TABLE `shifting_shifting_office` (
  `id` bigint(20) NOT NULL,
  `title` varchar(127) DEFAULT NULL,
  `descriptions` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_shifting_office`
--

INSERT INTO `shifting_shifting_office` (`id`, `title`, `descriptions`, `image`) VALUES
(1, 'Office Shifting', 'Office shifting can be a complex process, requiring careful planning and coordination to ensure a smooth transition for all employees and equipment.', 'Office_Shifting.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_shifting_other_cost`
--

CREATE TABLE `shifting_shifting_other_cost` (
  `id` bigint(20) NOT NULL,
  `item_name` varchar(127) DEFAULT NULL,
  `inside_dhaka` varchar(127) DEFAULT NULL,
  `outside_dhaka` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_shifting_transport_cost`
--

CREATE TABLE `shifting_shifting_transport_cost` (
  `id` bigint(20) NOT NULL,
  `item_name` varchar(127) DEFAULT NULL,
  `inside_dhaka` varchar(127) DEFAULT NULL,
  `outside_dhaka` varchar(127) DEFAULT NULL,
  `per_km_cost` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_subscribe`
--

CREATE TABLE `shifting_subscribe` (
  `id` bigint(20) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `date_time` datetime(6) NOT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_team_members`
--

CREATE TABLE `shifting_team_members` (
  `id` bigint(20) NOT NULL,
  `name` varchar(31) DEFAULT NULL,
  `designation` varchar(31) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `facebook_link` varchar(63) NOT NULL,
  `twitter_link` varchar(63) NOT NULL,
  `instagram_link` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_team_members`
--

INSERT INTO `shifting_team_members` (`id`, `name`, `designation`, `picture`, `facebook_link`, `twitter_link`, `instagram_link`) VALUES
(1, 'Md.Shamsudduha', 'Sr. Advisor', 'WhatsApp_Image_2024-02-12_at_14.02.48_444c093a.jpg', 'Write..', 'Write..', 'Write..'),
(2, 'MD.Mahmudul Hasan', 'Officer Visit & Marketing', 'WhatsApp_Image_2024-02-12_at_14.02.47_7a6eb6fb.jpg', 'Write..', 'Write..', 'Write..'),
(3, 'Arifa Akter', 'Customer support.', 'WhatsApp_Image_2024-02-12_at_14.02.53_1701d947.jpg', 'Write..', 'Write..', 'Write..'),
(4, 'Sanjida Mahmud Tithy', 'Officer Marketing', 'WhatsApp_Image_2024-02-12_at_14.02.46_58d50335.jpg', 'Write..', 'Write..', 'Write..');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_technician`
--

CREATE TABLE `shifting_technician` (
  `id` bigint(20) NOT NULL,
  `title` varchar(127) DEFAULT NULL,
  `sub_title` varchar(127) DEFAULT NULL,
  `descriptions` longtext DEFAULT NULL,
  `top_image` varchar(100) DEFAULT NULL,
  `repair_title` varchar(127) DEFAULT NULL,
  `repair_details` longtext DEFAULT NULL,
  `bottom_image` varchar(100) DEFAULT NULL,
  `bottom_image2` varchar(100) DEFAULT NULL,
  `bootom_title` varchar(127) DEFAULT NULL,
  `bootom_details` longtext DEFAULT NULL,
  `contact_details` varchar(255) DEFAULT NULL,
  `repair_manue1` varchar(127) DEFAULT NULL,
  `repair_manue2` varchar(127) DEFAULT NULL,
  `repair_manue3` varchar(127) DEFAULT NULL,
  `repair_manue4` varchar(127) DEFAULT NULL,
  `repair_manue5` varchar(127) NOT NULL,
  `repair_manue6` varchar(127) NOT NULL,
  `category_title_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_technician`
--

INSERT INTO `shifting_technician` (`id`, `title`, `sub_title`, `descriptions`, `top_image`, `repair_title`, `repair_details`, `bottom_image`, `bottom_image2`, `bootom_title`, `bootom_details`, `contact_details`, `repair_manue1`, `repair_manue2`, `repair_manue3`, `repair_manue4`, `repair_manue5`, `repair_manue6`, `category_title_id`) VALUES
(1, 'FURNITURE TECHNICIAN SERVICE', 'INDOOR AND OUTDOOR ALL SERVICES', 'ShiftingBD proudly offers premier Furniture Technician Services, catering to both indoor and outdoor needs. Our skilled technicians specialize in furniture assembly, repair, and maintenance, ensuring your pieces are expertly handled for longevity and aesthetic appeal. Trust ShiftingBD to bring precision and care to your furniture, enhancing the comfort and style of your living spaces.', '750_x_563.jpg', 'Furniture Setup Services', 'With more than 40 years in the retail industry, Homemakers Furniture is a leader in providing affordable home furnishings to the state of Iowa. ShiftingBD excels in Furniture Technician Services, providing exceptional Furniture Setup Services tailored to meet your needs. Our dedicated team ensures meticulous assembly and arrangement of your furniture, optimizing both functionality and aesthetics. Whether it\'s a new purchase, relocation, or a room makeover, we bring efficiency and expertise to every setup project. Choose ShiftingBD for a seamless and hassle-free experience, transforming your living spaces with precision and care.', 'ER1013895.jpg', 'hh.jpg', 'Always Hire a Professionals', 'When it comes to Furniture Technician Services, ShiftingBD emphasizes the importance of always hiring professionals for your needs. Our skilled technicians bring years of expertise to ensure accurate assembly, repair, and maintenance of your furniture. By entrusting your furniture-related tasks to us, you not only save time and effort but also guarantee the longevity and optimal functionality of your pieces. Choose ShiftingBD for professional service that transforms your space with precision and reliability.', 'When searching for a reliable electrician, call us at +880 1686-570172. We specialize in electrical repairs, indoor and outdoor lighting installations, panel upgrades, and even hot tub wiring!', 'Leather Furniture Repair', 'Wood Furniture Repair', 'Fabric Repair', 'Furniture Restoration', 'General Repairs', 'Buying and Reselling', 1),
(2, 'ELECTRIC TECHNICIAN SERVICE', 'INDOOR AND OUTDOOR ALL SERVICES', 'ShiftingBD specializes in providing comprehensive electric technician services, offering expertise in both indoor and outdoor settings. Our skilled technicians ensure seamless installations, repairs, and maintenance, guaranteeing the efficient functioning of electrical systems. Trust ShiftingBD for reliable solutions that prioritize safety and quality in every electrical service we deliver.', '750_x_563_1.jpg', 'Electrical Repair & Services', 'ShiftingBD is your trusted partner for top-notch Electrical Repair & Services. Our expert technicians are dedicated to ensuring the seamless functioning of your electrical systems, addressing issues promptly and efficiently. From wiring repairs to appliance installations, we prioritize safety and quality, delivering reliable solutions to meet your electrical needs. Count on ShiftingBD for unparalleled expertise in electrical maintenance and repairs, providing peace of mind for a well-functioning and secure environment.', 'IMG_20220226_151037.jpg', '323294276_2392305770922483_7467439208432417626_n.jpg', 'Always Hire a Professionals', 'ShiftingBD understands the critical importance of electrical systems in your home or business. That\'s why we stress the need to always hire professionals for our Electrical Repair & Services. Our team of skilled technicians is dedicated to providing reliable and safe solutions for all your electrical needs. Trust ShiftingBD for professional service that prioritizes the well-being of your electrical infrastructure, ensuring a secure and efficient environment.', 'When searching for a reliable electrician, call us at +8801686570172. We specialize in electrical repairs, indoor and outdoor lighting installations, panel upgrades, and even hot tub wiring!', 'Ceiling Fan Installations', 'Outdoor and Pool Lighting', 'Washer/Dryer & Appliance Lines', 'Outlet Repair and Installation', 'Panel Upgrades', 'AC Installation, Uninstallation', 2),
(3, 'RAPING PACKING TECHNICIAN', 'INDOOR AND OUTDOOR ALL SERVICES', 'ShiftingBD proudly offers comprehensive Raping & Packing Technician Services, covering both indoor and outdoor needs. Our skilled technicians specialize in meticulous wrapping and packing techniques, ensuring the safe and secure transportation of your belongings. Whether for relocation or storage, ShiftingBD delivers professional services to safeguard your possessions with care and precision.', '750_x_563_3.jpg', 'Raping & Packing Services', 'ShiftingBD excels in Raping & Packing Technician Services, offering unparalleled expertise in wrapping and packing solutions. Our skilled technicians ensure the meticulous handling and secure packaging of your belongings for various purposes, including relocation or storage. Trust ShiftingBD for reliable and professional Raping & Packing Services, ensuring the safety and integrity of your items throughout the process.', 'IMG_20220329_154649.jpg', 'IMG_20220302_202027.jpg', 'Always Hire a Professionals', 'ShiftingBD emphasizes the significance of professionalism in our Raping & Packing Technician Services. Always hire our skilled professionals for meticulous wrapping and packing, ensuring the safety and secure transportation of your belongings. Trust ShiftingBD for a dedicated team committed to providing expert services, ensuring a seamless and stress-free experience for all your packing needs.', 'When searching for a reliable electrician, call us at +880 1686-570172. We specialize in electrical repairs, indoor and outdoor lighting installations, panel upgrades, and even hot tub wiring!', 'Residential Packing', 'Storage Packing', 'Commercial Packing', 'Fragile Item Packing', 'Custom Crate Packing', 'Unpacking', 3),
(4, 'AUTO MOBILE TECHNICIAN', 'INDOOR AND OUTDOOR ALL SERVICES', 'ShiftingBD proudly offers comprehensive Auto Mobile Technician services for both indoor and outdoor needs. Our skilled technicians provide expert automotive solutions, ensuring efficient and reliable services to keep your vehicles in optimal condition.', '750_x_563_4.jpg', 'Auto Mobile Services', 'ShiftingBD specializes in Auto Mobile Services, providing a wide range of expert solutions for your vehicles. Our dedicated Auto Mobile Technicians are equipped to handle various automotive needs, from routine maintenance to complex repairs. Whether it\'s engine diagnostics, brake services, or electrical repairs, ShiftingBD ensures top-notch service with a commitment to precision and efficiency. Trust us to keep your vehicles running smoothly on the road.', 'SM1003662_copy.jpg', 'SM640039_copy.jpg', 'Always Hire a Professionals', 'When it comes to Auto Mobile Technician services, ShiftingBD emphasizes the importance of always hiring professionals for your automotive needs. Our skilled and certified technicians bring a wealth of expertise to the table, ensuring precise diagnostics and efficient solutions for your vehicles. Whether it\'s routine maintenance, repairs, or complex diagnostics, ShiftingBD prioritizes professionalism and reliability. Trust us to provide expert Auto Mobile Services, keeping your vehicles in optimal condition for a smooth and safe driving experience.', 'When searching for a reliable electrician, call us at +880 1686-570172. We specialize in electrical repairs, indoor and outdoor lighting installations, panel upgrades, and even hot tub wiring!', 'Battery replacement', 'New tires', 'Exchange bad transmission', 'Air filter change', 'Brake pad and disc repairs', 'Auto body', 4),
(5, 'PLUMBING TECHNICIAN', 'INDOOR AND OUTDOOR ALL SERVICES', 'ShiftingBD proudly offers comprehensive Auto Mobile Technician services for both indoor and outdoor needs. Our skilled technicians provide expert automotive solutions, ensuring efficient and reliable services to keep your vehicles in optimal condition.', '750_x_563_5.jpg', 'Plumbing Services', 'ShiftingBD excels in Plumbing Services, providing expert solutions through our skilled Plumbing Technicians. Whether it\'s addressing leaks, clogs, or installations, our technicians are dedicated to delivering efficient and reliable plumbing services. From routine maintenance to complex repairs, ShiftingBD ensures the highest standards of craftsmanship, ensuring your plumbing system functions optimally. Trust us for comprehensive plumbing solutions, both for indoor and outdoor needs, ensuring a hassle-free and smoothly running plumbing infrastructure.', 'ER930380_copy.jpg', 'ER930337_copy.jpg', 'Always Hire a Professionals', 'ShiftingBD emphasizes the crucial importance of always hiring professionals for our Plumbing Technician services. Our skilled and certified plumbers bring extensive expertise to every project, ensuring precise diagnostics and effective solutions for your plumbing needs. Whether it\'s routine maintenance, pipe repairs, or complex installations, ShiftingBD prioritizes professionalism and reliability. Trust us for Plumbing Services that guarantee the integrity of your plumbing system, providing peace of mind and a smoothly functioning infrastructure.', 'When searching for a reliable electrician, call us at +880 1686-570172. We specialize in electrical repairs, indoor and outdoor lighting installations, panel upgrades, and even hot tub wiring!', 'Gas plumbing services', 'Water heater repair services', 'Drainage service', 'Sewer line services', 'Water supply services', 'Sanitary plumbing service', 5),
(6, 'Printing Technician', 'INDOOR AND OUTDOOR ALL SERVICES', 'ShiftingBD offers versatile Printing Technician services for both indoor and outdoor applications. Our skilled technicians are equipped to handle a wide range of printing needs, ensuring high-quality and professional results for all your printing projects.', '750_x_563_6.jpg', 'Printing Services', 'ShiftingBD takes pride in delivering exceptional Printing Services through our expert Printing Technicians. Whether you require vibrant indoor prints or durable outdoor solutions, our technicians are dedicated to ensuring top-notch quality and precision. From custom designs to large-scale projects, ShiftingBD employs cutting-edge technology to meet diverse printing needs. Trust us to bring your ideas to life with professionalism and attention to detail, creating visually appealing prints for any setting.', 'Untitled-2_copy.jpg', 'slider_copy.jpg', 'Always Hire a Professionals', 'ShiftingBD underscores the significance of always entrusting your printing needs to professionals through our Printing Technician services. Our certified technicians bring a wealth of expertise to guarantee precise and flawless prints for your projects. Whether it\'s indoor materials or outdoor signage, ShiftingBD\'s commitment to professionalism ensures optimal print quality. Rely on us for Printing Services that not only meet but exceed your expectations, delivering results that make a lasting impression.', 'When searching for a reliable electrician, call us at +880 1686-570172. We specialize in electrical repairs, indoor and outdoor lighting installations, panel upgrades, and even hot tub wiring!', 'Laser Printers.', 'LED Printers.', 'Solid Ink Printers.', 'Business Inkjet Printers.', 'Home Inkjet Printers.', 'Multifunction Printers.', 6);

-- --------------------------------------------------------

--
-- Table structure for table `shifting_technician_category`
--

CREATE TABLE `shifting_technician_category` (
  `id` bigint(20) NOT NULL,
  `category_title` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_technician_category`
--

INSERT INTO `shifting_technician_category` (`id`, `category_title`) VALUES
(1, 'Furniture Technician'),
(2, 'Electric Technician'),
(3, 'Raping & Packing Technician'),
(4, 'Auto Mobile Technician'),
(5, 'Plumbing Technician'),
(6, 'Printing Technician');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_technician_chart`
--

CREATE TABLE `shifting_technician_chart` (
  `id` bigint(20) NOT NULL,
  `item_name` varchar(127) DEFAULT NULL,
  `inside_dhaka` varchar(127) DEFAULT NULL,
  `outside_dhaka` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shifting_testimonials`
--

CREATE TABLE `shifting_testimonials` (
  `id` bigint(20) NOT NULL,
  `name` varchar(31) DEFAULT NULL,
  `designation` varchar(31) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `message` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_testimonials`
--

INSERT INTO `shifting_testimonials` (`id`, `name`, `designation`, `picture`, `message`) VALUES
(1, 'Orpo Khan', 'Write..', 'unnamed_1.png', 'Very professional service, A-Z.'),
(2, 'Ahmad Faruk', 'Write', 'Ahmad_Faruque_Aziz_Ornob.jpg', 'At our orthy garages where they can service and rice garage, we fully appreciate how difficult it is for people to fible and arages where they can service and repaeir e are always ke our customers that we are different!'),
(3, 'Abdullah Wasif', 'Business', 'Abdullah_Wasif.jpg', 'A message is a discrete unit of communication intended by the source for consumption by some recipient or group of recipients. A message may be delivered by various means, including courier, telegraphy, carrier pigeon and electronic bus.');

-- --------------------------------------------------------

--
-- Table structure for table `shifting_truck_details`
--

CREATE TABLE `shifting_truck_details` (
  `id` bigint(20) NOT NULL,
  `truck_name` varchar(127) DEFAULT NULL,
  `truck_title` varchar(510) DEFAULT NULL,
  `descriptions` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `fixed_amount` varchar(127) DEFAULT NULL,
  `per_km_amount` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shifting_truck_details`
--

INSERT INTO `shifting_truck_details` (`id`, `truck_name`, `truck_title`, `descriptions`, `image`, `fixed_amount`, `per_km_amount`) VALUES
(1, '7 Feet 1 Ton (Open)', 'Tata ACE EX2, Ashok Leyland dost', 'Small quantities of goods, electronics, hardware accessories, furniture, cartoons, garment products, cosmetics, particle hardboards, vegetables, fish-meat, chemicals.', '03.png', '1500', '200'),
(2, '9 Feet 1.5 Ton (Open)', 'Tata ACE EX2, Ashok Leyland dost', 'Small quantities of goods, electronics, hardware accessories, furniture, cartoons, garment products, cosmetics, particle hardboards, vegetables, fish-meat, chemicals.', '02.png', '2000', '200'),
(3, '12 Feet 2 Ton (Open)', 'Tata ACE EX2, Ashok Leyland dost', 'Medium-sized products, electronics, hardware, furniture, cartoons, garments, cosmetics, partical hardboards.', '01_1.png', '3000', '200');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `dashboard_userdashboardmodule`
--
ALTER TABLE `dashboard_userdashboardmodule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_userdashboardmodule_user_id_97c13132` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `jet_bookmark`
--
ALTER TABLE `jet_bookmark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jet_bookmark_user_id_8efdc332_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `jet_pinnedapplication`
--
ALTER TABLE `jet_pinnedapplication`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jet_pinnedapplication_user_id_7765bcf9_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `shifting_about_bottom`
--
ALTER TABLE `shifting_about_bottom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_about_bottomc`
--
ALTER TABLE `shifting_about_bottomc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_about_brand`
--
ALTER TABLE `shifting_about_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_about_feature`
--
ALTER TABLE `shifting_about_feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_about_us`
--
ALTER TABLE `shifting_about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_blogs`
--
ALTER TABLE `shifting_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_blog_popular_tags`
--
ALTER TABLE `shifting_blog_popular_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_bookingcommercial`
--
ALTER TABLE `shifting_bookingcommercial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_bookinghome`
--
ALTER TABLE `shifting_bookinghome`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_bookinghouse`
--
ALTER TABLE `shifting_bookinghouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_bookingoffice`
--
ALTER TABLE `shifting_bookingoffice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_booking_labour`
--
ALTER TABLE `shifting_booking_labour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_booking_tec`
--
ALTER TABLE `shifting_booking_tec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_branch_barisal`
--
ALTER TABLE `shifting_branch_barisal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number1` (`phone_number1`);

--
-- Indexes for table `shifting_branch_chittagong`
--
ALTER TABLE `shifting_branch_chittagong`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number1` (`phone_number1`);

--
-- Indexes for table `shifting_branch_chittagong_city`
--
ALTER TABLE `shifting_branch_chittagong_city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number1` (`phone_number1`);

--
-- Indexes for table `shifting_branch_dhaka`
--
ALTER TABLE `shifting_branch_dhaka`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number1` (`phone_number1`);

--
-- Indexes for table `shifting_branch_dhaka_city`
--
ALTER TABLE `shifting_branch_dhaka_city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number1` (`phone_number1`);

--
-- Indexes for table `shifting_branch_khulna`
--
ALTER TABLE `shifting_branch_khulna`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number1` (`phone_number1`);

--
-- Indexes for table `shifting_branch_mymensingh`
--
ALTER TABLE `shifting_branch_mymensingh`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number1` (`phone_number1`);

--
-- Indexes for table `shifting_branch_rajshahi`
--
ALTER TABLE `shifting_branch_rajshahi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number1` (`phone_number1`);

--
-- Indexes for table `shifting_branch_rangpur`
--
ALTER TABLE `shifting_branch_rangpur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number1` (`phone_number1`);

--
-- Indexes for table `shifting_branch_sylhet`
--
ALTER TABLE `shifting_branch_sylhet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number1` (`phone_number1`);

--
-- Indexes for table `shifting_commentblog`
--
ALTER TABLE `shifting_commentblog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shifting_commentblog_blog_title_id_157b4024_fk_shifting_blogs_id` (`blog_title_id`);

--
-- Indexes for table `shifting_contact_address`
--
ALTER TABLE `shifting_contact_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_contact_us`
--
ALTER TABLE `shifting_contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_couriers`
--
ALTER TABLE `shifting_couriers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_couriers_service`
--
ALTER TABLE `shifting_couriers_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_covertruckdetails`
--
ALTER TABLE `shifting_covertruckdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_homevideo`
--
ALTER TABLE `shifting_homevideo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_home_slider`
--
ALTER TABLE `shifting_home_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_labours`
--
ALTER TABLE `shifting_labours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shifting_labours_category_title_id_1a447476_fk_shifting_` (`category_title_id`);

--
-- Indexes for table `shifting_labours_type`
--
ALTER TABLE `shifting_labours_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_labour_demand`
--
ALTER TABLE `shifting_labour_demand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_largecovertruckdetails`
--
ALTER TABLE `shifting_largecovertruckdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_largtruckdetails`
--
ALTER TABLE `shifting_largtruckdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_md`
--
ALTER TABLE `shifting_md`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_mediumcovertruckdetails`
--
ALTER TABLE `shifting_mediumcovertruckdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_mediumtruckdetails`
--
ALTER TABLE `shifting_mediumtruckdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_notice_description`
--
ALTER TABLE `shifting_notice_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_notice_job_circular`
--
ALTER TABLE `shifting_notice_job_circular`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_our_services`
--
ALTER TABLE `shifting_our_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_portfolios`
--
ALTER TABLE `shifting_portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shifting_portfolios_category_title_id_e55ae9f6_fk_shifting_` (`category_title_id`);

--
-- Indexes for table `shifting_portfolioscategory`
--
ALTER TABLE `shifting_portfolioscategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_questions`
--
ALTER TABLE `shifting_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_securities`
--
ALTER TABLE `shifting_securities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_securitybooking`
--
ALTER TABLE `shifting_securitybooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_shiftingc_ommercial`
--
ALTER TABLE `shifting_shiftingc_ommercial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_shifting_house`
--
ALTER TABLE `shifting_shifting_house`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_shifting_houseser`
--
ALTER TABLE `shifting_shifting_houseser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_shifting_office`
--
ALTER TABLE `shifting_shifting_office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_shifting_other_cost`
--
ALTER TABLE `shifting_shifting_other_cost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_shifting_transport_cost`
--
ALTER TABLE `shifting_shifting_transport_cost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_subscribe`
--
ALTER TABLE `shifting_subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_team_members`
--
ALTER TABLE `shifting_team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_technician`
--
ALTER TABLE `shifting_technician`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shifting_technician_category_title_id_0c1a95d0_fk_shifting_` (`category_title_id`);

--
-- Indexes for table `shifting_technician_category`
--
ALTER TABLE `shifting_technician_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_technician_chart`
--
ALTER TABLE `shifting_technician_chart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_testimonials`
--
ALTER TABLE `shifting_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifting_truck_details`
--
ALTER TABLE `shifting_truck_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_userdashboardmodule`
--
ALTER TABLE `dashboard_userdashboardmodule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `jet_bookmark`
--
ALTER TABLE `jet_bookmark`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jet_pinnedapplication`
--
ALTER TABLE `jet_pinnedapplication`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_about_bottom`
--
ALTER TABLE `shifting_about_bottom`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shifting_about_bottomc`
--
ALTER TABLE `shifting_about_bottomc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_about_brand`
--
ALTER TABLE `shifting_about_brand`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shifting_about_feature`
--
ALTER TABLE `shifting_about_feature`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shifting_about_us`
--
ALTER TABLE `shifting_about_us`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shifting_blogs`
--
ALTER TABLE `shifting_blogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shifting_blog_popular_tags`
--
ALTER TABLE `shifting_blog_popular_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shifting_bookingcommercial`
--
ALTER TABLE `shifting_bookingcommercial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_bookinghome`
--
ALTER TABLE `shifting_bookinghome`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_bookinghouse`
--
ALTER TABLE `shifting_bookinghouse`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_bookingoffice`
--
ALTER TABLE `shifting_bookingoffice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_booking_labour`
--
ALTER TABLE `shifting_booking_labour`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_booking_tec`
--
ALTER TABLE `shifting_booking_tec`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_branch_barisal`
--
ALTER TABLE `shifting_branch_barisal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_branch_chittagong`
--
ALTER TABLE `shifting_branch_chittagong`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_branch_chittagong_city`
--
ALTER TABLE `shifting_branch_chittagong_city`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_branch_dhaka`
--
ALTER TABLE `shifting_branch_dhaka`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_branch_dhaka_city`
--
ALTER TABLE `shifting_branch_dhaka_city`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_branch_khulna`
--
ALTER TABLE `shifting_branch_khulna`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_branch_mymensingh`
--
ALTER TABLE `shifting_branch_mymensingh`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_branch_rajshahi`
--
ALTER TABLE `shifting_branch_rajshahi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_branch_rangpur`
--
ALTER TABLE `shifting_branch_rangpur`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_branch_sylhet`
--
ALTER TABLE `shifting_branch_sylhet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_commentblog`
--
ALTER TABLE `shifting_commentblog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shifting_contact_address`
--
ALTER TABLE `shifting_contact_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shifting_contact_us`
--
ALTER TABLE `shifting_contact_us`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_couriers`
--
ALTER TABLE `shifting_couriers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shifting_couriers_service`
--
ALTER TABLE `shifting_couriers_service`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shifting_covertruckdetails`
--
ALTER TABLE `shifting_covertruckdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shifting_homevideo`
--
ALTER TABLE `shifting_homevideo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shifting_home_slider`
--
ALTER TABLE `shifting_home_slider`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shifting_labours`
--
ALTER TABLE `shifting_labours`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shifting_labours_type`
--
ALTER TABLE `shifting_labours_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shifting_labour_demand`
--
ALTER TABLE `shifting_labour_demand`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_largecovertruckdetails`
--
ALTER TABLE `shifting_largecovertruckdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shifting_largtruckdetails`
--
ALTER TABLE `shifting_largtruckdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shifting_md`
--
ALTER TABLE `shifting_md`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shifting_mediumcovertruckdetails`
--
ALTER TABLE `shifting_mediumcovertruckdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shifting_mediumtruckdetails`
--
ALTER TABLE `shifting_mediumtruckdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shifting_notice_description`
--
ALTER TABLE `shifting_notice_description`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shifting_notice_job_circular`
--
ALTER TABLE `shifting_notice_job_circular`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shifting_our_services`
--
ALTER TABLE `shifting_our_services`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shifting_portfolios`
--
ALTER TABLE `shifting_portfolios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shifting_portfolioscategory`
--
ALTER TABLE `shifting_portfolioscategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shifting_questions`
--
ALTER TABLE `shifting_questions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_securities`
--
ALTER TABLE `shifting_securities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shifting_securitybooking`
--
ALTER TABLE `shifting_securitybooking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_shiftingc_ommercial`
--
ALTER TABLE `shifting_shiftingc_ommercial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shifting_shifting_house`
--
ALTER TABLE `shifting_shifting_house`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shifting_shifting_houseser`
--
ALTER TABLE `shifting_shifting_houseser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shifting_shifting_office`
--
ALTER TABLE `shifting_shifting_office`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shifting_shifting_other_cost`
--
ALTER TABLE `shifting_shifting_other_cost`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_shifting_transport_cost`
--
ALTER TABLE `shifting_shifting_transport_cost`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_subscribe`
--
ALTER TABLE `shifting_subscribe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_team_members`
--
ALTER TABLE `shifting_team_members`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shifting_technician`
--
ALTER TABLE `shifting_technician`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shifting_technician_category`
--
ALTER TABLE `shifting_technician_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shifting_technician_chart`
--
ALTER TABLE `shifting_technician_chart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifting_testimonials`
--
ALTER TABLE `shifting_testimonials`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shifting_truck_details`
--
ALTER TABLE `shifting_truck_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Constraints for table `dashboard_userdashboardmodule`
--
ALTER TABLE `dashboard_userdashboardmodule`
  ADD CONSTRAINT `dashboard_userdashboardmodule_user_id_97c13132_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `jet_bookmark`
--
ALTER TABLE `jet_bookmark`
  ADD CONSTRAINT `jet_bookmark_user_id_8efdc332_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `jet_pinnedapplication`
--
ALTER TABLE `jet_pinnedapplication`
  ADD CONSTRAINT `jet_pinnedapplication_user_id_7765bcf9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shifting_commentblog`
--
ALTER TABLE `shifting_commentblog`
  ADD CONSTRAINT `shifting_commentblog_blog_title_id_157b4024_fk_shifting_blogs_id` FOREIGN KEY (`blog_title_id`) REFERENCES `shifting_blogs` (`id`);

--
-- Constraints for table `shifting_labours`
--
ALTER TABLE `shifting_labours`
  ADD CONSTRAINT `shifting_labours_category_title_id_1a447476_fk_shifting_` FOREIGN KEY (`category_title_id`) REFERENCES `shifting_labours_type` (`id`);

--
-- Constraints for table `shifting_portfolios`
--
ALTER TABLE `shifting_portfolios`
  ADD CONSTRAINT `shifting_portfolios_category_title_id_e55ae9f6_fk_shifting_` FOREIGN KEY (`category_title_id`) REFERENCES `shifting_portfolioscategory` (`id`);

--
-- Constraints for table `shifting_technician`
--
ALTER TABLE `shifting_technician`
  ADD CONSTRAINT `shifting_technician_category_title_id_0c1a95d0_fk_shifting_` FOREIGN KEY (`category_title_id`) REFERENCES `shifting_technician_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
