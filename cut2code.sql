-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 27, 2022 at 10:06 AM
-- Server version: 10.6.5-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cut2code`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Komentator WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-02-26 10:04:18', '2022-02-26 09:04:18', 'Cześć, to jest komentarz.\nAby zapoznać się z moderowaniem, edycją i usuwaniem komentarzy, należy odwiedzić ekran Komentarze w kokpicie.\nAwatary komentujących pochodzą z <a href=\"https://pl.gravatar.com\">Gravatara</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=512 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://rekrutacja', 'yes'),
(2, 'home', 'http://rekrutacja', 'yes'),
(3, 'blogname', 'zadanie-rekrutacyjne c2c', 'yes'),
(4, 'blogdescription', 'Kolejna witryna oparta na WordPressie', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mzjadame635@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:96:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:60:\"C:\\wamp64\\www\\rekrutacja/wp-content/themes/c2c/functions.php\";i:1;s:57:\"C:\\wamp64\\www\\rekrutacja/wp-content/themes/c2c/footer.php\";i:3;s:57:\"C:\\wamp64\\www\\rekrutacja/wp-content/themes/c2c/header.php\";i:4;s:58:\"C:\\wamp64\\www\\rekrutacja/wp-content/themes/c2c/sidebar.php\";i:5;s:56:\"C:\\wamp64\\www\\rekrutacja/wp-content/themes/c2c/style.css\";}', 'no'),
(40, 'template', 'c2c', 'yes'),
(41, 'stylesheet', 'c2c', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Warsaw', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1661418258', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pl_PL', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Ostatnie wpisy</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:232:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Najnowsze komentarze</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:145:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archiwa</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:149:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Kategorie</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1645959858;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1645995858;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1646039058;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1646039065;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1646039067;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1646557458;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:35:\"Zapytanie HTTPS nie powiodło się.\";}}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1645866413;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(150, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.9.1.zip\";s:6:\"locale\";s:5:\"pl_PL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.9.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.1\";s:7:\"version\";s:5:\"5.9.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1645953125;s:15:\"version_checked\";s:5:\"5.9.1\";s:12:\"translations\";a:0:{}}', 'no'),
(509, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1645953125;s:7:\"checked\";a:5:{s:3:\"c2c\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";s:15:\"twentytwentytwo\";s:3:\"1.1\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.2.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.5.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:1:{s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.1.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(510, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1645953126;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"5.9.1\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:6:\"4.1.12\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(505, '_site_transient_timeout_theme_roots', '1645954908', 'no'),
(506, '_site_transient_theme_roots', 'a:5:{s:3:\"c2c\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(131, '_site_transient_browser_b6229a4d339acf1a3fb9bf454656b0a5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"98.0.4758.102\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(156, 'finished_updating_comment_type', '1', 'yes'),
(130, '_site_transient_timeout_browser_b6229a4d339acf1a3fb9bf454656b0a5', '1646471066', 'no'),
(132, '_site_transient_timeout_php_check_1d343e7f9aee33bb3a30d3fe7077ec03', '1646471067', 'no'),
(133, '_site_transient_php_check_1d343e7f9aee33bb3a30d3fe7077ec03', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(148, 'db_upgraded', '', 'yes'),
(153, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"mzjadame635@gmail.com\";s:7:\"version\";s:5:\"5.9.1\";s:9:\"timestamp\";i:1645866360;}', 'no'),
(161, 'can_compress_scripts', '1', 'no'),
(162, 'current_theme', 'Cut2code.', 'yes'),
(163, 'theme_mods_c2c', 'a:25:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:24:\"cc-logo-callout-headline\";s:4:\"LOGO\";s:19:\"cc-logo-callout-img\";s:0:\"\";s:28:\"cc-headline-callout-headline\";s:33:\"Download Our <br />app and enjoy?\";s:23:\"cc-button1-callout-text\";s:12:\"Download App\";s:20:\"cc-image-callout-img\";i:13;s:20:\"cc-card1-callout-img\";i:42;s:25:\"cc-card1-callout-headline\";s:14:\"Awesome Design\";s:21:\"cc-card1-callout-text\";s:89:\"Lorem ipsum dolor sit amet into consectetur adipiscing elit, sed do eiusmod tempor incid.\";s:20:\"cc-card2-callout-img\";i:46;s:20:\"cc-card3-callout-img\";i:48;s:25:\"cc-card3-callout-headline\";s:13:\"Fully Secured\";s:28:\"cc-hand-section-callout-icon\";i:5;s:32:\"cc-hand-section-callout-headline\";s:37:\"We Designed Perfect<br /> App for You\";s:27:\"cc-hand-section-callout-img\";i:54;s:28:\"cc-hand-section-callout-list\";s:266:\" <ul class=\"info-list\">\n                <li>Lorem ipsum dolor sit amet into consectetur adipiscing elit</li>\n                <li>Lorem ipsum dolor sit amet into consectetur.</li>\n                <li>Lorem ipsum dolor sit amet into consectetur adipiscing.</li>\n </ul>\";s:30:\"cc-hand-section-callout-button\";s:10:\"Learn More\";s:32:\"cc-question-section-callout-icon\";i:59;s:31:\"cc-question-section-callout-img\";i:12;s:36:\"cc-question-section-callout-headline\";s:18:\"Have any Question?\";s:24:\"cc-numbers-callout-text1\";s:10:\"Downloads.\";s:24:\"cc-numbers-callout-text2\";s:12:\"Active Users\";s:22:\"cc-last-callout-button\";s:10:\"Contact Us\";}', 'yes'),
(164, 'theme_switched', '', 'yes'),
(195, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(196, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(507, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":5,\"critical\":0}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2022/02/icon1.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:17:\"2022/02/icon1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_wp_attached_file', '2022/02/icon2.png'),
(6, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:121;s:6:\"height\";i:132;s:4:\"file\";s:17:\"2022/02/icon2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 7, '_wp_attached_file', '2022/02/icon3.png'),
(8, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:70;s:6:\"height\";i:70;s:4:\"file\";s:17:\"2022/02/icon3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 8, '_wp_attached_file', '2022/02/icon4.png'),
(10, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:70;s:6:\"height\";i:70;s:4:\"file\";s:17:\"2022/02/icon4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 9, '_wp_attached_file', '2022/02/icon5.png'),
(12, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:70;s:6:\"height\";i:70;s:4:\"file\";s:17:\"2022/02/icon5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 10, '_wp_attached_file', '2022/02/icon6.png'),
(14, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:70;s:6:\"height\";i:70;s:4:\"file\";s:17:\"2022/02/icon6.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 11, '_wp_attached_file', '2022/02/image-main-1.jpg'),
(16, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:343;s:4:\"file\";s:24:\"2022/02/image-main-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"image-main-1-300x161.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:161;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"image-main-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 12, '_wp_attached_file', '2022/02/image-main-2.jpg'),
(18, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:495;s:4:\"file\";s:24:\"2022/02/image-main-2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"image-main-2-242x300.jpg\";s:5:\"width\";i:242;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"image-main-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 13, '_wp_attached_file', '2022/02/top2.png'),
(20, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1139;s:4:\"file\";s:16:\"2022/02/top2.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"top2-300x178.png\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"top2-1024x607.png\";s:5:\"width\";i:1024;s:6:\"height\";i:607;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"top2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"top2-768x456.png\";s:5:\"width\";i:768;s:6:\"height\";i:456;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"top2-1536x911.png\";s:5:\"width\";i:1536;s:6:\"height\";i:911;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 14, '_wp_trash_meta_status', 'publish'),
(22, 14, '_wp_trash_meta_time', '1645869510'),
(23, 15, '_wp_trash_meta_status', 'publish'),
(24, 15, '_wp_trash_meta_time', '1645870002'),
(25, 16, '_wp_trash_meta_status', 'publish'),
(26, 16, '_wp_trash_meta_time', '1645870235'),
(27, 17, '_wp_trash_meta_status', 'publish'),
(28, 17, '_wp_trash_meta_time', '1645870249'),
(87, 42, '_wp_attached_file', '2022/02/cropped-icon4.png'),
(88, 42, '_wp_attachment_context', 'cc-card1-callout-img-control'),
(89, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:25:\"2022/02/cropped-icon4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 19, '_edit_lock', '1645872840:1'),
(33, 19, '_customize_restore_dismissed', '1'),
(34, 20, '_wp_attached_file', '2022/02/cropped-icon5.png'),
(35, 20, '_wp_attachment_context', 'cc-logo-callout-img-control'),
(36, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:100;s:4:\"file\";s:25:\"2022/02/cropped-icon5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 21, '_wp_trash_meta_status', 'publish'),
(38, 21, '_wp_trash_meta_time', '1645872921'),
(39, 22, '_wp_trash_meta_status', 'publish'),
(40, 22, '_wp_trash_meta_time', '1645873026'),
(41, 23, '_wp_attached_file', '2022/02/cropped-icon5-1.png'),
(42, 23, '_wp_attachment_context', 'cc-logo-callout-img-control'),
(43, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:100;s:4:\"file\";s:27:\"2022/02/cropped-icon5-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 24, '_wp_trash_meta_status', 'publish'),
(45, 24, '_wp_trash_meta_time', '1645873105'),
(46, 25, '_wp_attached_file', '2022/02/cropped-icon6.png'),
(47, 25, '_wp_attachment_context', 'cc-logo-callout-img-control'),
(48, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:25:\"2022/02/cropped-icon6.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 26, '_wp_trash_meta_status', 'publish'),
(50, 26, '_wp_trash_meta_time', '1645873153'),
(51, 27, '_wp_trash_meta_status', 'publish'),
(52, 27, '_wp_trash_meta_time', '1645873180'),
(53, 28, '_wp_trash_meta_status', 'publish'),
(54, 28, '_wp_trash_meta_time', '1645875222'),
(55, 29, '_wp_trash_meta_status', 'publish'),
(56, 29, '_wp_trash_meta_time', '1645875277'),
(57, 30, '_edit_lock', '1645875551:1'),
(58, 30, '_customize_restore_dismissed', '1'),
(59, 31, '_edit_lock', '1645876227:1'),
(60, 31, '_wp_trash_meta_status', 'publish'),
(61, 31, '_wp_trash_meta_time', '1645876237'),
(62, 32, '_wp_trash_meta_status', 'publish'),
(63, 32, '_wp_trash_meta_time', '1645876380'),
(64, 33, '_wp_trash_meta_status', 'publish'),
(65, 33, '_wp_trash_meta_time', '1645876395'),
(66, 34, '_edit_lock', '1645878751:1'),
(137, 62, '_edit_lock', '1645901027:1'),
(136, 61, '_wp_trash_meta_time', '1645900933'),
(132, 60, '_edit_lock', '1645900877:1'),
(133, 60, '_wp_trash_meta_status', 'publish'),
(134, 60, '_wp_trash_meta_time', '1645900881'),
(135, 61, '_wp_trash_meta_status', 'publish'),
(70, 34, '_customize_restore_dismissed', '1'),
(71, 36, '_edit_lock', '1645878992:1'),
(90, 43, '_wp_trash_meta_status', 'publish'),
(91, 43, '_wp_trash_meta_time', '1645896142'),
(92, 44, '_wp_attached_file', '2022/02/cropped-icon5-2.png'),
(93, 44, '_wp_attachment_context', 'cc-card2-callout-img-control'),
(94, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:27:\"2022/02/cropped-icon5-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(75, 36, '_customize_restore_dismissed', '1'),
(76, 38, '_wp_trash_meta_status', 'publish'),
(77, 38, '_wp_trash_meta_time', '1645879060'),
(78, 13, '_edit_lock', '1645879283:1'),
(79, 13, '_edit_last', '1'),
(98, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:27:\"2022/02/cropped-icon5-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 46, '_wp_attachment_context', 'cc-card2-callout-img-control'),
(95, 45, '_edit_lock', '1645896537:1'),
(96, 46, '_wp_attached_file', '2022/02/cropped-icon5-3.png'),
(83, 40, '_edit_lock', '1645879168:1'),
(84, 40, '_customize_restore_dismissed', '1'),
(85, 41, '_wp_trash_meta_status', 'publish'),
(86, 41, '_wp_trash_meta_time', '1645879400'),
(99, 45, '_customize_restore_dismissed', '1'),
(100, 47, '_wp_trash_meta_status', 'publish'),
(101, 47, '_wp_trash_meta_time', '1645896613'),
(102, 48, '_wp_attached_file', '2022/02/cropped-icon6-1.png'),
(103, 48, '_wp_attachment_context', 'cc-card3-callout-img-control'),
(104, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:27:\"2022/02/cropped-icon6-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 49, '_wp_trash_meta_status', 'publish'),
(106, 49, '_wp_trash_meta_time', '1645896722'),
(107, 50, '_edit_lock', '1645897935:1'),
(123, 56, '_wp_trash_meta_status', 'publish'),
(124, 56, '_wp_trash_meta_time', '1645898417'),
(125, 57, '_wp_trash_meta_status', 'publish'),
(126, 57, '_wp_trash_meta_time', '1645898467'),
(127, 58, '_wp_trash_meta_status', 'publish'),
(128, 58, '_wp_trash_meta_time', '1645899343'),
(129, 59, '_wp_attached_file', '2022/02/cropped-icon2.png'),
(130, 59, '_wp_attachment_context', 'cc-question-section-callout-icon-control'),
(131, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:25:\"2022/02/cropped-icon2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 50, '_wp_trash_meta_status', 'publish'),
(112, 50, '_wp_trash_meta_time', '1645897943'),
(113, 52, '_wp_attached_file', '2022/02/cropped-image-main-1-2.jpg'),
(114, 52, '_wp_attachment_context', 'cc-hand-section-callout-img-control'),
(115, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:340;s:4:\"file\";s:34:\"2022/02/cropped-image-main-1-2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"cropped-image-main-1-2-300x170.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-image-main-1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 53, '_wp_trash_meta_status', 'publish'),
(117, 53, '_wp_trash_meta_time', '1645898053'),
(118, 54, '_wp_attached_file', '2022/02/cropped-image-main-1-3.jpg'),
(119, 54, '_wp_attachment_context', 'cc-hand-section-callout-img-control'),
(120, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:340;s:4:\"file\";s:34:\"2022/02/cropped-image-main-1-3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"cropped-image-main-1-3-300x159.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:159;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-image-main-1-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 55, '_wp_trash_meta_status', 'publish'),
(122, 55, '_wp_trash_meta_time', '1645898104'),
(138, 62, '_wp_trash_meta_status', 'publish'),
(139, 62, '_wp_trash_meta_time', '1645901035'),
(140, 63, '_edit_lock', '1645901204:1'),
(141, 63, '_wp_trash_meta_status', 'publish'),
(142, 63, '_wp_trash_meta_time', '1645901205'),
(143, 64, '_wp_trash_meta_status', 'publish'),
(144, 64, '_wp_trash_meta_time', '1645901215'),
(145, 65, '_wp_trash_meta_status', 'publish'),
(146, 65, '_wp_trash_meta_time', '1645901228'),
(147, 66, '_edit_lock', '1645902177:1'),
(148, 66, '_customize_restore_dismissed', '1'),
(149, 67, '_edit_lock', '1645902261:1'),
(150, 67, '_customize_restore_dismissed', '1'),
(151, 68, '_edit_lock', '1645902492:1'),
(152, 68, '_customize_restore_dismissed', '1'),
(153, 69, '_wp_trash_meta_status', 'publish'),
(154, 69, '_wp_trash_meta_time', '1645902516'),
(155, 70, '_wp_trash_meta_status', 'publish'),
(156, 70, '_wp_trash_meta_time', '1645949801'),
(157, 71, '_edit_lock', '1645950365:1'),
(158, 71, '_customize_restore_dismissed', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-02-26 10:04:18', '2022-02-26 09:04:18', '<!-- wp:paragraph -->\n<p>Witamy w WordPressie. To jest twój pierwszy wpis. Edytuj go lub usuń, a następnie zacznij pisać!</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie!', '', 'publish', 'open', 'open', '', 'witaj-swiecie', '', '', '2022-02-26 10:04:18', '2022-02-26 09:04:18', '', 0, 'http://rekrutacja/?p=1', 0, 'post', '', 1),
(2, 1, '2022-02-26 10:04:18', '2022-02-26 09:04:18', '<!-- wp:paragraph -->\n<p>Przykładowa strona. Strony są inne niż wpisy na blogu, ponieważ nie tylko znajdują się zawsze w jednym miejscu, ale także pojawiają się w menu witryny (w większości motywów). Większość użytkowników zaczyna od strony z informacjami o sobie, która zapozna ich przed odwiedzającymi witrynę. Taka strona może zawierać na przykład taką treść:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Cześć! Za dnia jestem kurierem rowerowym, nocą próbuję swoich sił w aktorstwie, a to jest moja witryna. Mieszkam w Krakowie, mam wspaniałego psa który wabi się Reks i lubię piña coladę (oraz spacery, gdy pada deszcz).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...albo coś takiego:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Firma XYZ Doohickey została założona w 1971 roku i od tamtej pory dostarcza społeczeństwu dobrej jakości gadżety. Znajdująca się w Gotham City XYZ zatrudnia ponad 2000 osób i robi niesamowite rzeczy dla społeczności Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Jako nowy użytkownik WordPressa, powinieneś przejść do <a href=\"http://rekrutacja/wp-admin/\">swojego kokpitu</a> aby usunąć tę stronę i stworzyć nowe z własną treścią. Dobrej zabawy!</p>\n<!-- /wp:paragraph -->', 'Przykładowa strona', '', 'publish', 'closed', 'open', '', 'przykladowa-strona', '', '', '2022-02-26 10:04:18', '2022-02-26 09:04:18', '', 0, 'http://rekrutacja/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-02-26 10:04:18', '2022-02-26 09:04:18', '<!-- wp:heading --><h2>Kim jesteśmy</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Adres naszej strony internetowej to: http://rekrutacja.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Komentarze</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Kiedy odwiedzający witrynę zostawia komentarz, zbieramy dane widoczne w formularzu komentowania, jak i adres IP odwiedzającego oraz podpis jego przeglądarki jako pomoc przy wykrywaniu spamu.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Anonimizowany ciąg znaków utworzony z twojego adresu e-mail (zwany też hashem) może zostać przesłany do usługi Gravatar w celu sprawdzenia czy jest używany. Polityka prywatności usługi Gravatar jest dostępna pod adresem: https://automattic.com/privacy/. Po zatwierdzeniu komentarza twój obrazek profilowy jest widoczny publicznie w kontekście twojego komentarza.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli jesteś zarejestrowanym użytkownikiem i wgrywasz na witrynę obrazki, powinieneś unikać przesyłania obrazków z tagami EXIF lokalizacji. Odwiedzający stronę mogą pobrać i odczytać pełne dane lokalizacyjne z obrazków w witrynie.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ciasteczka</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli zostawisz na naszej witrynie komentarz, będzie można wybrać opcję zapisu twojej nazwy, adresu e-mail i adresu strony internetowej w ciasteczkach, dzięki którym podczas pisania kolejnych komentarzy powyższe informacje będą już dogodnie uzupełnione. Ciasteczka wygasają po roku.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jeśli odwiedzisz stronę logowania, utworzymy tymczasowe ciasteczko na potrzeby sprawdzenia czy twoja przeglądarka akceptuje ciasteczka. Nie zawiera ono żadnych danych osobistych i zostanie usunięte, kiedy przeglądarka zostanie zamknięta.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Podczas logowania tworzymy dodatkowo kilka ciasteczek potrzebnych do zapisu twoich informacji logowania oraz wybranych opcji ekranu. Ciasteczka logowania wygasają po dwóch dniach, a opcji ekranu po roku. Jeśli zaznaczysz opcję &bdquo;Pamiętaj mnie&rdquo;, logowanie wygaśnie po dwóch tygodniach. Jeśli wylogujesz się ze swojego konta, ciasteczka logowania zostaną usunięte.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jeśli zmodyfikujesz albo opublikujesz artykuł, w twojej przeglądarce zostanie zapisane dodatkowe ciasteczko. To ciasteczko nie zawiera żadnych danych osobistych, wskazując po prostu na identyfikator przed chwilą edytowanego artykułu. Wygasa ono po 1 dniu.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Osadzone treści z innych witryn</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Artykuły na tej witrynie mogą zawierać osadzone treści (np. filmy, obrazki, artykuły itp.). Osadzone treści z innych witryn zachowują się analogicznie do tego, jakby użytkownik odwiedził bezpośrednio konkretną witrynę.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Witryny mogą zbierać informacje o tobie, używać ciasteczek, dołączać dodatkowe, zewnętrzne systemy śledzenia i monitorować twoje interakcje z osadzonym materiałem, włączając w to śledzenie twoich interakcji z osadzonym materiałem jeśli posiadasz konto i jesteś zalogowany w tamtej witrynie.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Z kim dzielimy się danymi</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli zażądasz zresetowania hasła, twój adres IP zostanie dołączony do wysyłanej wiadomości.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Jak długo przechowujemy twoje dane</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli zostawisz komentarz, jego treść i metadane będą przechowywane przez czas nieokreślony. Dzięki temu jesteśmy w stanie rozpoznawać i zatwierdzać kolejne komentarze automatycznie, bez wysyłania ich do każdorazowej moderacji.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Dla użytkowników którzy zarejestrowali się na naszej stronie internetowej (jeśli tacy są), przechowujemy również informacje osobiste wprowadzone w profilu. Każdy użytkownik może dokonać wglądu, korekty albo skasować swoje informacje osobiste w dowolnej chwili (nie licząc nazwy użytkownika, której nie można zmienić). Administratorzy strony również mogą przeglądać i modyfikować te informacje.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Jakie masz prawa do swoich danych</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli masz konto użytkownika albo dodałeś komentarze w tej witrynie, możesz zażądać dostarczenia pliku z wyeksportowanym kompletem twoich danych osobistych będących w naszym posiadaniu, w tym całość tych dostarczonych przez ciebie. Możesz również zażądać usunięcia przez nas całości twoich danych osobistych w naszym posiadaniu. Nie dotyczy to żadnych danych które jesteśmy zobligowani zachować ze względów administracyjnych, prawnych albo bezpieczeństwa.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Gdzie przesyłamy dane</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Komentarze gości mogą być sprawdzane za pomocą automatycznej usługi wykrywania spamu.</p><!-- /wp:paragraph -->', 'Polityka prywatności', '', 'draft', 'closed', 'open', '', 'polityka-prywatnosci', '', '', '2022-02-26 10:04:18', '2022-02-26 09:04:18', '', 0, 'http://rekrutacja/?page_id=3', 0, 'page', '', 0),
(4, 1, '2022-02-26 10:04:27', '0000-00-00 00:00:00', '', 'Automatycznie zapisany szkic', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-02-26 10:04:27', '0000-00-00 00:00:00', '', 0, 'http://rekrutacja/?p=4', 0, 'post', '', 0),
(5, 1, '2022-02-26 10:07:26', '2022-02-26 09:07:26', '', 'icon1', '', 'inherit', 'open', 'closed', '', 'icon1', '', '', '2022-02-26 10:07:26', '2022-02-26 09:07:26', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/icon1.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2022-02-26 10:07:26', '2022-02-26 09:07:26', '', 'icon2', '', 'inherit', 'open', 'closed', '', 'icon2', '', '', '2022-02-26 10:07:26', '2022-02-26 09:07:26', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/icon2.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2022-02-26 10:07:26', '2022-02-26 09:07:26', '', 'icon3', '', 'inherit', 'open', 'closed', '', 'icon3', '', '', '2022-02-26 10:07:26', '2022-02-26 09:07:26', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/icon3.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2022-02-26 10:07:27', '2022-02-26 09:07:27', '', 'icon4', '', 'inherit', 'open', 'closed', '', 'icon4', '', '', '2022-02-26 10:07:27', '2022-02-26 09:07:27', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/icon4.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2022-02-26 10:07:27', '2022-02-26 09:07:27', '', 'icon5', '', 'inherit', 'open', 'closed', '', 'icon5', '', '', '2022-02-26 10:07:27', '2022-02-26 09:07:27', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/icon5.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2022-02-26 10:07:28', '2022-02-26 09:07:28', '', 'icon6', '', 'inherit', 'open', 'closed', '', 'icon6', '', '', '2022-02-26 10:07:28', '2022-02-26 09:07:28', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/icon6.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2022-02-26 10:07:28', '2022-02-26 09:07:28', '', 'image-main-1', '', 'inherit', 'open', 'closed', '', 'image-main-1', '', '', '2022-02-26 10:07:28', '2022-02-26 09:07:28', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/image-main-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2022-02-26 10:07:28', '2022-02-26 09:07:28', '', 'image-main-2', '', 'inherit', 'open', 'closed', '', 'image-main-2', '', '', '2022-02-26 10:07:28', '2022-02-26 09:07:28', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/image-main-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2022-02-26 10:07:31', '2022-02-26 09:07:31', '', 'top2', '', 'inherit', 'open', 'closed', '', 'top2', '', '', '2022-02-26 13:39:04', '2022-02-26 12:39:04', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/top2.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2022-02-26 10:58:30', '2022-02-26 09:58:30', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 09:58:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8b0b9616-0ba8-44e7-aec5-1649ada3848c', '', '', '2022-02-26 10:58:30', '2022-02-26 09:58:30', '', 0, 'http://rekrutacja/2022/02/26/8b0b9616-0ba8-44e7-aec5-1649ada3848c/', 0, 'customize_changeset', '', 0),
(15, 1, '2022-02-26 11:06:41', '2022-02-26 10:06:41', '{\n    \"c2c::cc-logo-callout-headline\": {\n        \"value\": \"LOGO2\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 10:06:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e8765904-29c2-4eb1-99f9-5a9ceac21fac', '', '', '2022-02-26 11:06:41', '2022-02-26 10:06:41', '', 0, 'http://rekrutacja/2022/02/26/e8765904-29c2-4eb1-99f9-5a9ceac21fac/', 0, 'customize_changeset', '', 0),
(16, 1, '2022-02-26 11:10:35', '2022-02-26 10:10:35', '{\n    \"c2c::cc-logo-callout-headline\": {\n        \"value\": \"Maciek\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 10:10:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '467c543b-76fc-4369-9fbe-190a69607022', '', '', '2022-02-26 11:10:35', '2022-02-26 10:10:35', '', 0, 'http://rekrutacja/2022/02/26/467c543b-76fc-4369-9fbe-190a69607022/', 0, 'customize_changeset', '', 0),
(17, 1, '2022-02-26 11:10:49', '2022-02-26 10:10:49', '{\n    \"c2c::cc-logo-callout-headline\": {\n        \"value\": \"LOGO\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 10:10:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cf74589f-8ba1-463e-b749-1cb234020b06', '', '', '2022-02-26 11:10:49', '2022-02-26 10:10:49', '', 0, 'http://rekrutacja/2022/02/26/cf74589f-8ba1-463e-b749-1cb234020b06/', 0, 'customize_changeset', '', 0),
(42, 1, '2022-02-26 18:21:59', '2022-02-26 17:21:59', 'http://rekrutacja/wp-content/uploads/2022/02/cropped-icon4.png', 'cropped-icon4.png', '', 'inherit', 'open', 'closed', '', 'cropped-icon4-png', '', '', '2022-02-26 18:21:59', '2022-02-26 17:21:59', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/cropped-icon4.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2022-02-26 11:51:23', '0000-00-00 00:00:00', '{\n    \"c2c::cc-logo-callout-img\": {\n        \"value\": 18,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 10:51:23\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '2fe6fbb5-1813-467e-a512-3eb148742924', '', '', '2022-02-26 11:51:23', '0000-00-00 00:00:00', '', 0, 'http://rekrutacja/?p=19', 0, 'customize_changeset', '', 0),
(20, 1, '2022-02-26 11:55:17', '2022-02-26 10:55:17', 'http://rekrutacja/wp-content/uploads/2022/02/cropped-icon5.png', 'cropped-icon5.png', '', 'inherit', 'open', 'closed', '', 'cropped-icon5-png', '', '', '2022-02-26 11:55:17', '2022-02-26 10:55:17', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/cropped-icon5.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2022-02-26 11:55:21', '2022-02-26 10:55:21', '{\n    \"c2c::cc-logo-callout-img\": {\n        \"value\": 20,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 10:55:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '669159f4-0929-4214-abd5-4efed86982a5', '', '', '2022-02-26 11:55:21', '2022-02-26 10:55:21', '', 0, 'http://rekrutacja/2022/02/26/669159f4-0929-4214-abd5-4efed86982a5/', 0, 'customize_changeset', '', 0),
(22, 1, '2022-02-26 11:57:06', '2022-02-26 10:57:06', '{\n    \"c2c::cc-logo-callout-headline\": {\n        \"value\": \"LOGO\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 10:57:06\"\n    },\n    \"c2c::cc-logo-callout-img\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 10:57:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '01e8334a-a81e-41dc-a449-a7aaec671c2e', '', '', '2022-02-26 11:57:06', '2022-02-26 10:57:06', '', 0, 'http://rekrutacja/2022/02/26/01e8334a-a81e-41dc-a449-a7aaec671c2e/', 0, 'customize_changeset', '', 0),
(23, 1, '2022-02-26 11:58:16', '2022-02-26 10:58:16', 'http://rekrutacja/wp-content/uploads/2022/02/cropped-icon5-1.png', 'cropped-icon5-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-icon5-1-png', '', '', '2022-02-26 11:58:16', '2022-02-26 10:58:16', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/cropped-icon5-1.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2022-02-26 11:58:25', '2022-02-26 10:58:25', '{\n    \"c2c::cc-logo-callout-headline\": {\n        \"value\": \"Logo1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 10:58:25\"\n    },\n    \"c2c::cc-logo-callout-img\": {\n        \"value\": 23,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 10:58:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3043ca0a-a790-40f7-85a2-48cd910e0e14', '', '', '2022-02-26 11:58:25', '2022-02-26 10:58:25', '', 0, 'http://rekrutacja/2022/02/26/3043ca0a-a790-40f7-85a2-48cd910e0e14/', 0, 'customize_changeset', '', 0),
(25, 1, '2022-02-26 11:59:10', '2022-02-26 10:59:10', 'http://rekrutacja/wp-content/uploads/2022/02/cropped-icon6.png', 'cropped-icon6.png', '', 'inherit', 'open', 'closed', '', 'cropped-icon6-png', '', '', '2022-02-26 11:59:10', '2022-02-26 10:59:10', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/cropped-icon6.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2022-02-26 11:59:13', '2022-02-26 10:59:13', '{\n    \"c2c::cc-logo-callout-img\": {\n        \"value\": 25,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 10:59:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '35771922-14cf-4780-9819-72e01dda670b', '', '', '2022-02-26 11:59:13', '2022-02-26 10:59:13', '', 0, 'http://rekrutacja/2022/02/26/35771922-14cf-4780-9819-72e01dda670b/', 0, 'customize_changeset', '', 0),
(27, 1, '2022-02-26 11:59:40', '2022-02-26 10:59:40', '{\n    \"c2c::cc-logo-callout-headline\": {\n        \"value\": \"LOGO\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 10:59:40\"\n    },\n    \"c2c::cc-logo-callout-img\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 10:59:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '02665431-174c-4aa0-a973-8d24772bd348', '', '', '2022-02-26 11:59:40', '2022-02-26 10:59:40', '', 0, 'http://rekrutacja/2022/02/26/02665431-174c-4aa0-a973-8d24772bd348/', 0, 'customize_changeset', '', 0),
(28, 1, '2022-02-26 12:33:42', '2022-02-26 11:33:42', '{\n    \"c2c::cc-headline-callout-headline\": {\n        \"value\": \"Download Our app and enjoy?\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 11:33:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e4adba6b-91ce-44be-b4a8-3267621dd646', '', '', '2022-02-26 12:33:42', '2022-02-26 11:33:42', '', 0, 'http://rekrutacja/2022/02/26/e4adba6b-91ce-44be-b4a8-3267621dd646/', 0, 'customize_changeset', '', 0),
(29, 1, '2022-02-26 12:34:37', '2022-02-26 11:34:37', '{\n    \"c2c::cc-headline-callout-headline\": {\n        \"value\": \"Download Our <br />app and enjoy?\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 11:34:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd843282b-4964-4aa4-a7bf-41b3288b917a', '', '', '2022-02-26 12:34:37', '2022-02-26 11:34:37', '', 0, 'http://rekrutacja/2022/02/26/d843282b-4964-4aa4-a7bf-41b3288b917a/', 0, 'customize_changeset', '', 0),
(30, 1, '2022-02-26 12:39:11', '0000-00-00 00:00:00', '{\n    \"c2c::cc-headline-callout-text\": {\n        \"value\": \"Contrary to popular belief, Lorem Ipsum is not simply randa text. has roots in a piece of classical Latin literature from BC, making it over 2000 years old. Richard McClintock.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 11:39:11\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'f86ccfd8-be14-47c4-98e4-951f3a18c325', '', '', '2022-02-26 12:39:11', '0000-00-00 00:00:00', '', 0, 'http://rekrutacja/?p=30', 0, 'customize_changeset', '', 0),
(31, 1, '2022-02-26 12:50:37', '2022-02-26 11:50:37', '{\n    \"c2c::cc-button1-callout-text\": {\n        \"value\": \"Download App\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 11:50:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '017f1c95-fe58-4d35-bff6-ffdfabdcc898', '', '', '2022-02-26 12:50:37', '2022-02-26 11:50:37', '', 0, 'http://rekrutacja/?p=31', 0, 'customize_changeset', '', 0),
(32, 1, '2022-02-26 12:53:00', '2022-02-26 11:53:00', '{\n    \"c2c::cc-button1-callout-text\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 11:53:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '92cce59e-052a-4b6e-a2f3-86d3486a5f53', '', '', '2022-02-26 12:53:00', '2022-02-26 11:53:00', '', 0, 'http://rekrutacja/2022/02/26/92cce59e-052a-4b6e-a2f3-86d3486a5f53/', 0, 'customize_changeset', '', 0),
(33, 1, '2022-02-26 12:53:15', '2022-02-26 11:53:15', '{\n    \"c2c::cc-button1-callout-text\": {\n        \"value\": \"Download App\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 11:53:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6a4abd75-1339-46c7-aa47-b8d5224c9071', '', '', '2022-02-26 12:53:15', '2022-02-26 11:53:15', '', 0, 'http://rekrutacja/2022/02/26/6a4abd75-1339-46c7-aa47-b8d5224c9071/', 0, 'customize_changeset', '', 0),
(34, 1, '2022-02-26 12:57:34', '0000-00-00 00:00:00', '{\n    \"c2c::cc-button2-callout-text\": {\n        \"value\": \"Watch Video123\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 11:57:34\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '2e1f4714-4ad1-40ef-8a38-5a92448d5ebf', '', '', '2022-02-26 12:57:34', '0000-00-00 00:00:00', '', 0, 'http://rekrutacja/?p=34', 0, 'customize_changeset', '', 0),
(36, 1, '2022-02-26 13:35:53', '0000-00-00 00:00:00', '{\n    \"c2c::cc-image-callout-img\": {\n        \"value\": 35,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 12:35:53\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '40a99cdd-f074-45f1-bb24-dd5241716256', '', '', '2022-02-26 13:35:53', '0000-00-00 00:00:00', '', 0, 'http://rekrutacja/?p=36', 0, 'customize_changeset', '', 0),
(43, 1, '2022-02-26 18:22:22', '2022-02-26 17:22:22', '{\n    \"c2c::cc-card1-callout-img\": {\n        \"value\": 42,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 17:22:22\"\n    },\n    \"c2c::cc-card1-callout-headline\": {\n        \"value\": \"Awesome Design\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 17:22:22\"\n    },\n    \"c2c::cc-card1-callout-text\": {\n        \"value\": \"Lorem ipsum dolor sit amet into consectetur adipiscing elit, sed do eiusmod tempor incid.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 17:22:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '338b1a3b-4321-494d-ba0d-70872f070664', '', '', '2022-02-26 18:22:22', '2022-02-26 17:22:22', '', 0, 'http://rekrutacja/2022/02/26/338b1a3b-4321-494d-ba0d-70872f070664/', 0, 'customize_changeset', '', 0),
(38, 1, '2022-02-26 13:37:40', '2022-02-26 12:37:40', '{\n    \"c2c::cc-image-callout-img\": {\n        \"value\": 37,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 12:37:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e302ca34-397a-48d9-adff-aee340e370e8', '', '', '2022-02-26 13:37:40', '2022-02-26 12:37:40', '', 0, 'http://rekrutacja/2022/02/26/e302ca34-397a-48d9-adff-aee340e370e8/', 0, 'customize_changeset', '', 0),
(40, 1, '2022-02-26 13:39:27', '0000-00-00 00:00:00', '{\n    \"c2c::cc-image-callout-img\": {\n        \"value\": 39,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 12:39:27\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '1673af01-6a22-4e7a-b508-d9e7879a3c75', '', '', '2022-02-26 13:39:27', '0000-00-00 00:00:00', '', 0, 'http://rekrutacja/?p=40', 0, 'customize_changeset', '', 0),
(41, 1, '2022-02-26 13:43:20', '2022-02-26 12:43:20', '{\n    \"c2c::cc-image-callout-img\": {\n        \"value\": 13,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 12:43:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f582ae76-983a-4cd3-8996-6914437a1651', '', '', '2022-02-26 13:43:20', '2022-02-26 12:43:20', '', 0, 'http://rekrutacja/2022/02/26/f582ae76-983a-4cd3-8996-6914437a1651/', 0, 'customize_changeset', '', 0),
(44, 1, '2022-02-26 18:28:12', '2022-02-26 17:28:12', 'http://rekrutacja/wp-content/uploads/2022/02/cropped-icon5-2.png', 'cropped-icon5-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-icon5-2-png', '', '', '2022-02-26 18:28:12', '2022-02-26 17:28:12', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/cropped-icon5-2.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2022-02-26 18:28:25', '0000-00-00 00:00:00', '{\n    \"c2c::cc-card2-callout-img\": {\n        \"value\": 44,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 17:28:25\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '89ffc331-ed8b-416c-8389-779b6f90da65', '', '', '2022-02-26 18:28:25', '0000-00-00 00:00:00', '', 0, 'http://rekrutacja/?p=45', 0, 'customize_changeset', '', 0),
(46, 1, '2022-02-26 18:30:10', '2022-02-26 17:30:10', 'http://rekrutacja/wp-content/uploads/2022/02/cropped-icon5-3.png', 'cropped-icon5-3.png', '', 'inherit', 'open', 'closed', '', 'cropped-icon5-3-png', '', '', '2022-02-26 18:30:10', '2022-02-26 17:30:10', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/cropped-icon5-3.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2022-02-26 18:30:13', '2022-02-26 17:30:13', '{\n    \"c2c::cc-card2-callout-img\": {\n        \"value\": 46,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 17:30:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'de3ebee6-f7d8-4ac3-881e-a36604d88cd0', '', '', '2022-02-26 18:30:13', '2022-02-26 17:30:13', '', 0, 'http://rekrutacja/2022/02/26/de3ebee6-f7d8-4ac3-881e-a36604d88cd0/', 0, 'customize_changeset', '', 0),
(48, 1, '2022-02-26 18:31:47', '2022-02-26 17:31:47', 'http://rekrutacja/wp-content/uploads/2022/02/cropped-icon6-1.png', 'cropped-icon6-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-icon6-1-png', '', '', '2022-02-26 18:31:47', '2022-02-26 17:31:47', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/cropped-icon6-1.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2022-02-26 18:32:02', '2022-02-26 17:32:02', '{\n    \"c2c::cc-card3-callout-img\": {\n        \"value\": 48,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 17:32:02\"\n    },\n    \"c2c::cc-card3-callout-headline\": {\n        \"value\": \"Fully Secured\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 17:32:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '055d2e18-b774-4710-879f-44382be636c3', '', '', '2022-02-26 18:32:02', '2022-02-26 17:32:02', '', 0, 'http://rekrutacja/2022/02/26/055d2e18-b774-4710-879f-44382be636c3/', 0, 'customize_changeset', '', 0),
(50, 1, '2022-02-26 18:52:23', '2022-02-26 17:52:23', '{\n    \"c2c::cc-hand-section-callout-icon\": {\n        \"value\": 5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 17:51:39\"\n    },\n    \"c2c::cc-hand-section-callout-headline\": {\n        \"value\": \"We Designed Perfect<br /> App for You\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 17:52:23\"\n    },\n    \"c2c::cc-hand-section-callout-img\": {\n        \"value\": 51,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 17:52:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '77e790c7-8570-44ba-bd7c-917a1d74591f', '', '', '2022-02-26 18:52:23', '2022-02-26 17:52:23', '', 0, 'http://rekrutacja/?p=50', 0, 'customize_changeset', '', 0),
(56, 1, '2022-02-26 19:00:17', '2022-02-26 18:00:17', '{\n    \"c2c::cc-hand-section-callout-list\": {\n        \"value\": \" <ul class=\\\"info-list\\\">\\n                <li>Lorem ipsum dolor sit amet into consectetur adipiscing elit</li>\\n                <li>Lorem ipsum dolor sit amet into consectetur.</li>\\n                <li>Lorem ipsum dolor sit amet into consectetur adipiscing.</li>\\n </ul>\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 18:00:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a5af41fa-974a-4ba7-b2af-8b47d4468956', '', '', '2022-02-26 19:00:17', '2022-02-26 18:00:17', '', 0, 'http://rekrutacja/2022/02/26/a5af41fa-974a-4ba7-b2af-8b47d4468956/', 0, 'customize_changeset', '', 0),
(52, 1, '2022-02-26 18:54:11', '2022-02-26 17:54:11', 'http://rekrutacja/wp-content/uploads/2022/02/cropped-image-main-1-2.jpg', 'cropped-image-main-1-2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-image-main-1-2-jpg', '', '', '2022-02-26 18:54:11', '2022-02-26 17:54:11', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/cropped-image-main-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2022-02-26 18:54:13', '2022-02-26 17:54:13', '{\n    \"c2c::cc-hand-section-callout-img\": {\n        \"value\": 52,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 17:54:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2e7a8a29-fa77-4abe-a919-7b2a7059bbac', '', '', '2022-02-26 18:54:13', '2022-02-26 17:54:13', '', 0, 'http://rekrutacja/2022/02/26/2e7a8a29-fa77-4abe-a919-7b2a7059bbac/', 0, 'customize_changeset', '', 0),
(54, 1, '2022-02-26 18:55:02', '2022-02-26 17:55:02', 'http://rekrutacja/wp-content/uploads/2022/02/cropped-image-main-1-3.jpg', 'cropped-image-main-1-3.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-image-main-1-3-jpg', '', '', '2022-02-26 18:55:02', '2022-02-26 17:55:02', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/cropped-image-main-1-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2022-02-26 18:55:04', '2022-02-26 17:55:04', '{\n    \"c2c::cc-hand-section-callout-img\": {\n        \"value\": 54,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 17:55:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '63dc6144-11b4-4c35-b883-66de4491ee0e', '', '', '2022-02-26 18:55:04', '2022-02-26 17:55:04', '', 0, 'http://rekrutacja/2022/02/26/63dc6144-11b4-4c35-b883-66de4491ee0e/', 0, 'customize_changeset', '', 0),
(57, 1, '2022-02-26 19:01:07', '2022-02-26 18:01:07', '{\n    \"c2c::cc-hand-section-callout-list\": {\n        \"value\": \" <ul class=\\\"info-list\\\">\\n                <li>Lorem ipsum dolor sit amet into consectetur adipiscing elit</li>\\n                <li>Lorem ipsum dolor sit amet into consectetur.</li>\\n                <li>Lorem ipsum dolor sit amet into consectetur adipiscing.</li>\\n </ul>\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 18:01:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd70d692f-08bb-4deb-b68f-55bb9f3cd972', '', '', '2022-02-26 19:01:07', '2022-02-26 18:01:07', '', 0, 'http://rekrutacja/2022/02/26/d70d692f-08bb-4deb-b68f-55bb9f3cd972/', 0, 'customize_changeset', '', 0),
(58, 1, '2022-02-26 19:15:43', '2022-02-26 18:15:43', '{\n    \"c2c::cc-hand-section-callout-button\": {\n        \"value\": \"Learn More\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 18:15:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '18b78e5f-b486-4c0c-a97b-773a02ac426a', '', '', '2022-02-26 19:15:43', '2022-02-26 18:15:43', '', 0, 'http://rekrutacja/2022/02/26/18b78e5f-b486-4c0c-a97b-773a02ac426a/', 0, 'customize_changeset', '', 0),
(59, 1, '2022-02-26 19:40:33', '2022-02-26 18:40:33', 'http://rekrutacja/wp-content/uploads/2022/02/cropped-icon2.png', 'cropped-icon2.png', '', 'inherit', 'open', 'closed', '', 'cropped-icon2-png', '', '', '2022-02-26 19:40:33', '2022-02-26 18:40:33', '', 0, 'http://rekrutacja/wp-content/uploads/2022/02/cropped-icon2.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2022-02-26 19:41:21', '2022-02-26 18:41:21', '{\n    \"c2c::cc-question-section-callout-icon\": {\n        \"value\": 59,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 18:40:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2dceba35-d2cd-4927-b325-cf9f9c23852d', '', '', '2022-02-26 19:41:21', '2022-02-26 18:41:21', '', 0, 'http://rekrutacja/?p=60', 0, 'customize_changeset', '', 0),
(61, 1, '2022-02-26 19:42:12', '2022-02-26 18:42:12', '{\n    \"c2c::cc-question-section-callout-img\": {\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 18:42:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5b261ff7-6d99-46bf-9a07-819a0da7f346', '', '', '2022-02-26 19:42:12', '2022-02-26 18:42:12', '', 0, 'http://rekrutacja/2022/02/26/5b261ff7-6d99-46bf-9a07-819a0da7f346/', 0, 'customize_changeset', '', 0),
(62, 1, '2022-02-26 19:43:55', '2022-02-26 18:43:55', '{\n    \"c2c::cc-question-section-callout-headline\": {\n        \"value\": \"Have any Question?\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 18:43:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '91bcbb95-55c9-4e45-8b96-e40ba07f6637', '', '', '2022-02-26 19:43:55', '2022-02-26 18:43:55', '', 0, 'http://rekrutacja/?p=62', 0, 'customize_changeset', '', 0),
(63, 1, '2022-02-26 19:46:45', '2022-02-26 18:46:45', '{\n    \"c2c::cc-question-section-callout-img\": {\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 18:44:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dfce7856-b59f-4c8d-b360-f274c2a925be', '', '', '2022-02-26 19:46:45', '2022-02-26 18:46:45', '', 0, 'http://rekrutacja/?p=63', 0, 'customize_changeset', '', 0),
(64, 1, '2022-02-26 19:46:55', '2022-02-26 18:46:55', '{\n    \"c2c::cc-question-section-callout-img\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 18:46:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f014f123-ad29-47f5-8048-ce0b86f6e55a', '', '', '2022-02-26 19:46:55', '2022-02-26 18:46:55', '', 0, 'http://rekrutacja/2022/02/26/f014f123-ad29-47f5-8048-ce0b86f6e55a/', 0, 'customize_changeset', '', 0),
(65, 1, '2022-02-26 19:47:08', '2022-02-26 18:47:08', '{\n    \"c2c::cc-question-section-callout-img\": {\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 18:47:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ba5858c6-2181-441f-baf3-1d5a4f5c03b4', '', '', '2022-02-26 19:47:08', '2022-02-26 18:47:08', '', 0, 'http://rekrutacja/2022/02/26/ba5858c6-2181-441f-baf3-1d5a4f5c03b4/', 0, 'customize_changeset', '', 0),
(66, 1, '2022-02-26 20:02:26', '0000-00-00 00:00:00', '{\n    \"c2c::cc-numbers-callout-text1\": {\n        \"value\": \"Downloads\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 19:02:26\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '46093d46-1e02-43a0-9c39-50c33cb684a5', '', '', '2022-02-26 20:02:26', '0000-00-00 00:00:00', '', 0, 'http://rekrutacja/?p=66', 0, 'customize_changeset', '', 0),
(67, 1, '2022-02-26 20:03:33', '0000-00-00 00:00:00', '{\n    \"c2c::cc-numbers-callout-text1\": {\n        \"value\": \"Downloads11\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 19:03:33\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '002d8228-1394-4c8a-ab51-0fcf45fd59d7', '', '', '2022-02-26 20:03:33', '0000-00-00 00:00:00', '', 0, 'http://rekrutacja/?p=67', 0, 'customize_changeset', '', 0),
(68, 1, '2022-02-26 20:05:23', '0000-00-00 00:00:00', '{\n    \"c2c::cc-numbers-callout-text1\": {\n        \"value\": \"Downloads11\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 19:05:23\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '74c49f65-cac4-45da-b0e6-b43283a4a7ba', '', '', '2022-02-26 20:05:23', '0000-00-00 00:00:00', '', 0, 'http://rekrutacja/?p=68', 0, 'customize_changeset', '', 0),
(69, 1, '2022-02-26 20:08:36', '2022-02-26 19:08:36', '{\n    \"c2c::cc-numbers-callout-text1\": {\n        \"value\": \"Downloads.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 19:08:36\"\n    },\n    \"c2c::cc-numbers-callout-text2\": {\n        \"value\": \"Active Users\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-26 19:08:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b5501019-474a-482b-adde-b1e2450fa3dd', '', '', '2022-02-26 20:08:36', '2022-02-26 19:08:36', '', 0, 'http://rekrutacja/2022/02/26/b5501019-474a-482b-adde-b1e2450fa3dd/', 0, 'customize_changeset', '', 0),
(70, 1, '2022-02-27 09:16:41', '2022-02-27 08:16:41', '{\n    \"c2c::cc-last-callout-button\": {\n        \"value\": \"Contact Us\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-27 08:16:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '25218407-8e2c-4673-ab1f-64cd9d220c43', '', '', '2022-02-27 09:16:41', '2022-02-27 08:16:41', '', 0, 'http://rekrutacja/2022/02/27/25218407-8e2c-4673-ab1f-64cd9d220c43/', 0, 'customize_changeset', '', 0),
(71, 1, '2022-02-27 09:26:05', '0000-00-00 00:00:00', '{\n    \"c2c::cc-footer-callout-text\": {\n        \"value\": \"\\nFacebook twitter youtube instagram pinterest dribbble behance\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-02-27 08:26:05\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '9b9ce7e6-b52e-4525-9c6e-21257d046bd1', '', '', '2022-02-27 09:26:05', '0000-00-00 00:00:00', '', 0, 'http://rekrutacja/?p=71', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Bez kategorii', 'bez-kategorii', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'mz'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"d12975c5b35030d7b7f224c7aa96cb60fa1c96b37927d5d767a1a7d387a5a3ca\";a:4:{s:10:\"expiration\";i:1646039064;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36\";s:5:\"login\";i:1645866264;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1645872836');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'mz', '$P$BdCJGZyZeLuU0dL8hrNcZmt1XjWgou/', 'mz', 'mzjadame635@gmail.com', 'http://rekrutacja', '2022-02-26 09:04:18', '', 0, 'mz');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
