-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2020 at 01:01 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elementor`
--
CREATE DATABASE IF NOT EXISTS `elementor` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `elementor`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-06-30 07:46:09', '2020-06-30 07:46:09', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://dev.elementor.com', 'yes'),
(2, 'home', 'http://dev.elementor.com', 'yes'),
(3, 'blogname', 'test', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'veronicadar@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:99:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"product_acf/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"product_acf/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"product_acf/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"product_acf/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"product_acf/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"product_acf/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"product_acf/(.+?)/embed/?$\";s:44:\"index.php?product_acf=$matches[1]&embed=true\";s:30:\"product_acf/(.+?)/trackback/?$\";s:38:\"index.php?product_acf=$matches[1]&tb=1\";s:38:\"product_acf/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_acf=$matches[1]&paged=$matches[2]\";s:45:\"product_acf/(.+?)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?product_acf=$matches[1]&cpage=$matches[2]\";s:34:\"product_acf/(.+?)(?:/([0-9]+))?/?$\";s:50:\"index.php?product_acf=$matches[1]&page=$matches[2]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:29:\"product-post/product-post.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwenty', 'yes'),
(41, 'stylesheet', 'twenty-twenty-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:2;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&ndash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1609055166', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:7:{i:1593906371;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1593935170;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1593935171;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1593935215;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1593935217;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1594194370;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'nonce_key', '>}AJwr1^VMgP#%f96}^6|oa2|D47JY+g$zh_8AU86%L@;mOI-J.zQMwHo,9p~5<F', 'no'),
(111, 'nonce_salt', 'Jjy=ahl#A(7#GQHP5UVWS_+-u]U#[3#D6|5+4k6jnSo=NAO>gTwJg1hMgZ9f|-~P', 'no'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(117, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1593891989;s:15:\"version_checked\";s:5:\"5.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(118, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1593511605;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(126, 'auth_key', '79M`6lL<ux&{htJf6Wy]3UW+,^Er!whe+[]9U!@PrL{X#N;T8l&7;<>.e%%y/T_,', 'no'),
(127, 'auth_salt', 'qQwh,>Lw0`:<xseymRA8AK&_Ir<MAC*d*+(EgTw!KJ-BYFTlxVd)bhs+tr@NB6g#', 'no'),
(128, 'logged_in_key', '90MIvRx[NFs*7?Ou+T+8sfS_8?NA_;-@*!is4- Fw3%OU03-5%y1uC@D:b`sT<{z', 'no'),
(129, 'logged_in_salt', 'kd{`8&b]28a$>q$K.uwozWkzO@ZDSgjfZh{_%L<U}Qc6w l%(=Dk7k/3;Nf*H#:$', 'no'),
(130, '_site_transient_timeout_browser_0a48e95c5db00f30047be3181e9619dd', '1594108016', 'no'),
(131, '_site_transient_browser_0a48e95c5db00f30047be3181e9619dd', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"83.0.4103.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(132, '_site_transient_timeout_php_check_90e738eca301c4d89366b1a4d15fe37f', '1594108017', 'no'),
(133, '_site_transient_php_check_90e738eca301c4d89366b1a4d15fe37f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(141, 'can_compress_scripts', '1', 'no'),
(154, 'theme_mods_twenty-twenty-child', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(157, 'current_theme', 'Twenty Twenty Child', 'yes'),
(158, 'theme_switched', '', 'yes'),
(161, 'recently_activated', 'a:0:{}', 'yes'),
(166, 'product_post_version', '0.0.1', 'yes'),
(173, '_transient_health-check-site-status-result', '{\"good\":\"7\",\"recommended\":\"10\",\"critical\":\"0\"}', 'yes'),
(175, 'category_children', 'a:0:{}', 'yes'),
(179, 'recovery_mode_email_last_sent', '1593609180', 'yes'),
(254, '_site_transient_timeout_theme_roots', '1593893791', 'no'),
(255, '_site_transient_theme_roots', 'a:4:{s:19:\"twenty-twenty-child\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(256, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1593891995;s:7:\"checked\";a:4:{s:19:\"twenty-twenty-child\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.6.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(257, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1593891995;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.5\";s:9:\"hello.php\";s:5:\"1.7.2\";s:29:\"product-post/product-post.php\";s:5:\"0.0.1\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2020/06/2020-landscape-1.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:769;s:4:\"file\";s:28:\"2020/06/2020-landscape-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"2020-landscape-1-1024x656.png\";s:5:\"width\";i:1024;s:6:\"height\";i:656;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'twenty-twenty-child'),
(6, 5, '_customize_draft_post_name', 'the-new-umoma-opens-its-doors'),
(7, 6, '_thumbnail_id', '5'),
(8, 6, '_customize_draft_post_name', 'the-new-umoma-opens-its-doors'),
(9, 6, '_customize_changeset_uuid', '8384ebd4-6f14-4384-8f97-ebad672bcd27'),
(10, 7, '_customize_draft_post_name', 'about'),
(11, 7, '_customize_changeset_uuid', '8384ebd4-6f14-4384-8f97-ebad672bcd27'),
(12, 8, '_customize_draft_post_name', 'contact'),
(13, 8, '_customize_changeset_uuid', '8384ebd4-6f14-4384-8f97-ebad672bcd27'),
(14, 9, '_customize_draft_post_name', 'blog'),
(15, 9, '_customize_changeset_uuid', '8384ebd4-6f14-4384-8f97-ebad672bcd27'),
(16, 12, '_edit_lock', '1593543972:1'),
(17, 13, '_edit_lock', '1593603045:1'),
(18, 14, '_edit_lock', '1593603721:1'),
(19, 15, '_edit_lock', '1593603192:1'),
(20, 16, '_edit_lock', '1593607637:1'),
(21, 19, '_edit_lock', '1593609103:1'),
(22, 20, '_edit_lock', '1593892694:1'),
(23, 20, '_edit_last', '1'),
(24, 21, '_edit_lock', '1593615045:1'),
(25, 22, '_edit_lock', '1593615364:1'),
(26, 23, '_edit_lock', '1593615613:1'),
(27, 25, '_edit_lock', '1593615692:1'),
(28, 27, '_edit_lock', '1593615770:1'),
(29, 28, '_edit_lock', '1593615935:1'),
(30, 29, '_edit_lock', '1593616650:1'),
(31, 30, '_edit_lock', '1593616727:1'),
(32, 31, '_edit_lock', '1593621917:1'),
(33, 32, '_edit_lock', '1593622038:1'),
(34, 33, '_edit_lock', '1593622118:1'),
(35, 34, '_edit_lock', '1593622199:1'),
(36, 35, '_edit_lock', '1593891088:1'),
(37, 36, '_wp_attached_file', '2020/07/61cO5sJ09JL._AC_SX522_.jpg'),
(38, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:522;s:6:\"height\";i:668;s:4:\"file\";s:34:\"2020/07/61cO5sJ09JL._AC_SX522_.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"61cO5sJ09JL._AC_SX522_-234x300.jpg\";s:5:\"width\";i:234;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"61cO5sJ09JL._AC_SX522_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 37, '_wp_attached_file', '2020/07/D_NQ_NP_664787-MLM32725289997_102019-V.jpg'),
(40, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:314;s:6:\"height\";i:320;s:4:\"file\";s:50:\"2020/07/D_NQ_NP_664787-MLM32725289997_102019-V.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"D_NQ_NP_664787-MLM32725289997_102019-V-294x300.jpg\";s:5:\"width\";i:294;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"D_NQ_NP_664787-MLM32725289997_102019-V-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 38, '_wp_attached_file', '2020/07/depositphotos_23308324-stock-photo-flower-pot.jpg'),
(42, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:600;s:4:\"file\";s:57:\"2020/07/depositphotos_23308324-stock-photo-flower-pot.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"depositphotos_23308324-stock-photo-flower-pot-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"depositphotos_23308324-stock-photo-flower-pot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 39, '_wp_attached_file', '2020/07/depositphotos_67918859-stock-photo-toy-crocodile-kinder-surprise-green.jpg'),
(44, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:600;s:4:\"file\";s:82:\"2020/07/depositphotos_67918859-stock-photo-toy-crocodile-kinder-surprise-green.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:82:\"depositphotos_67918859-stock-photo-toy-crocodile-kinder-surprise-green-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:82:\"depositphotos_67918859-stock-photo-toy-crocodile-kinder-surprise-green-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 40, '_wp_attached_file', '2020/07/download-1.jpg'),
(46, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:22:\"2020/07/download-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 41, '_wp_attached_file', '2020/07/HTB1ylisclcXBuNjt_Xoq6xIwFXai.jpg'),
(48, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:41:\"2020/07/HTB1ylisclcXBuNjt_Xoq6xIwFXai.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"HTB1ylisclcXBuNjt_Xoq6xIwFXai-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"HTB1ylisclcXBuNjt_Xoq6xIwFXai-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"HTB1ylisclcXBuNjt_Xoq6xIwFXai-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 42, '_wp_attached_file', '2020/07/HTB13ZjCjOMnBKNjSZFCq6x0KFXaI.jpg'),
(50, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:41:\"2020/07/HTB13ZjCjOMnBKNjSZFCq6x0KFXaI.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"HTB13ZjCjOMnBKNjSZFCq6x0KFXaI-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"HTB13ZjCjOMnBKNjSZFCq6x0KFXaI-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"HTB13ZjCjOMnBKNjSZFCq6x0KFXaI-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 43, '_wp_attached_file', '2020/07/Tree-Baby-Action-Figure-Marvel-Doll-Grunt-Guardians-of-The-Galaxy-Model-Toy-Statue-Ornaments-Groot.jpg_q50.jpg'),
(52, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:118:\"2020/07/Tree-Baby-Action-Figure-Marvel-Doll-Grunt-Guardians-of-The-Galaxy-Model-Toy-Statue-Ornaments-Groot.jpg_q50.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:118:\"Tree-Baby-Action-Figure-Marvel-Doll-Grunt-Guardians-of-The-Galaxy-Model-Toy-Statue-Ornaments-Groot.jpg_q50-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:118:\"Tree-Baby-Action-Figure-Marvel-Doll-Grunt-Guardians-of-The-Galaxy-Model-Toy-Statue-Ornaments-Groot.jpg_q50-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:118:\"Tree-Baby-Action-Figure-Marvel-Doll-Grunt-Guardians-of-The-Galaxy-Model-Toy-Statue-Ornaments-Groot.jpg_q50-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 44, '_wp_attached_file', '2020/07/Tree-man-Grutt-Doll-model-Flowerpot-Action-Figures-Cute-Model-Toy-Pen-Pot-Best-Gifts-For.jpg_q50.jpg'),
(54, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:739;s:6:\"height\";i:736;s:4:\"file\";s:108:\"2020/07/Tree-man-Grutt-Doll-model-Flowerpot-Action-Figures-Cute-Model-Toy-Pen-Pot-Best-Gifts-For.jpg_q50.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:108:\"Tree-man-Grutt-Doll-model-Flowerpot-Action-Figures-Cute-Model-Toy-Pen-Pot-Best-Gifts-For.jpg_q50-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:108:\"Tree-man-Grutt-Doll-model-Flowerpot-Action-Figures-Cute-Model-Toy-Pen-Pot-Best-Gifts-For.jpg_q50-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 35, '_edit_last', '1'),
(56, 35, 'second_featured_img', '36,37,40,41,42,43,44'),
(57, 35, 'second_featured_price', ''),
(58, 35, 'product_custom_price_meta_box', ''),
(59, 35, 'second_featured_forsale', '1'),
(60, 45, '_edit_lock', '1593765532:1'),
(61, 35, 'product_custom_price', '6'),
(62, 35, 'second_featured_sale', '0'),
(63, 46, '_edit_lock', '1593685335:1'),
(64, 47, '_edit_lock', '1593686748:1'),
(65, 48, '_edit_lock', '1593878467:1'),
(66, 49, '_wp_attached_file', '2020/07/H72951f70fcb04512a1f405d935d92b5cX.jpg_120x120.jpg'),
(67, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:58:\"2020/07/H72951f70fcb04512a1f405d935d92b5cX.jpg_120x120.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 50, '_wp_attached_file', '2020/07/Hfd86bdd6e46a49a0930fc1cccda59224y.jpg_120x120.jpg'),
(69, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:58:\"2020/07/Hfd86bdd6e46a49a0930fc1cccda59224y.jpg_120x120.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 51, '_wp_attached_file', '2020/07/HTB1DR1MVCzqK1RjSZFpq6ykSXXa7.jpg_120x120.jpg'),
(71, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:98;s:4:\"file\";s:53:\"2020/07/HTB1DR1MVCzqK1RjSZFpq6ykSXXa7.jpg_120x120.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(72, 52, '_wp_attached_file', '2020/07/HTB1TZrtTMHqK1RjSZFEq6AGMXXaP.jpg_120x120.jpg'),
(73, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:53:\"2020/07/HTB1TZrtTMHqK1RjSZFEq6AGMXXaP.jpg_120x120.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(74, 48, '_edit_last', '1'),
(75, 48, 'second_featured_img', '52,50,49,51'),
(76, 48, 'product_custom_price', '5'),
(77, 48, 'second_featured_forsale', '0'),
(78, 48, 'youtube_videoURL', 'https://www.youtube.com/watch?v=2OEL4P1Rz04'),
(79, 54, '_wp_attached_file', '2020/07/41eqIRwF5AL.jpg'),
(80, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:23:\"2020/07/41eqIRwF5AL.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"41eqIRwF5AL-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"41eqIRwF5AL-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 55, '_wp_attached_file', '2020/07/41QnHqScH1L._QL70_ML2_.jpg'),
(82, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:34:\"2020/07/41QnHqScH1L._QL70_ML2_.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"41QnHqScH1L._QL70_ML2_-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"41QnHqScH1L._QL70_ML2_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(83, 56, '_wp_attached_file', '2020/07/41zZRb95d9L._QL70_ML2_.jpg'),
(84, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:34:\"2020/07/41zZRb95d9L._QL70_ML2_.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"41zZRb95d9L._QL70_ML2_-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"41zZRb95d9L._QL70_ML2_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 57, '_wp_attached_file', '2020/07/download-2.jpg'),
(86, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:22:\"2020/07/download-2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 58, '_wp_attached_file', '2020/07/Flower-Keyring-Lotus-and-Daisy-font-b-Sunflower-b-font-font-b-Keychain-b-font-Glass.jpg_300x300q75.jpg'),
(88, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:110:\"2020/07/Flower-Keyring-Lotus-and-Daisy-font-b-Sunflower-b-font-font-b-Keychain-b-font-Glass.jpg_300x300q75.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:110:\"Flower-Keyring-Lotus-and-Daisy-font-b-Sunflower-b-font-font-b-Keychain-b-font-Glass.jpg_300x300q75-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(89, 59, '_wp_attached_file', '2020/07/H7299271e9f3e4995a7886dc48ad29f90m.jpg'),
(90, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:46:\"2020/07/H7299271e9f3e4995a7886dc48ad29f90m.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"H7299271e9f3e4995a7886dc48ad29f90m-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"H7299271e9f3e4995a7886dc48ad29f90m-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"H7299271e9f3e4995a7886dc48ad29f90m-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 60, '_wp_attached_file', '2020/07/il_570xN.1721566521_euu4.jpg'),
(92, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:570;s:6:\"height\";i:511;s:4:\"file\";s:36:\"2020/07/il_570xN.1721566521_euu4.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"il_570xN.1721566521_euu4-300x269.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:269;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"il_570xN.1721566521_euu4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 61, '_wp_attached_file', '2020/07/images-1.jpg'),
(94, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2020/07/images-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 62, '_wp_attached_file', '2020/07/images-2.jpg'),
(96, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2020/07/images-2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 63, '_wp_attached_file', '2020/07/41eqIRwF5AL-Copy.jpg'),
(98, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:28:\"2020/07/41eqIRwF5AL-Copy.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"41eqIRwF5AL-Copy-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"41eqIRwF5AL-Copy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 64, '_wp_attached_file', '2020/07/Flower-Keyring-Lotus-and-Daisy-font-b-Sunflower-b-font-font-b-Keychain-b-font-Glass.jpg_300x300q75-Copy.jpg'),
(100, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:115:\"2020/07/Flower-Keyring-Lotus-and-Daisy-font-b-Sunflower-b-font-font-b-Keychain-b-font-Glass.jpg_300x300q75-Copy.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:115:\"Flower-Keyring-Lotus-and-Daisy-font-b-Sunflower-b-font-font-b-Keychain-b-font-Glass.jpg_300x300q75-Copy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 65, '_wp_attached_file', '2020/07/H7299271e9f3e4995a7886dc48ad29f90m-Copy.jpg'),
(102, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:51:\"2020/07/H7299271e9f3e4995a7886dc48ad29f90m-Copy.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"H7299271e9f3e4995a7886dc48ad29f90m-Copy-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"H7299271e9f3e4995a7886dc48ad29f90m-Copy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:51:\"H7299271e9f3e4995a7886dc48ad29f90m-Copy-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 66, '_wp_attached_file', '2020/07/images-2-Copy.jpg'),
(104, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:25:\"2020/07/images-2-Copy.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"images-2-Copy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 67, '_wp_attached_file', '2020/07/rBVaVV55r-OARjCOAALC8cCzh1E156-Copy.jpg'),
(106, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:47:\"2020/07/rBVaVV55r-OARjCOAALC8cCzh1E156-Copy.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"rBVaVV55r-OARjCOAALC8cCzh1E156-Copy-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"rBVaVV55r-OARjCOAALC8cCzh1E156-Copy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(107, 69, '_wp_attached_file', '2020/07/5d317d835b58ba7c5b600bb2-large.jpg'),
(108, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:42:\"2020/07/5d317d835b58ba7c5b600bb2-large.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"5d317d835b58ba7c5b600bb2-large-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"5d317d835b58ba7c5b600bb2-large-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 20, 'second_featured_img', '67,66,65,63,64,62'),
(110, 20, 'product_custom_price', '7'),
(111, 20, 'second_featured_forsale', '0'),
(112, 20, 'youtube_videoURL', 'https://www.youtube.com/watch?v=Vb2ZXRh74WU'),
(113, 2, '_edit_lock', '1593790762:1'),
(114, 70, '_edit_lock', '1593766089:1'),
(115, 1, '_edit_lock', '1593865776:1'),
(116, 35, 'youtube_videoURL', ''),
(117, 48, '_thumbnail_id', '49'),
(118, 20, '_thumbnail_id', '69'),
(119, 35, '_thumbnail_id', '43'),
(120, 48, '_wp_trash_meta_status', 'publish'),
(121, 48, '_wp_trash_meta_time', '1593891239'),
(122, 48, '_wp_desired_post_slug', '48-2'),
(123, 72, '_edit_lock', '1593891269:1'),
(124, 72, '_edit_last', '1'),
(125, 72, '_thumbnail_id', '42'),
(126, 72, 'second_featured_img', '37,36,44,43,41,42'),
(127, 72, 'product_custom_price', '45'),
(128, 72, 'second_featured_forsale', '0'),
(129, 72, 'youtube_videoURL', 'https://www.youtube.com/watch?v=NRhGqx4-ffc'),
(130, 73, '_edit_lock', '1593891394:1'),
(131, 73, '_edit_last', '1'),
(132, 73, '_thumbnail_id', '42'),
(133, 73, 'second_featured_img', '44,43,42,41,37,36'),
(134, 73, 'product_custom_price', '45'),
(135, 73, 'second_featured_forsale', '1'),
(136, 73, 'youtube_videoURL', 'https://www.youtube.com/watch?v=TtHIbemyBYc'),
(137, 74, '_edit_lock', '1593891512:1'),
(138, 74, '_edit_last', '1'),
(139, 74, '_thumbnail_id', '44'),
(140, 74, 'second_featured_img', '36,43,37,40,41,42'),
(141, 74, 'product_custom_price', '34'),
(142, 74, 'second_featured_forsale', '0'),
(143, 74, 'youtube_videoURL', 'https://www.youtube.com/watch?v=TtHIbemyBYc'),
(144, 75, '_edit_lock', '1593892668:1'),
(145, 75, '_edit_last', '1'),
(146, 75, '_thumbnail_id', '42'),
(147, 75, 'second_featured_img', '44,43,36,41,42,37'),
(148, 75, 'product_custom_price', '35'),
(149, 75, 'second_featured_forsale', '1'),
(150, 75, 'youtube_videoURL', 'https://www.youtube.com/watch?v=TtHIbemyBYc');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-06-30 07:46:09', '2020-06-30 07:46:09', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-06-30 07:46:09', '2020-06-30 07:46:09', '', 0, 'http://dev.elementor.com/?p=1', 0, 'post', '', 1),
(2, 1, '2020-06-30 07:46:09', '2020-06-30 07:46:09', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://dev.elementor.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-06-30 07:46:09', '2020-06-30 07:46:09', '', 0, 'http://dev.elementor.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-06-30 07:46:09', '2020-06-30 07:46:09', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://dev.elementor.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-06-30 07:46:09', '2020-06-30 07:46:09', '', 0, 'http://dev.elementor.com/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-06-30 07:46:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-06-30 07:46:57', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?p=4', 0, 'post', '', 0),
(5, 1, '2020-06-30 10:00:40', '0000-00-00 00:00:00', '', 'The New UMoMA Opens its Doors', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-06-30 10:00:39', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/wp-content/uploads/2020/06/2020-landscape-1.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-06-30 10:00:40', '0000-00-00 00:00:00', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://dev.elementor.com/wp-content/themes/twenty-twenty-child/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Works and Days</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://dev.elementor.com/wp-content/themes/twenty-twenty-child/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Theatre of Operations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://dev.elementor.com/wp-content/themes/twenty-twenty-child/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>The Life I Deserve</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://dev.elementor.com/wp-content/themes/twenty-twenty-child/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>From Signac to Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://dev.elementor.com/wp-content/themes/twenty-twenty-child/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">&#8220;Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.&#8221;</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">With seven floors of striking architecture, UMoMA shows exhibitions of international contemporary art, sometimes along with art historical retrospectives. Existential, political and philosophical issues are intrinsic to our programme. As visitor you are invited to guided tours artist talks, lectures, film screenings and other events with free admission</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>The exhibitions are produced by UMoMA in collaboration with artists and museums around the world and they often attract international attention. UMoMA has received a Special Commendation from the European Museum of the Year, and was among the top candidates for the Swedish Museum of the Year Award as well as for the Council of Europe Museum Prize.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">Become a Member and Get Exclusive Offers!</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">Members get access to exclusive exhibits and sales. Our memberships cost $99.99 and are billed annually.</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Join the Club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://dev.elementor.com/wp-content/themes/twenty-twenty-child/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://dev.elementor.com/wp-content/themes/twenty-twenty-child/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://dev.elementor.com/wp-content/themes/twenty-twenty-child/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://dev.elementor.com/wp-content/themes/twenty-twenty-child/assets/images/2020-square-1.png\" data-link=\"http://dev.elementor.com/wp-content/themes/twenty-twenty-child/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', 'The New UMoMA Opens its Doors', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-30 10:00:40', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?page_id=6', 0, 'page', '', 0),
(7, 1, '2020-06-30 10:00:40', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-30 10:00:40', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-06-30 10:00:40', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-30 10:00:40', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-06-30 10:00:40', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-30 10:00:40', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-06-30 10:00:40', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4e7dc6f9120d294ca31ddd36b4da059c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"cee1d6d04178049d11fb981f89594351\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://dev.elementor.com/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"twenty-twenty-child::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://dev.elementor.com/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"twenty-twenty-child::nav_menu_locations[expanded]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"nav_menu[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"nav_menu_item[-10]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"nav_menu_item[-11]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"nav_menu_item[-12]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"nav_menu_item[-13]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"twenty-twenty-child::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 6,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    },\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"text-2\"\n            ],\n            \"sidebar-2\": [\n                \"text-3\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-30 10:00:40\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '8384ebd4-6f14-4384-8f97-ebad672bcd27', '', '', '2020-06-30 10:00:40', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?p=10', 0, 'customize_changeset', '', 0),
(11, 2, '2020-06-30 10:14:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-06-30 10:14:45', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?p=11', 0, 'post', '', 0),
(12, 1, '2020-06-30 19:08:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-06-30 19:08:24', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?p=12', 0, 'post', '', 0),
(13, 1, '2020-07-01 11:26:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 11:26:16', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=co_readings&p=13', 0, 'co_readings', '', 0),
(14, 1, '2020-07-01 11:31:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-01 11:31:54', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?p=14', 0, 'post', '', 0),
(15, 1, '2020-07-01 11:33:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-01 11:33:45', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?p=15', 0, 'post', '', 0),
(16, 1, '2020-07-01 12:36:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 12:36:14', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=co_cards&p=16', 0, 'co_cards', '', 0),
(17, 1, '2020-07-01 12:47:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 12:47:17', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=co_cards&p=17', 0, 'co_cards', '', 0),
(18, 1, '2020-07-01 12:47:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 12:47:26', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=co_cards&p=18', 0, 'co_cards', '', 0),
(19, 1, '2020-07-01 13:09:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 13:09:11', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=19', 0, 'product_acf', '', 0),
(20, 1, '2020-07-02 11:22:09', '2020-07-02 11:22:09', '<p>Tis listing is for a personalized galaxy pendant keychain with a hand-stamped initial charm. We can also make this into a necklace instead, just ...</p>', 'Keychain straight', '', 'publish', 'closed', 'closed', '', 'keychain-straight', '', '', '2020-07-04 16:04:28', '2020-07-04 16:04:28', '', 0, 'http://dev.elementor.com/?post_type=product_acf&#038;p=20', 0, 'product_acf', '', 0),
(21, 1, '2020-07-01 14:44:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 14:44:14', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=21', 0, 'product_acf', '', 0),
(22, 1, '2020-07-01 14:50:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 14:50:50', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=22', 0, 'product_acf', '', 0),
(23, 1, '2020-07-01 14:56:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 14:56:06', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=23', 0, 'product_acf', '', 0),
(24, 1, '2020-07-01 15:00:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 15:00:15', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=24', 0, 'product_acf', '', 0),
(25, 1, '2020-07-01 15:00:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 15:00:31', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=25', 0, 'product_acf', '', 0),
(26, 1, '2020-07-01 15:01:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 15:01:35', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=26', 0, 'product_acf', '', 0),
(27, 1, '2020-07-01 15:01:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 15:01:44', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=27', 0, 'product_acf', '', 0),
(28, 1, '2020-07-01 15:02:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 15:02:53', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=28', 0, 'product_acf', '', 0),
(29, 1, '2020-07-01 15:05:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 15:05:37', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=29', 0, 'product_acf', '', 0),
(30, 1, '2020-07-01 15:17:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 15:17:32', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=30', 0, 'product_acf', '', 0),
(31, 1, '2020-07-01 15:18:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 15:18:51', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=31', 0, 'product_acf', '', 0),
(32, 1, '2020-07-01 16:45:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 16:45:18', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=32', 0, 'product_acf', '', 0),
(33, 1, '2020-07-01 16:47:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 16:47:19', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=33', 0, 'product_acf', '', 0),
(34, 1, '2020-07-01 16:48:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-01 16:48:44', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=34', 0, 'product_acf', '', 0),
(35, 1, '2020-07-01 17:03:28', '2020-07-01 17:03:28', '<p>\r\nHot  Flowerpot Cute Toy Pen Pot Holder \r\nPVC Hero Model Baby Tree\r\nMan Garden Plant Pot Groot Dropshipping\r\n</p>\r\n', 'Flower Pot Baby Groot', '', 'publish', 'closed', 'closed', '', 'flower-pot-baby-groot', '', '', '2020-07-04 16:05:17', '2020-07-04 16:05:17', '', 0, 'http://dev.elementor.com/?post_type=product_acf&#038;p=35', 0, 'product_acf', '', 0),
(36, 1, '2020-07-01 16:59:56', '2020-07-01 16:59:56', '', '61cO5sJ09JL._AC_SX522_', '', 'inherit', 'open', 'closed', '', '61co5sj09jl-_ac_sx522_', '', '', '2020-07-01 16:59:56', '2020-07-01 16:59:56', '', 35, 'http://dev.elementor.com/wp-content/uploads/2020/07/61cO5sJ09JL._AC_SX522_.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2020-07-01 16:59:57', '2020-07-01 16:59:57', '', 'D_NQ_NP_664787-MLM32725289997_102019-V', '', 'inherit', 'open', 'closed', '', 'd_nq_np_664787-mlm32725289997_102019-v', '', '', '2020-07-01 16:59:57', '2020-07-01 16:59:57', '', 35, 'http://dev.elementor.com/wp-content/uploads/2020/07/D_NQ_NP_664787-MLM32725289997_102019-V.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2020-07-01 16:59:58', '2020-07-01 16:59:58', '', 'depositphotos_23308324-stock-photo-flower-pot', '', 'inherit', 'open', 'closed', '', 'depositphotos_23308324-stock-photo-flower-pot', '', '', '2020-07-01 16:59:58', '2020-07-01 16:59:58', '', 35, 'http://dev.elementor.com/wp-content/uploads/2020/07/depositphotos_23308324-stock-photo-flower-pot.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2020-07-01 16:59:58', '2020-07-01 16:59:58', '', 'depositphotos_67918859-stock-photo-toy-crocodile-kinder-surprise-green', '', 'inherit', 'open', 'closed', '', 'depositphotos_67918859-stock-photo-toy-crocodile-kinder-surprise-green', '', '', '2020-07-01 16:59:58', '2020-07-01 16:59:58', '', 35, 'http://dev.elementor.com/wp-content/uploads/2020/07/depositphotos_67918859-stock-photo-toy-crocodile-kinder-surprise-green.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2020-07-01 16:59:59', '2020-07-01 16:59:59', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2020-07-01 16:59:59', '2020-07-01 16:59:59', '', 35, 'http://dev.elementor.com/wp-content/uploads/2020/07/download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2020-07-01 17:00:00', '2020-07-01 17:00:00', '', 'HTB1ylisclcXBuNjt_Xoq6xIwFXai', '', 'inherit', 'open', 'closed', '', 'htb1ylisclcxbunjt_xoq6xiwfxai', '', '', '2020-07-01 17:00:00', '2020-07-01 17:00:00', '', 35, 'http://dev.elementor.com/wp-content/uploads/2020/07/HTB1ylisclcXBuNjt_Xoq6xIwFXai.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2020-07-01 17:00:04', '2020-07-01 17:00:04', '', 'HTB13ZjCjOMnBKNjSZFCq6x0KFXaI', '', 'inherit', 'open', 'closed', '', 'htb13zjcjomnbknjszfcq6x0kfxai', '', '', '2020-07-01 17:00:04', '2020-07-01 17:00:04', '', 35, 'http://dev.elementor.com/wp-content/uploads/2020/07/HTB13ZjCjOMnBKNjSZFCq6x0KFXaI.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2020-07-01 17:00:06', '2020-07-01 17:00:06', '', 'Tree-Baby-Action-Figure-Marvel-Doll-Grunt-Guardians-of-The-Galaxy-Model-Toy-Statue-Ornaments-Groot.jpg_q50', '', 'inherit', 'open', 'closed', '', 'tree-baby-action-figure-marvel-doll-grunt-guardians-of-the-galaxy-model-toy-statue-ornaments-groot-jpg_q50', '', '', '2020-07-01 17:00:06', '2020-07-01 17:00:06', '', 35, 'http://dev.elementor.com/wp-content/uploads/2020/07/Tree-Baby-Action-Figure-Marvel-Doll-Grunt-Guardians-of-The-Galaxy-Model-Toy-Statue-Ornaments-Groot.jpg_q50.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2020-07-01 17:00:07', '2020-07-01 17:00:07', '', 'Tree-man-Grutt-Doll-model-Flowerpot-Action-Figures-Cute-Model-Toy-Pen-Pot-Best-Gifts-For.jpg_q50', '', 'inherit', 'open', 'closed', '', 'tree-man-grutt-doll-model-flowerpot-action-figures-cute-model-toy-pen-pot-best-gifts-for-jpg_q50', '', '', '2020-07-01 17:00:07', '2020-07-01 17:00:07', '', 35, 'http://dev.elementor.com/wp-content/uploads/2020/07/Tree-man-Grutt-Doll-model-Flowerpot-Action-Figures-Cute-Model-Toy-Pen-Pot-Best-Gifts-For.jpg_q50.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2020-07-01 18:30:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-01 18:30:25', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?p=45', 0, 'post', '', 0),
(46, 1, '2020-07-02 09:52:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-02 09:52:59', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=46', 0, 'product_acf', '', 0),
(47, 1, '2020-07-02 10:41:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-02 10:41:51', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=47', 0, 'product_acf', '', 0),
(48, 1, '2020-07-02 11:01:05', '2020-07-02 11:01:05', '<p>LED Garland 1m 2m 5m 10m Christmas Wedding Home Party Decorative Magic Garden Garland Battery Indoor Outdoor Party Lighting</p>', 'Lighting fixture Store', '', 'trash', 'closed', 'closed', '', '48-2__trashed', '', '', '2020-07-04 19:33:59', '2020-07-04 19:33:59', '', 0, 'http://dev.elementor.com/?post_type=product_acf&#038;p=48', 0, 'product_acf', '', 0),
(49, 1, '2020-07-02 10:59:20', '2020-07-02 10:59:20', '', 'H72951f70fcb04512a1f405d935d92b5cX.jpg_120x120', '', 'inherit', 'open', 'closed', '', 'h72951f70fcb04512a1f405d935d92b5cx-jpg_120x120', '', '', '2020-07-02 10:59:20', '2020-07-02 10:59:20', '', 48, 'http://dev.elementor.com/wp-content/uploads/2020/07/H72951f70fcb04512a1f405d935d92b5cX.jpg_120x120.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2020-07-02 10:59:21', '2020-07-02 10:59:21', '', 'Hfd86bdd6e46a49a0930fc1cccda59224y.jpg_120x120', '', 'inherit', 'open', 'closed', '', 'hfd86bdd6e46a49a0930fc1cccda59224y-jpg_120x120', '', '', '2020-07-02 10:59:21', '2020-07-02 10:59:21', '', 48, 'http://dev.elementor.com/wp-content/uploads/2020/07/Hfd86bdd6e46a49a0930fc1cccda59224y.jpg_120x120.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2020-07-02 10:59:21', '2020-07-02 10:59:21', '', 'HTB1DR1MVCzqK1RjSZFpq6ykSXXa7.jpg_120x120', '', 'inherit', 'open', 'closed', '', 'htb1dr1mvczqk1rjszfpq6yksxxa7-jpg_120x120', '', '', '2020-07-02 10:59:21', '2020-07-02 10:59:21', '', 48, 'http://dev.elementor.com/wp-content/uploads/2020/07/HTB1DR1MVCzqK1RjSZFpq6ykSXXa7.jpg_120x120.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2020-07-02 10:59:22', '2020-07-02 10:59:22', '', 'HTB1TZrtTMHqK1RjSZFEq6AGMXXaP.jpg_120x120', '', 'inherit', 'open', 'closed', '', 'htb1tzrttmhqk1rjszfeq6agmxxap-jpg_120x120', '', '', '2020-07-02 10:59:22', '2020-07-02 10:59:22', '', 48, 'http://dev.elementor.com/wp-content/uploads/2020/07/HTB1TZrtTMHqK1RjSZFEq6AGMXXaP.jpg_120x120.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2020-07-04 15:48:06', '2020-07-04 15:48:06', '<p>LED Garland 1m 2m 5m 10m Christmas Wedding Home Party Decorative Magic Garden Garland Battery Indoor Outdoor Party Lighting</p>', 'Lighting fixture Store', '', 'inherit', 'closed', 'closed', '', '48-autosave-v1', '', '', '2020-07-04 15:48:06', '2020-07-04 15:48:06', '', 48, 'http://dev.elementor.com/48-autosave-v1/', 0, 'revision', '', 0),
(54, 1, '2020-07-02 11:17:40', '2020-07-02 11:17:40', '', '41eqIRwF5AL', '', 'inherit', 'open', 'closed', '', '41eqirwf5al', '', '', '2020-07-02 11:17:40', '2020-07-02 11:17:40', '', 0, 'http://dev.elementor.com/wp-content/uploads/2020/07/41eqIRwF5AL.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2020-07-02 11:17:41', '2020-07-02 11:17:41', '', '41QnHqScH1L._QL70_ML2_', '', 'inherit', 'open', 'closed', '', '41qnhqsch1l-_ql70_ml2_', '', '', '2020-07-02 11:17:41', '2020-07-02 11:17:41', '', 0, 'http://dev.elementor.com/wp-content/uploads/2020/07/41QnHqScH1L._QL70_ML2_.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2020-07-02 11:17:42', '2020-07-02 11:17:42', '', '41zZRb95d9L._QL70_ML2_', '', 'inherit', 'open', 'closed', '', '41zzrb95d9l-_ql70_ml2_', '', '', '2020-07-02 11:17:42', '2020-07-02 11:17:42', '', 0, 'http://dev.elementor.com/wp-content/uploads/2020/07/41zZRb95d9L._QL70_ML2_.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2020-07-02 11:17:42', '2020-07-02 11:17:42', '', 'download (2)', '', 'inherit', 'open', 'closed', '', 'download-2', '', '', '2020-07-02 11:17:42', '2020-07-02 11:17:42', '', 0, 'http://dev.elementor.com/wp-content/uploads/2020/07/download-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2020-07-02 11:17:43', '2020-07-02 11:17:43', '', 'Flower-Keyring-Lotus-and-Daisy-font-b-Sunflower-b-font-font-b-Keychain-b-font-Glass.jpg_300x300q75', '', 'inherit', 'open', 'closed', '', 'flower-keyring-lotus-and-daisy-font-b-sunflower-b-font-font-b-keychain-b-font-glass-jpg_300x300q75', '', '', '2020-07-02 11:17:43', '2020-07-02 11:17:43', '', 0, 'http://dev.elementor.com/wp-content/uploads/2020/07/Flower-Keyring-Lotus-and-Daisy-font-b-Sunflower-b-font-font-b-Keychain-b-font-Glass.jpg_300x300q75.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2020-07-02 11:17:44', '2020-07-02 11:17:44', '', 'H7299271e9f3e4995a7886dc48ad29f90m', '', 'inherit', 'open', 'closed', '', 'h7299271e9f3e4995a7886dc48ad29f90m', '', '', '2020-07-02 11:17:44', '2020-07-02 11:17:44', '', 0, 'http://dev.elementor.com/wp-content/uploads/2020/07/H7299271e9f3e4995a7886dc48ad29f90m.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2020-07-02 11:17:45', '2020-07-02 11:17:45', '', 'il_570xN.1721566521_euu4', '', 'inherit', 'open', 'closed', '', 'il_570xn-1721566521_euu4', '', '', '2020-07-02 11:17:45', '2020-07-02 11:17:45', '', 0, 'http://dev.elementor.com/wp-content/uploads/2020/07/il_570xN.1721566521_euu4.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2020-07-02 11:17:46', '2020-07-02 11:17:46', '', 'images (1)', '', 'inherit', 'open', 'closed', '', 'images-1', '', '', '2020-07-02 11:17:46', '2020-07-02 11:17:46', '', 0, 'http://dev.elementor.com/wp-content/uploads/2020/07/images-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2020-07-02 11:17:47', '2020-07-02 11:17:47', '', 'images (2)', '', 'inherit', 'open', 'closed', '', 'images-2', '', '', '2020-07-02 11:17:47', '2020-07-02 11:17:47', '', 0, 'http://dev.elementor.com/wp-content/uploads/2020/07/images-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2020-07-02 11:17:48', '2020-07-02 11:17:48', '', '41eqIRwF5AL - Copy', '', 'inherit', 'open', 'closed', '', '41eqirwf5al-copy', '', '', '2020-07-02 11:17:48', '2020-07-02 11:17:48', '', 0, 'http://dev.elementor.com/wp-content/uploads/2020/07/41eqIRwF5AL-Copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2020-07-02 11:17:48', '2020-07-02 11:17:48', '', 'Flower-Keyring-Lotus-and-Daisy-font-b-Sunflower-b-font-font-b-Keychain-b-font-Glass.jpg_300x300q75 - Copy', '', 'inherit', 'open', 'closed', '', 'flower-keyring-lotus-and-daisy-font-b-sunflower-b-font-font-b-keychain-b-font-glass-jpg_300x300q75-copy', '', '', '2020-07-02 11:17:48', '2020-07-02 11:17:48', '', 0, 'http://dev.elementor.com/wp-content/uploads/2020/07/Flower-Keyring-Lotus-and-Daisy-font-b-Sunflower-b-font-font-b-Keychain-b-font-Glass.jpg_300x300q75-Copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2020-07-02 11:17:49', '2020-07-02 11:17:49', '', 'H7299271e9f3e4995a7886dc48ad29f90m - Copy', '', 'inherit', 'open', 'closed', '', 'h7299271e9f3e4995a7886dc48ad29f90m-copy', '', '', '2020-07-02 11:17:49', '2020-07-02 11:17:49', '', 0, 'http://dev.elementor.com/wp-content/uploads/2020/07/H7299271e9f3e4995a7886dc48ad29f90m-Copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2020-07-02 11:17:50', '2020-07-02 11:17:50', '', 'images (2) - Copy', '', 'inherit', 'open', 'closed', '', 'images-2-copy', '', '', '2020-07-02 11:17:50', '2020-07-02 11:17:50', '', 0, 'http://dev.elementor.com/wp-content/uploads/2020/07/images-2-Copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2020-07-02 11:17:51', '2020-07-02 11:17:51', '', 'rBVaVV55r-OARjCOAALC8cCzh1E156 - Copy', '', 'inherit', 'open', 'closed', '', 'rbvavv55r-oarjcoaalc8cczh1e156-copy', '', '', '2020-07-02 11:17:51', '2020-07-02 11:17:51', '', 0, 'http://dev.elementor.com/wp-content/uploads/2020/07/rBVaVV55r-OARjCOAALC8cCzh1E156-Copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2020-07-02 11:18:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-02 11:18:53', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=68', 0, 'product_acf', '', 0),
(69, 1, '2020-07-02 11:20:05', '2020-07-02 11:20:05', '', '5d317d835b58ba7c5b600bb2-large', '', 'inherit', 'open', 'closed', '', '5d317d835b58ba7c5b600bb2-large', '', '', '2020-07-02 11:20:05', '2020-07-02 11:20:05', '', 20, 'http://dev.elementor.com/wp-content/uploads/2020/07/5d317d835b58ba7c5b600bb2-large.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2020-07-02 11:28:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-02 11:28:30', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?page_id=70', 0, 'page', '', 0),
(71, 1, '2020-07-04 14:21:45', '2020-07-04 14:21:45', '<img class=\"size-medium wp-image-43 alignleft\" src=\"http://dev.elementor.com/wp-content/uploads/2020/07/Tree-Baby-Action-Figure-Marvel-Doll-Grunt-Guardians-of-The-Galaxy-Model-Toy-Statue-Ornaments-Groot.jpg_q50-300x300.jpg\" alt=\"\" width=\"300\" height=\"300\" />Hot Flowerpot Cute Toy Pen Pot Holder\nPVC Hero Model Baby Tree\nMan Garden Plant Pot Groot Dropshipping', 'Flower Pot Baby Groot', '', 'inherit', 'closed', 'closed', '', '35-autosave-v1', '', '', '2020-07-04 14:21:45', '2020-07-04 14:21:45', '', 35, 'http://dev.elementor.com/35-autosave-v1/', 0, 'revision', '', 0),
(72, 1, '2020-07-04 19:36:41', '2020-07-04 19:36:41', '', 'Flower Pot Baby Groot 01', '', 'publish', 'closed', 'closed', '', 'flower-pot-baby-groot-01', '', '', '2020-07-04 19:36:41', '2020-07-04 19:36:41', '', 0, 'http://dev.elementor.com/?post_type=product_acf&#038;p=72', 0, 'product_acf', '', 0),
(73, 1, '2020-07-04 19:38:29', '2020-07-04 19:38:29', '', 'Flower Pot Baby Groot 02', '', 'publish', 'closed', 'closed', '', 'flower-pot-baby-groot-02', '', '', '2020-07-04 19:38:29', '2020-07-04 19:38:29', '', 0, 'http://dev.elementor.com/?post_type=product_acf&#038;p=73', 0, 'product_acf', '', 0),
(74, 1, '2020-07-04 19:39:55', '2020-07-04 19:39:55', '', 'Flower Pot Baby Groot 03', '', 'publish', 'closed', 'closed', '', 'flower-pot-baby-groot-03', '', '', '2020-07-04 19:39:55', '2020-07-04 19:39:55', '', 0, 'http://dev.elementor.com/?post_type=product_acf&#038;p=74', 0, 'product_acf', '', 0),
(75, 1, '2020-07-04 19:42:09', '2020-07-04 19:42:09', '', 'Flower Pot Baby Groot 04', '', 'publish', 'closed', 'closed', '', 'flower-pot-baby-groot-04', '', '', '2020-07-04 19:42:09', '2020-07-04 19:42:09', '', 0, 'http://dev.elementor.com/?post_type=product_acf&#038;p=75', 0, 'product_acf', '', 0),
(76, 1, '2020-07-04 20:00:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-04 20:00:38', '0000-00-00 00:00:00', '', 0, 'http://dev.elementor.com/?post_type=product_acf&p=76', 0, 'product_acf', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"3415c1e93a7b42a1082e42e4ed0af34007d5b6e886f87e9d1b1e229ba6ac24d4\";a:4:{s:10:\"expiration\";i:1594712814;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36\";s:5:\"login\";i:1593503214;}s:64:\"f075e4f10cccb3be2cc8d72cbe14c03379172caa4b8dee96814b925454a29299\";a:4:{s:10:\"expiration\";i:1594038585;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36\";s:5:\"login\";i:1593865785;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 2, 'nickname', 'wp-test'),
(20, 2, 'first_name', 'Veronica'),
(21, 2, 'last_name', ''),
(22, 2, 'description', ''),
(23, 2, 'rich_editing', 'true'),
(24, 2, 'syntax_highlighting', 'true'),
(25, 2, 'comment_shortcuts', 'false'),
(26, 2, 'admin_color', 'fresh'),
(27, 2, 'use_ssl', '0'),
(28, 2, 'show_admin_bar_front', 'true'),
(29, 2, 'locale', ''),
(30, 2, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(31, 2, 'wp_user_level', '7'),
(32, 2, 'dismissed_wp_pointers', ''),
(34, 2, 'wp_dashboard_quick_press_last_post_id', '11'),
(35, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(37, 1, 'wp_user-settings', 'editor=html&libraryContent=browse&hidetb=1'),
(38, 1, 'wp_user-settings-time', '1593876226'),
(39, 1, 'closedpostboxes_product_acf', 'a:0:{}'),
(40, 1, 'metaboxhidden_product_acf', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BLmnyFNSSdajYZAHRjc578Tqpmoe5l0', 'admin', 'veronicadar@gmail.com', 'http://dev.elementor.com', '2020-06-30 07:46:09', '', 0, 'admin'),
(2, 'wp-test', '$P$BR7J4gB31AFVjQQkuweB63VZlr6CBU/', 'wp-test', 'wptest@elementor.com', '', '2020-06-30 10:08:45', '1593511727:$P$B5OpxdHN15Qw0TpgwMgb3RBx/yz55A.', 0, 'Veronica');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
