-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 10, 2018 at 08:15 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `villetaqueria`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

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
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-04-26 09:39:20', '2018-04-26 09:39:20', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

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
(1, 'siteurl', 'http://182.76.249.189/villetaqueria', 'yes'),
(2, 'home', 'http://182.76.249.189/villetaqueria', 'yes'),
(3, 'blogname', 'Ville Taqueria', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sanjib.ghosh@sbr-technologies.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:206:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:9:"slider/?$";s:26:"index.php?post_type=slider";s:39:"slider/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=slider&feed=$matches[1]";s:34:"slider/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=slider&feed=$matches[1]";s:26:"slider/page/([0-9]{1,})/?$";s:44:"index.php?post_type=slider&paged=$matches[1]";s:9:"dishes/?$";s:26:"index.php?post_type=dishes";s:39:"dishes/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=dishes&feed=$matches[1]";s:34:"dishes/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=dishes&feed=$matches[1]";s:26:"dishes/page/([0-9]{1,})/?$";s:44:"index.php?post_type=dishes&paged=$matches[1]";s:7:"work/?$";s:24:"index.php?post_type=work";s:37:"work/feed/(feed|rdf|rss|rss2|atom)/?$";s:41:"index.php?post_type=work&feed=$matches[1]";s:32:"work/(feed|rdf|rss|rss2|atom)/?$";s:41:"index.php?post_type=work&feed=$matches[1]";s:24:"work/page/([0-9]{1,})/?$";s:42:"index.php?post_type=work&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:39:"menuproduct/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:49:"menuproduct/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:69:"menuproduct/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"menuproduct/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:64:"menuproduct/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"menuproduct/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:28:"menuproduct/([^/]+)/embed/?$";s:44:"index.php?menuproduct=$matches[1]&embed=true";s:32:"menuproduct/([^/]+)/trackback/?$";s:38:"index.php?menuproduct=$matches[1]&tb=1";s:40:"menuproduct/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?menuproduct=$matches[1]&paged=$matches[2]";s:47:"menuproduct/([^/]+)/comment-page-([0-9]{1,})/?$";s:51:"index.php?menuproduct=$matches[1]&cpage=$matches[2]";s:36:"menuproduct/([^/]+)(?:/([0-9]+))?/?$";s:50:"index.php?menuproduct=$matches[1]&page=$matches[2]";s:28:"menuproduct/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:38:"menuproduct/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:58:"menuproduct/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"menuproduct/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:53:"menuproduct/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:34:"menuproduct/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"menuproduct1/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"menuproduct1/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"menuproduct1/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"menuproduct1/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"menuproduct1/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"menuproduct1/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"menuproduct1/([^/]+)/embed/?$";s:45:"index.php?menuproduct1=$matches[1]&embed=true";s:33:"menuproduct1/([^/]+)/trackback/?$";s:39:"index.php?menuproduct1=$matches[1]&tb=1";s:41:"menuproduct1/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?menuproduct1=$matches[1]&paged=$matches[2]";s:48:"menuproduct1/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?menuproduct1=$matches[1]&cpage=$matches[2]";s:37:"menuproduct1/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?menuproduct1=$matches[1]&page=$matches[2]";s:29:"menuproduct1/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"menuproduct1/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"menuproduct1/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"menuproduct1/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"menuproduct1/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"menuproduct1/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"menuproduct3/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"menuproduct3/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"menuproduct3/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"menuproduct3/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"menuproduct3/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"menuproduct3/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"menuproduct3/([^/]+)/embed/?$";s:45:"index.php?menuproduct3=$matches[1]&embed=true";s:33:"menuproduct3/([^/]+)/trackback/?$";s:39:"index.php?menuproduct3=$matches[1]&tb=1";s:41:"menuproduct3/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?menuproduct3=$matches[1]&paged=$matches[2]";s:48:"menuproduct3/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?menuproduct3=$matches[1]&cpage=$matches[2]";s:37:"menuproduct3/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?menuproduct3=$matches[1]&page=$matches[2]";s:29:"menuproduct3/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"menuproduct3/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"menuproduct3/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"menuproduct3/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"menuproduct3/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"menuproduct3/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"menuproduct4/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"menuproduct4/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"menuproduct4/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"menuproduct4/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"menuproduct4/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"menuproduct4/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"menuproduct4/([^/]+)/embed/?$";s:45:"index.php?menuproduct4=$matches[1]&embed=true";s:33:"menuproduct4/([^/]+)/trackback/?$";s:39:"index.php?menuproduct4=$matches[1]&tb=1";s:41:"menuproduct4/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?menuproduct4=$matches[1]&paged=$matches[2]";s:48:"menuproduct4/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?menuproduct4=$matches[1]&cpage=$matches[2]";s:37:"menuproduct4/([^/]+)(?:/([0-9]+))?/?$";s:51:"index.php?menuproduct4=$matches[1]&page=$matches[2]";s:29:"menuproduct4/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"menuproduct4/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"menuproduct4/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"menuproduct4/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"menuproduct4/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"menuproduct4/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:32:"slider/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"slider/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"slider/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"slider/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"slider/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"slider/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"slider/(.+?)/embed/?$";s:39:"index.php?slider=$matches[1]&embed=true";s:25:"slider/(.+?)/trackback/?$";s:33:"index.php?slider=$matches[1]&tb=1";s:45:"slider/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?slider=$matches[1]&feed=$matches[2]";s:40:"slider/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?slider=$matches[1]&feed=$matches[2]";s:33:"slider/(.+?)/page/?([0-9]{1,})/?$";s:46:"index.php?slider=$matches[1]&paged=$matches[2]";s:40:"slider/(.+?)/comment-page-([0-9]{1,})/?$";s:46:"index.php?slider=$matches[1]&cpage=$matches[2]";s:29:"slider/(.+?)(?:/([0-9]+))?/?$";s:45:"index.php?slider=$matches[1]&page=$matches[2]";s:32:"dishes/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:42:"dishes/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:62:"dishes/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"dishes/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:57:"dishes/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"dishes/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:21:"dishes/(.+?)/embed/?$";s:39:"index.php?dishes=$matches[1]&embed=true";s:25:"dishes/(.+?)/trackback/?$";s:33:"index.php?dishes=$matches[1]&tb=1";s:45:"dishes/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?dishes=$matches[1]&feed=$matches[2]";s:40:"dishes/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?dishes=$matches[1]&feed=$matches[2]";s:33:"dishes/(.+?)/page/?([0-9]{1,})/?$";s:46:"index.php?dishes=$matches[1]&paged=$matches[2]";s:40:"dishes/(.+?)/comment-page-([0-9]{1,})/?$";s:46:"index.php?dishes=$matches[1]&cpage=$matches[2]";s:29:"dishes/(.+?)(?:/([0-9]+))?/?$";s:45:"index.php?dishes=$matches[1]&page=$matches[2]";s:30:"work/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:40:"work/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:60:"work/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"work/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:55:"work/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:36:"work/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:19:"work/(.+?)/embed/?$";s:37:"index.php?work=$matches[1]&embed=true";s:23:"work/(.+?)/trackback/?$";s:31:"index.php?work=$matches[1]&tb=1";s:43:"work/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?work=$matches[1]&feed=$matches[2]";s:38:"work/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?work=$matches[1]&feed=$matches[2]";s:31:"work/(.+?)/page/?([0-9]{1,})/?$";s:44:"index.php?work=$matches[1]&paged=$matches[2]";s:38:"work/(.+?)/comment-page-([0-9]{1,})/?$";s:44:"index.php?work=$matches[1]&cpage=$matches[2]";s:27:"work/(.+?)(?:/([0-9]+))?/?$";s:43:"index.php?work=$matches[1]&page=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=4&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:39:"options-framework/options-framework.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:80:"/var/www/html/villetaqueria/wp-content/themes/ville/template-parts/page-home.php";i:1;s:61:"/var/www/html/villetaqueria/wp-content/themes/ville/style.css";i:3;s:0:"";}', 'no'),
(40, 'template', 'ville', 'yes'),
(41, 'stylesheet', 'ville', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:"title";s:0:"";s:4:"text";s:378:"<h2 class="homeTitle">Order Online</h2>\r\nView our online menu and find your perfect meal, then you can order online\r\nand pick up your order when you are ready. It is as simple and fast as it gets. You can\r\norder ahead for your whole office for quick and easy service.\r\n\r\n<a href="http://182.76.249.189/villetaqueria/menu/" class="btn btn-primary view_menu_btn">View Our Menu</a>";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:0:"";s:4:"text";s:339:"<div class="col-sm-6 home_question_left">\r\n<h2>Have A Question? <span>Let Us Know!</span></h2>\r\n<div class="contact_form">\r\n[contact-form-7 id="50" title="Contact Form"]\r\n</div>\r\n</div>\r\n<div class="col-sm-6 home_question_right">\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/question-img.jpg" alt="">\r\n</div>\r\n";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:0:"";s:4:"text";s:870:"<div class="col-sm-6">\r\n<h2>Great Tacos and Burritos</h2>\r\n<h3>Vestibulum quis elit eget neque porttitor  no amet dolor. Proin pretiumss.  </h3>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec aliquet dolor libero, eget loved dost venenatis mauris finibus dictum. Vestibulum quis elit eget neque porttitor  no amet dolor. Proin pretium purus a lorem ornare<br><br>\r\n\r\nsed lobortis pulvinar. Integer laoreet mi id eros porta euismod. Suspendisse potenti. Nulla eros dost mauris, convallis et sem tempus, viverra hendrerit sapien  Lorem  amet, consectetur adipiscing elit. Donec aliquet dolor libero, </p>\r\n<a href="http://182.76.249.189/villetaqueria/menu/" class="btn btn-primary view_more">View Menu</a>\r\n</div>\r\n\r\n<div class="col-sm-6">\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/great-tacos-img.jpg" alt="">\r\n</div>\r\n";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:0:"";s:4:"text";s:242:"<h2 class="homeTitle">Our Popular Dishes</h2>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore <br>magna aliqua. Ut enim ad minim nostrud exercitation ullamco laboris nisi.</p>";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:9:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:11:"welcome-top";a:1:{i:0;s:6:"text-4";}s:14:"popular-dishes";a:1:{i:0;s:6:"text-5";}s:12:"order-online";a:1:{i:0;s:6:"text-2";}s:13:"home-question";a:1:{i:0;s:6:"text-3";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1525901961;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1525945195;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1525946723;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1524735611;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.5-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.5";s:7:"version";s:5:"4.9.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1525901438;s:15:"version_checked";s:5:"4.9.5";s:12:"translations";a:0:{}}', 'no'),
(119, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1525901441;s:7:"checked";a:4:{s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.5";s:13:"twentysixteen";s:3:"1.4";s:5:"ville";s:0:"";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(136, 'current_theme', 'Twenty Sixteen/ville', 'yes'),
(137, 'theme_mods_ville', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(138, 'theme_switched', '', 'yes'),
(149, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(151, 'site_logo', 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/logo-1.png', 'yes'),
(152, 'footer_site_logo', 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/footer-logo-1.png', 'yes'),
(153, 'site_contact_number', '(502) 721-8226', 'yes'),
(154, 'site_address', '', 'yes'),
(155, 'footer_about', '', 'yes'),
(156, 'footer_copyright', '© 2018 The Ville Taqueria. All Rights Reserved.', 'yes'),
(157, 'money_back_guarantee', '', 'yes'),
(158, 'email_address', 'info@VilleTaqueria.com', 'yes'),
(159, 'support_email_address', '', 'yes'),
(160, 'footer_contact_no', '', 'yes'),
(161, 'footer_fax_no', '', 'yes'),
(162, 'company_address', '3922 Westport Rd Louisville, Kentucky', 'yes'),
(163, 'footer_text', '', 'yes'),
(164, 'footer_what_client_say', '', 'yes'),
(165, 'footer_brand_logo', '', 'yes'),
(166, 'home_mid_about_keller', '', 'yes'),
(167, 'privacy_policy_link', '', 'yes'),
(168, 'site_map_link', '', 'yes'),
(169, 'disclaimer_text', '', 'yes'),
(170, 'website_by_link', '', 'yes'),
(171, 'copyright_text', '', 'yes'),
(172, 'header_middle_text', '', 'yes'),
(173, 'home_passion_section', '', 'yes'),
(174, 'home_dedication_section', '', 'yes'),
(175, 'home_commitment_section', '', 'yes'),
(176, 'home_expert_section', '', 'yes'),
(178, 'open_hours', '<p>Lorem ipsum dolor sit amet,  tore latthi dimu consectetueiusmodm dost</p>\r\n<div>\r\n<p>Monday- Friday. . . . . . . . . . . . . 8 AM - 5PM</p>\r\n<p>Sunday. . . . . . . . . . . . . . . . . .  . . 12 AM - 5PM</p>\r\n<p>Saturday . . . . . . . . . . . . . . . . . . . . . . . . . .Close</p>\r\n</div>', 'yes'),
(192, 'recently_activated', 'a:0:{}', 'yes'),
(195, 'wpcf7', 'a:2:{s:7:"version";s:5:"4.9.2";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1524830104;s:7:"version";s:5:"4.9.2";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(207, 'text_1', '', 'yes'),
(208, 'text_2', '', 'yes'),
(209, 'text_3', '', 'yes'),
(210, 'text_4', '', 'yes'),
(211, 'text_5', '', 'yes'),
(212, 'text_6', '', 'yes'),
(213, 'text_7', '', 'yes'),
(214, 'home_list', '', 'yes'),
(215, 'video', '', 'yes'),
(216, 'video_image_link', '', 'yes'),
(217, 'facebook_link', '#', 'yes'),
(218, 'instagram_link', '#', 'yes'),
(219, 'twitter_link', '#', 'yes'),
(220, 'google_link', '', 'yes'),
(221, 'linkedin_link', '', 'yes'),
(222, 'youtube_link', '', 'yes'),
(223, 'google_map', '', 'yes'),
(224, 'map', '', 'yes'),
(225, 'office_address', '', 'yes'),
(338, 'acf_version', '4.4.11', 'yes'),
(349, '_site_transient_timeout_browser_cb85b7e85d66404bbf5a1cc584d0a341', '1526102058', 'no'),
(350, '_site_transient_browser_cb85b7e85d66404bbf5a1cc584d0a341', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"59.0";s:8:"platform";s:7:"Windows";s:10:"update_url";s:24:"https://www.firefox.com/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(370, 'cptui_new_install', 'false', 'yes'),
(371, 'cptui_post_types', 'a:4:{s:11:"menuproduct";a:28:{s:4:"name";s:11:"menuproduct";s:5:"label";s:12:"Menuproducts";s:14:"singular_label";s:11:"Menuproduct";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:4:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";i:3;s:7:"excerpt";}s:10:"taxonomies";a:2:{i:0;s:8:"category";i:1;s:8:"post_tag";}s:6:"labels";a:23:{s:9:"menu_name";s:23:"Menuproduct Section One";s:9:"all_items";s:15:"All Menuproduct";s:7:"add_new";s:15:"Add Menuproduct";s:12:"add_new_item";s:7:"Add New";s:9:"edit_item";s:16:"Edit Menuproduct";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}s:12:"menuproduct1";a:28:{s:4:"name";s:12:"menuproduct1";s:5:"label";s:13:"Menuproducts1";s:14:"singular_label";s:12:"Menuproduct1";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:4:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";i:3;s:7:"excerpt";}s:10:"taxonomies";a:2:{i:0;s:8:"category";i:1;s:8:"post_tag";}s:6:"labels";a:23:{s:9:"menu_name";s:23:"Menuproduct Section Two";s:9:"all_items";s:16:"All Menuproduct1";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}s:12:"menuproduct3";a:28:{s:4:"name";s:12:"menuproduct3";s:5:"label";s:13:"menuproducts3";s:14:"singular_label";s:12:"menuproduct3";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:4:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";i:3;s:7:"excerpt";}s:10:"taxonomies";a:2:{i:0;s:8:"category";i:1;s:8:"post_tag";}s:6:"labels";a:23:{s:9:"menu_name";s:25:"Menuproduct Section Three";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}s:12:"menuproduct4";a:28:{s:4:"name";s:12:"menuproduct4";s:5:"label";s:13:"menuproducts4";s:14:"singular_label";s:12:"menuproduct4";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:4:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";i:3;s:7:"excerpt";}s:10:"taxonomies";a:2:{i:0;s:8:"category";i:1;s:8:"post_tag";}s:6:"labels";a:23:{s:9:"menu_name";s:24:"Menuproduct Section Four";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(396, 'optionsframework', 'a:1:{s:2:"id";s:5:"ville";}', 'yes'),
(397, 'ville', 'a:13:{s:14:"cl_header_logo";s:0:"";s:24:"cl_footer_copyright_text";s:13:"<span></span>";s:25:"cl_footer_copyright_text2";s:0:"";s:21:"cl_header_phone_no_us";s:0:"";s:17:"cl_header_saletxt";s:0:"";s:17:"cl_homepage1_head";s:15:"Pick Your Style";s:12:"cl_homepage1";s:115:"Pick from two styles — street-style, made with cilantro and onion; and CLT, made with cheese, lettuce and tomato.";s:17:"cl_homepage2_head";s:17:"Pick Your Filling";s:12:"cl_homepage2";s:78:"Choose from our amazing meat and veggies fillings for your burritos and tacos.";s:17:"cl_homepage3_head";s:15:"Pick Your Sides";s:12:"cl_homepage3";s:35:"Choose a side to go with your meal.";s:17:"cl_homepage4_head";s:15:"Pick Your DRINK";s:12:"cl_homepage4";s:72:"Choose your soft drink, tea, cerveza, or one of our signature cocktails.";}', 'yes'),
(447, '_site_transient_timeout_browser_61082fc9c192de563bde4f89002ce53b', '1526301003', 'no'),
(448, '_site_transient_browser_61082fc9c192de563bde4f89002ce53b', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"61.0";s:8:"platform";s:7:"Windows";s:10:"update_url";s:24:"https://www.firefox.com/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(464, '_transient_is_multi_author', '0', 'yes'),
(477, '_site_transient_timeout_theme_roots', '1525903239', 'no'),
(478, '_site_transient_theme_roots', 'a:4:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:5:"ville";s:7:"/themes";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(479, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1525901443;s:7:"checked";a:6:{s:30:"advanced-custom-fields/acf.php";s:6:"4.4.11";s:19:"akismet/akismet.php";s:5:"4.0.3";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"4.9.2";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.5.7";s:9:"hello.php";s:3:"1.7";s:39:"options-framework/options-framework.php";s:5:"1.8.5";}s:8:"response";a:3:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":12:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.9";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":12:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.0.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.0.1.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.5";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":12:{s:2:"id";s:33:"w.org/plugins/custom-post-type-ui";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.5.8";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.8.zip";s:5:"icons";a:2:{s:2:"2x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557";s:2:"1x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557";}s:7:"banners";a:2:{s:2:"2x";s:75:"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557";s:2:"1x";s:74:"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.5";s:12:"requires_php";s:3:"5.2";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.3.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:39:"options-framework/options-framework.php";O:8:"stdClass":9:{s:2:"id";s:31:"w.org/plugins/options-framework";s:4:"slug";s:17:"options-framework";s:6:"plugin";s:39:"options-framework/options-framework.php";s:11:"new_version";s:5:"1.8.5";s:3:"url";s:48:"https://wordpress.org/plugins/options-framework/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/options-framework.1.8.5.zip";s:5:"icons";a:2:{s:2:"2x";s:69:"https://ps.w.org/options-framework/assets/icon-256x256.png?rev=977481";s:2:"1x";s:69:"https://ps.w.org/options-framework/assets/icon-256x256.png?rev=977481";}s:7:"banners";a:1:{s:2:"1x";s:71:"https://ps.w.org/options-framework/assets/banner-772x250.jpg?rev=496961";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

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
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1525683497:1'),
(4, 4, '_wp_page_template', 'template-parts/page-home.php'),
(5, 6, '_edit_last', '1'),
(6, 6, '_wp_page_template', 'template-parts/page-about.php'),
(7, 6, '_edit_lock', '1525707423:1'),
(8, 8, '_edit_last', '1'),
(9, 8, '_wp_page_template', 'template-parts/page-menu.php'),
(10, 8, '_edit_lock', '1525689096:1'),
(11, 10, '_edit_last', '1'),
(12, 10, '_wp_page_template', 'template-parts/page-catering.php'),
(13, 10, '_edit_lock', '1525698686:1'),
(14, 12, '_edit_last', '1'),
(15, 12, '_edit_lock', '1525430699:1'),
(16, 12, '_wp_page_template', 'template-parts/page-contact.php'),
(17, 14, '_menu_item_type', 'post_type'),
(18, 14, '_menu_item_menu_item_parent', '0'),
(19, 14, '_menu_item_object_id', '12'),
(20, 14, '_menu_item_object', 'page'),
(21, 14, '_menu_item_target', ''),
(22, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(23, 14, '_menu_item_xfn', ''),
(24, 14, '_menu_item_url', ''),
(26, 15, '_menu_item_type', 'post_type'),
(27, 15, '_menu_item_menu_item_parent', '0'),
(28, 15, '_menu_item_object_id', '10'),
(29, 15, '_menu_item_object', 'page'),
(30, 15, '_menu_item_target', ''),
(31, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(32, 15, '_menu_item_xfn', ''),
(33, 15, '_menu_item_url', ''),
(35, 16, '_menu_item_type', 'post_type'),
(36, 16, '_menu_item_menu_item_parent', '0'),
(37, 16, '_menu_item_object_id', '8'),
(38, 16, '_menu_item_object', 'page'),
(39, 16, '_menu_item_target', ''),
(40, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(41, 16, '_menu_item_xfn', ''),
(42, 16, '_menu_item_url', ''),
(44, 17, '_menu_item_type', 'post_type'),
(45, 17, '_menu_item_menu_item_parent', '0'),
(46, 17, '_menu_item_object_id', '6'),
(47, 17, '_menu_item_object', 'page'),
(48, 17, '_menu_item_target', ''),
(49, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 17, '_menu_item_xfn', ''),
(51, 17, '_menu_item_url', ''),
(53, 18, '_menu_item_type', 'post_type'),
(54, 18, '_menu_item_menu_item_parent', '0'),
(55, 18, '_menu_item_object_id', '4'),
(56, 18, '_menu_item_object', 'page'),
(57, 18, '_menu_item_target', ''),
(58, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 18, '_menu_item_xfn', ''),
(60, 18, '_menu_item_url', ''),
(62, 23, '_wp_attached_file', '2018/04/logo.png'),
(63, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:125;s:6:"height";i:123;s:4:"file";s:16:"2018/04/logo.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(64, 24, '_wp_attached_file', '2018/04/black-arrow.png'),
(65, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:177;s:6:"height";i:36;s:4:"file";s:23:"2018/04/black-arrow.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"black-arrow-150x36.png";s:5:"width";i:150;s:6:"height";i:36;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(66, 25, '_wp_attached_file', '2018/04/dishes-bg.jpg'),
(67, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:835;s:4:"file";s:21:"2018/04/dishes-bg.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"dishes-bg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"dishes-bg-300x130.jpg";s:5:"width";i:300;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"dishes-bg-768x334.jpg";s:5:"width";i:768;s:6:"height";i:334;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"dishes-bg-1024x445.jpg";s:5:"width";i:1024;s:6:"height";i:445;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"dishes-bg-1200x522.jpg";s:5:"width";i:1200;s:6:"height";i:522;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(68, 26, '_wp_attached_file', '2018/04/dishes-img1.jpg'),
(69, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:246;s:6:"height";i:199;s:4:"file";s:23:"2018/04/dishes-img1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"dishes-img1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(70, 27, '_wp_attached_file', '2018/04/dishes-img2.jpg'),
(71, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:246;s:6:"height";i:199;s:4:"file";s:23:"2018/04/dishes-img2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"dishes-img2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(72, 28, '_wp_attached_file', '2018/04/dishes-img3.jpg'),
(73, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:246;s:6:"height";i:199;s:4:"file";s:23:"2018/04/dishes-img3.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"dishes-img3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(74, 29, '_wp_attached_file', '2018/04/favicon.png'),
(75, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:23;s:6:"height";i:23;s:4:"file";s:19:"2018/04/favicon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(76, 30, '_wp_attached_file', '2018/04/footer-logo.png'),
(77, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:230;s:6:"height";i:230;s:4:"file";s:23:"2018/04/footer-logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"footer-logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(78, 31, '_wp_attached_file', '2018/04/great-tacos-img.jpg'),
(79, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:570;s:6:"height";i:339;s:4:"file";s:27:"2018/04/great-tacos-img.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"great-tacos-img-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"great-tacos-img-300x178.jpg";s:5:"width";i:300;s:6:"height";i:178;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(80, 32, '_wp_attached_file', '2018/04/how-it-work-img1.jpg'),
(81, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:320;s:6:"height";i:160;s:4:"file";s:28:"2018/04/how-it-work-img1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"how-it-work-img1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"how-it-work-img1-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(82, 33, '_wp_attached_file', '2018/04/how-it-work-img2.jpg'),
(83, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:320;s:6:"height";i:160;s:4:"file";s:28:"2018/04/how-it-work-img2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"how-it-work-img2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"how-it-work-img2-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(84, 34, '_wp_attached_file', '2018/04/how-it-work-img3.jpg'),
(85, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:320;s:6:"height";i:160;s:4:"file";s:28:"2018/04/how-it-work-img3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"how-it-work-img3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"how-it-work-img3-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(86, 35, '_wp_attached_file', '2018/04/instagram-img1.jpg'),
(87, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:80;s:6:"height";i:75;s:4:"file";s:26:"2018/04/instagram-img1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(88, 36, '_wp_attached_file', '2018/04/instagram-img2.jpg'),
(89, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:80;s:6:"height";i:75;s:4:"file";s:26:"2018/04/instagram-img2.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(90, 37, '_wp_attached_file', '2018/04/instagram-img3.jpg'),
(91, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:80;s:6:"height";i:75;s:4:"file";s:26:"2018/04/instagram-img3.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(92, 38, '_wp_attached_file', '2018/04/instagram-img4.jpg'),
(93, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:80;s:6:"height";i:75;s:4:"file";s:26:"2018/04/instagram-img4.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(94, 39, '_wp_attached_file', '2018/04/instagram-img5.jpg'),
(95, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:80;s:6:"height";i:75;s:4:"file";s:26:"2018/04/instagram-img5.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(96, 40, '_wp_attached_file', '2018/04/instagram-img6.jpg'),
(97, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:80;s:6:"height";i:75;s:4:"file";s:26:"2018/04/instagram-img6.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(98, 41, '_wp_attached_file', '2018/04/question-bg.jpg'),
(99, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:344;s:6:"height";i:622;s:4:"file";s:23:"2018/04/question-bg.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"question-bg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"question-bg-166x300.jpg";s:5:"width";i:166;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(100, 42, '_wp_attached_file', '2018/04/question-img.jpg'),
(101, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:570;s:6:"height";i:601;s:4:"file";s:24:"2018/04/question-img.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"question-img-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"question-img-285x300.jpg";s:5:"width";i:285;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(102, 43, '_wp_attached_file', '2018/04/right-circle.png'),
(103, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:800;s:4:"file";s:24:"2018/04/right-circle.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"right-circle-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"right-circle-169x300.png";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(104, 44, '_wp_attached_file', '2018/04/slider-img1.jpg'),
(105, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:850;s:4:"file";s:23:"2018/04/slider-img1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"slider-img1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"slider-img1-300x133.jpg";s:5:"width";i:300;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"slider-img1-768x340.jpg";s:5:"width";i:768;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"slider-img1-1024x453.jpg";s:5:"width";i:1024;s:6:"height";i:453;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"slider-img1-1200x531.jpg";s:5:"width";i:1200;s:6:"height";i:531;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(106, 45, '_wp_attached_file', '2018/04/slider-img2.jpg'),
(107, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:850;s:4:"file";s:23:"2018/04/slider-img2.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"slider-img2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"slider-img2-300x133.jpg";s:5:"width";i:300;s:6:"height";i:133;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"slider-img2-768x340.jpg";s:5:"width";i:768;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"slider-img2-1024x453.jpg";s:5:"width";i:1024;s:6:"height";i:453;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"slider-img2-1200x531.jpg";s:5:"width";i:1200;s:6:"height";i:531;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(108, 46, '_wp_attached_file', '2018/04/title-bg.png'),
(109, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:136;s:6:"height";i:22;s:4:"file";s:20:"2018/04/title-bg.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(110, 22, '_edit_last', '1'),
(111, 22, '_edit_lock', '1524752340:1'),
(112, 22, '_thumbnail_id', '44'),
(113, 47, '_edit_last', '1'),
(114, 47, '_thumbnail_id', '45'),
(115, 47, '_edit_lock', '1524753695:1'),
(116, 49, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(117, 49, '_mail', 'a:8:{s:7:"subject";s:31:"Ville Taqueria "[your-subject]"";s:6:"sender";s:38:"[your-name] <wordpress@182.76.249.189>";s:4:"body";s:188:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Ville Taqueria (http://182.76.249.189/villetaqueria)";s:9:"recipient";s:33:"sanjib.ghosh@sbr-technologies.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(118, 49, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:31:"Ville Taqueria "[your-subject]"";s:6:"sender";s:41:"Ville Taqueria <wordpress@182.76.249.189>";s:4:"body";s:130:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Ville Taqueria (http://182.76.249.189/villetaqueria)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:43:"Reply-To: sanjib.ghosh@sbr-technologies.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(119, 49, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(120, 49, '_additional_settings', NULL),
(121, 49, '_locale', 'en_US'),
(122, 50, '_form', '<div class="form-group"><label>Name</label> [text* your-name]</div>\n<div class="form-group"><label>Email Address</label> [email* your-email]</div>\n<div class="form-group"><label>Mobile Number</label> [tel* your-phone]</div>\n<div class="form-group">[submit "Submit"]</div>'),
(123, 50, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:34:"New Message Received - [your-name]";s:6:"sender";s:38:"[your-name] <wordpress@182.76.249.189>";s:9:"recipient";s:33:"sanjib.ghosh@sbr-technologies.com";s:4:"body";s:267:"<table border="1" style="background-color=#ffffff" width="100%" cellpadding="1" cellspacing="1">\n<tbody>\n<tr>\n<td>Name:</td>\n<td>[your-name]</td>\n</tr>\n<tr>\n<td>Email:</td>\n<td>[your-email]</td>\n</tr>\n<tr>\n<td>Phone:</td>\n<td>[your-phone]</td>\n</tr>\n</tbody>\n</table>";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:1;s:13:"exclude_blank";b:0;}'),
(124, 50, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:31:"Ville Taqueria "[your-subject]"";s:6:"sender";s:41:"Ville Taqueria <wordpress@182.76.249.189>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:130:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Ville Taqueria (http://182.76.249.189/villetaqueria)";s:18:"additional_headers";s:43:"Reply-To: sanjib.ghosh@sbr-technologies.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(125, 50, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(126, 50, '_additional_settings', ''),
(127, 50, '_locale', 'en_US'),
(131, 52, '_wp_attached_file', '2018/04/about-banner.jpg'),
(132, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:572;s:4:"file";s:24:"2018/04/about-banner.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"about-banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"about-banner-300x89.jpg";s:5:"width";i:300;s:6:"height";i:89;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"about-banner-768x229.jpg";s:5:"width";i:768;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"about-banner-1024x305.jpg";s:5:"width";i:1024;s:6:"height";i:305;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"about-banner-1200x358.jpg";s:5:"width";i:1200;s:6:"height";i:358;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(133, 6, '_thumbnail_id', '52'),
(134, 55, '_wp_attached_file', '2018/04/catering-banner.jpg'),
(135, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:572;s:4:"file";s:27:"2018/04/catering-banner.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"catering-banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"catering-banner-300x89.jpg";s:5:"width";i:300;s:6:"height";i:89;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"catering-banner-768x229.jpg";s:5:"width";i:768;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"catering-banner-1024x305.jpg";s:5:"width";i:1024;s:6:"height";i:305;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:28:"catering-banner-1200x358.jpg";s:5:"width";i:1200;s:6:"height";i:358;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(136, 56, '_wp_attached_file', '2018/04/contact-banner.jpg'),
(137, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:572;s:4:"file";s:26:"2018/04/contact-banner.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"contact-banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"contact-banner-300x89.jpg";s:5:"width";i:300;s:6:"height";i:89;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"contact-banner-768x229.jpg";s:5:"width";i:768;s:6:"height";i:229;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"contact-banner-1024x305.jpg";s:5:"width";i:1024;s:6:"height";i:305;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:27:"contact-banner-1200x358.jpg";s:5:"width";i:1200;s:6:"height";i:358;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(138, 10, '_thumbnail_id', '55'),
(139, 12, '_thumbnail_id', '56'),
(140, 58, '_wp_attached_file', '2018/04/menu-banner.jpg'),
(141, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1546;s:6:"height";i:850;s:4:"file";s:23:"2018/04/menu-banner.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"menu-banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"menu-banner-300x165.jpg";s:5:"width";i:300;s:6:"height";i:165;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"menu-banner-768x422.jpg";s:5:"width";i:768;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"menu-banner-1024x563.jpg";s:5:"width";i:1024;s:6:"height";i:563;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:24:"menu-banner-1200x660.jpg";s:5:"width";i:1200;s:6:"height";i:660;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(143, 59, '_edit_last', '1'),
(144, 59, '_edit_lock', '1524837694:1'),
(145, 59, '_thumbnail_id', '26'),
(146, 60, '_edit_last', '1'),
(147, 60, '_edit_lock', '1524837718:1'),
(148, 60, '_thumbnail_id', '27'),
(149, 61, '_edit_last', '1'),
(150, 61, '_edit_lock', '1524838195:1'),
(151, 61, '_thumbnail_id', '28'),
(152, 62, '_edit_last', '1'),
(153, 62, '_edit_lock', '1525333525:1'),
(154, 62, '_thumbnail_id', '32'),
(155, 63, '_edit_last', '1'),
(156, 63, '_edit_lock', '1525333526:1'),
(157, 63, '_thumbnail_id', '33'),
(158, 64, '_edit_last', '1'),
(159, 64, '_edit_lock', '1525707150:1'),
(160, 64, '_thumbnail_id', '34'),
(161, 64, 'roundNumber', '3'),
(162, 63, 'roundNumber', '2'),
(163, 62, 'roundNumber', '1'),
(164, 66, '_form', '<div class="form-group">[text* your-name placeholder "Name"]</div>\n<div class="form-group">[email* your-email placeholder "Email"]</div>\n<div class="form-group">[textarea* textarea-73 placeholder "Message"]</div>\n<div class="form-group">[submit "Submit"]</div>'),
(165, 66, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:31:"Ville Taqueria "[your-subject]"";s:6:"sender";s:38:"[your-name] <wordpress@182.76.249.189>";s:9:"recipient";s:33:"sanjib.ghosh@sbr-technologies.com";s:4:"body";s:188:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Ville Taqueria (http://182.76.249.189/villetaqueria)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(166, 66, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:31:"Ville Taqueria "[your-subject]"";s:6:"sender";s:41:"Ville Taqueria <wordpress@182.76.249.189>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:130:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Ville Taqueria (http://182.76.249.189/villetaqueria)";s:18:"additional_headers";s:43:"Reply-To: sanjib.ghosh@sbr-technologies.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(167, 66, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(168, 66, '_additional_settings', ''),
(169, 66, '_locale', 'en_US'),
(170, 68, '_wp_attached_file', '2018/05/catering1.jpg'),
(171, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:475;s:6:"height";i:445;s:4:"file";s:21:"2018/05/catering1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"catering1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"catering1-300x281.jpg";s:5:"width";i:300;s:6:"height";i:281;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(172, 69, '_wp_attached_file', '2018/05/catering2.jpg'),
(173, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:470;s:6:"height";i:442;s:4:"file";s:21:"2018/05/catering2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"catering2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"catering2-300x282.jpg";s:5:"width";i:300;s:6:"height";i:282;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(174, 72, '_wp_attached_file', '2018/05/about-img2.jpg'),
(175, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1030;s:6:"height";i:300;s:4:"file";s:22:"2018/05/about-img2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"about-img2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"about-img2-300x87.jpg";s:5:"width";i:300;s:6:"height";i:87;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"about-img2-768x224.jpg";s:5:"width";i:768;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"about-img2-1024x298.jpg";s:5:"width";i:1024;s:6:"height";i:298;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(176, 74, '_edit_last', '1'),
(177, 74, '_edit_lock', '1525433402:1'),
(178, 74, '_wp_page_template', 'default'),
(179, 76, '_wp_attached_file', '2018/05/about-img3.jpg'),
(180, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:325;s:4:"file";s:22:"2018/05/about-img3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"about-img3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"about-img3-277x300.jpg";s:5:"width";i:277;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(181, 78, '_edit_last', '1'),
(182, 78, 'field_5aec40d8bef83', 'a:11:{s:3:"key";s:19:"field_5aec40d8bef83";s:5:"label";s:14:"About_us_first";s:4:"name";s:14:"about_us_first";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(183, 78, 'field_5aec40febef84', 'a:11:{s:3:"key";s:19:"field_5aec40febef84";s:5:"label";s:18:"About_us_first_img";s:4:"name";s:18:"about_us_first_img";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(184, 78, 'field_5aec4114bef85', 'a:11:{s:3:"key";s:19:"field_5aec4114bef85";s:5:"label";s:13:"about_us_last";s:4:"name";s:13:"about_us_last";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(185, 78, 'field_5aec4139bef86', 'a:11:{s:3:"key";s:19:"field_5aec4139bef86";s:5:"label";s:17:"about_us_last_img";s:4:"name";s:17:"about_us_last_img";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(187, 78, 'position', 'normal'),
(188, 78, 'layout', 'no_box'),
(189, 78, 'hide_on_screen', ''),
(190, 78, '_edit_lock', '1525433402:1'),
(191, 78, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"6";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(192, 79, 'about_us_first', ''),
(193, 79, '_about_us_first', 'field_5aec40d8bef83'),
(194, 79, 'about_us_first_img', ''),
(195, 79, '_about_us_first_img', 'field_5aec40febef84'),
(196, 79, 'about_us_last', '&lt;div class="col-sm-8"&gt;\r\n&lt;h3&gt;Fabian Leon&lt;/h3&gt;\r\n&lt;h6&gt;Owner / Chef&lt;/h6&gt;\r\n&lt;p&gt;Fabian Leon’s interest in cooking was fanned by his mother, uncles, aunt and grandmother. He was also a voracious reader of cookbooks. But it was from working in his father’s El Caporal restaurants, two in Louisville and one in Crestwood, that he became enamored of the restaurant business.\r\n&lt;br&gt;&lt;br&gt;\r\nSince venturing out and opening The Ville Taqueria, 3922 Westport Road, Leon is establishing his own identity without thinking of himself as his father’s competitor. ”I opened my own restaurant because I wanted to make tortillas in-house and to do some things that are not typical of local Mexican restaurants,” he says, “I think people are ready for what we’re doing.”&lt;/p&gt;\r\n&lt;/div&gt;'),
(197, 79, '_about_us_last', 'field_5aec4114bef85'),
(198, 79, 'about_us_last_img', '76'),
(199, 79, '_about_us_last_img', 'field_5aec4139bef86'),
(200, 6, 'about_us_first', '<div class="col-sm-6">\r\n<h2>Great Tacos and Burritos</h2>\r\n<h4>Adding Amazing Twists To The Traditional Mexican Menu</h4>\r\nThe Ville Taqueria, at 3922 Westport Road, opened in September 2014, to provide local diners with a unique Mexian menu with unique flavors and twists.\r\n\r\n”I opened my own restaurant because I wanted to make tortillas in-house and to do some things that are not typical of local Mexican restaurants,” says Owner and Chef Fabian Leon, “I think people are ready for what we’re doing.”\r\n\r\nOne of his original objectives was to create a simple menu so that guests can make quick decisions. He offers two varieties of tacos — street-style, made with cilantro and onion; and CLT, made with cheese, lettuce and tomato. There are three burritos, two quesadillas and three tortas. Diners may choose from various kinds of beef, chicken, pork, shrimp, fish, vegetable and breakfast fillings for each dish.\r\n\r\nSome of his cooking reflects the cuisine of the Jalisco state in Mexico, but he’s careful that he doesn’t become too closely identified with any region or style of cooking. “I like to twist my food with seasonings and other things that are atypical of Mexican cooking,” says the chef. “I fix my barbacoa, which is braised brisket, with Dos Equis XX. That’s kind of neat because it’s not traditionally done with beer.”\r\n\r\n</div>'),
(201, 6, '_about_us_first', 'field_5aec40d8bef83'),
(202, 6, 'about_us_first_img', '82'),
(203, 6, '_about_us_first_img', 'field_5aec40febef84'),
(204, 6, 'about_us_last', '<div class="col-sm-8">\r\n<h3>Fabian Leon</h3>\r\n<h6>Owner / Chef</h6>\r\nFabian Leon’s interest in cooking was fanned by his mother, uncles, aunt and grandmother. He was also a voracious reader of cookbooks. But it was from working in his father’s El Caporal restaurants, two in Louisville and one in Crestwood, that he became enamored of the restaurant business.\r\n\r\nSince venturing out and opening The Ville Taqueria, 3922 Westport Road, Leon is establishing his own identity without thinking of himself as his father’s competitor. ”I opened my own restaurant because I wanted to make tortillas in-house and to do some things that are not typical of local Mexican restaurants,” he says, “I think people are ready for what we’re doing.”\r\n\r\n</div>'),
(205, 6, '_about_us_last', 'field_5aec4114bef85'),
(206, 6, 'about_us_last_img', '76'),
(207, 6, '_about_us_last_img', 'field_5aec4139bef86'),
(208, 80, 'about_us_first', ''),
(209, 80, '_about_us_first', 'field_5aec40d8bef83'),
(210, 80, 'about_us_first_img', ''),
(211, 80, '_about_us_first_img', 'field_5aec40febef84'),
(212, 80, 'about_us_last', '<div class="”col-sm-8″">\r\n<h3>Fabian Leon</h3>\r\n<h6>Owner / Chef</h6>\r\nFabian Leon’s interest in cooking was fanned by his mother, uncles, aunt and grandmother. He was also a voracious reader of cookbooks. But it was from working in his father’s El Caporal restaurants, two in Louisville and one in Crestwood, that he became enamored of the restaurant business.\r\n\r\nSince venturing out and opening The Ville Taqueria, 3922 Westport Road, Leon is establishing his own identity without thinking of himself as his father’s competitor. ”I opened my own restaurant because I wanted to make tortillas in-house and to do some things that are not typical of local Mexican restaurants,” he says, “I think people are ready for what we’re doing.”\r\n\r\n</div>'),
(213, 80, '_about_us_last', 'field_5aec4114bef85'),
(214, 80, 'about_us_last_img', '76'),
(215, 80, '_about_us_last_img', 'field_5aec4139bef86'),
(216, 81, 'about_us_first', '<div class="col-sm-6">\r\n<h2>Great Tacos and Burritos</h2>\r\n<h4>Adding Amazing Twists To The Traditional Mexican Menu</h4>\r\nThe Ville Taqueria, at 3922 Westport Road, opened in September 2014, to provide local diners with a unique Mexian menu with unique flavors and twists.\r\n\r\n”I opened my own restaurant because I wanted to make tortillas in-house and to do some things that are not typical of local Mexican restaurants,” says Owner and Chef Fabian Leon, “I think people are ready for what we’re doing.”\r\n\r\nOne of his original objectives was to create a simple menu so that guests can make quick decisions. He offers two varieties of tacos — street-style, made with cilantro and onion; and CLT, made with cheese, lettuce and tomato. There are three burritos, two quesadillas and three tortas. Diners may choose from various kinds of beef, chicken, pork, shrimp, fish, vegetable and breakfast fillings for each dish.\r\n\r\nSome of his cooking reflects the cuisine of the Jalisco state in Mexico, but he’s careful that he doesn’t become too closely identified with any region or style of cooking. “I like to twist my food with seasonings and other things that are atypical of Mexican cooking,” says the chef. “I fix my barbacoa, which is braised brisket, with Dos Equis XX. That’s kind of neat because it’s not traditionally done with beer.”\r\n\r\n</div>'),
(217, 81, '_about_us_first', 'field_5aec40d8bef83'),
(218, 81, 'about_us_first_img', '44'),
(219, 81, '_about_us_first_img', 'field_5aec40febef84'),
(220, 81, 'about_us_last', '<div class="”col-sm-8″">\r\n<h3>Fabian Leon</h3>\r\n<h6>Owner / Chef</h6>\r\nFabian Leon’s interest in cooking was fanned by his mother, uncles, aunt and grandmother. He was also a voracious reader of cookbooks. But it was from working in his father’s El Caporal restaurants, two in Louisville and one in Crestwood, that he became enamored of the restaurant business.\r\n\r\nSince venturing out and opening The Ville Taqueria, 3922 Westport Road, Leon is establishing his own identity without thinking of himself as his father’s competitor. ”I opened my own restaurant because I wanted to make tortillas in-house and to do some things that are not typical of local Mexican restaurants,” he says, “I think people are ready for what we’re doing.”\r\n\r\n</div>'),
(221, 81, '_about_us_last', 'field_5aec4114bef85'),
(222, 81, 'about_us_last_img', '76'),
(223, 81, '_about_us_last_img', 'field_5aec4139bef86'),
(224, 82, '_wp_attached_file', '2018/05/about-img1.jpg'),
(225, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:570;s:6:"height";i:627;s:4:"file";s:22:"2018/05/about-img1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"about-img1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"about-img1-273x300.jpg";s:5:"width";i:273;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(226, 83, 'about_us_first', '<div class="col-sm-6">\r\n<h2>Great Tacos and Burritos</h2>\r\n<h4>Adding Amazing Twists To The Traditional Mexican Menu</h4>\r\nThe Ville Taqueria, at 3922 Westport Road, opened in September 2014, to provide local diners with a unique Mexian menu with unique flavors and twists.\r\n\r\n”I opened my own restaurant because I wanted to make tortillas in-house and to do some things that are not typical of local Mexican restaurants,” says Owner and Chef Fabian Leon, “I think people are ready for what we’re doing.”\r\n\r\nOne of his original objectives was to create a simple menu so that guests can make quick decisions. He offers two varieties of tacos — street-style, made with cilantro and onion; and CLT, made with cheese, lettuce and tomato. There are three burritos, two quesadillas and three tortas. Diners may choose from various kinds of beef, chicken, pork, shrimp, fish, vegetable and breakfast fillings for each dish.\r\n\r\nSome of his cooking reflects the cuisine of the Jalisco state in Mexico, but he’s careful that he doesn’t become too closely identified with any region or style of cooking. “I like to twist my food with seasonings and other things that are atypical of Mexican cooking,” says the chef. “I fix my barbacoa, which is braised brisket, with Dos Equis XX. That’s kind of neat because it’s not traditionally done with beer.”\r\n\r\n</div>'),
(227, 83, '_about_us_first', 'field_5aec40d8bef83'),
(228, 83, 'about_us_first_img', '82'),
(229, 83, '_about_us_first_img', 'field_5aec40febef84'),
(230, 83, 'about_us_last', '<div class="”col-sm-8″">\r\n<h3>Fabian Leon</h3>\r\n<h6>Owner / Chef</h6>\r\nFabian Leon’s interest in cooking was fanned by his mother, uncles, aunt and grandmother. He was also a voracious reader of cookbooks. But it was from working in his father’s El Caporal restaurants, two in Louisville and one in Crestwood, that he became enamored of the restaurant business.\r\n\r\nSince venturing out and opening The Ville Taqueria, 3922 Westport Road, Leon is establishing his own identity without thinking of himself as his father’s competitor. ”I opened my own restaurant because I wanted to make tortillas in-house and to do some things that are not typical of local Mexican restaurants,” he says, “I think people are ready for what we’re doing.”\r\n\r\n</div>'),
(231, 83, '_about_us_last', 'field_5aec4114bef85'),
(232, 83, 'about_us_last_img', '76'),
(233, 83, '_about_us_last_img', 'field_5aec4139bef86'),
(234, 85, '_edit_last', '1'),
(235, 85, 'field_5aed403bdfdd9', 'a:11:{s:3:"key";s:19:"field_5aed403bdfdd9";s:5:"label";s:12:"Banner Image";s:4:"name";s:12:"banner_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(237, 85, 'position', 'normal'),
(238, 85, 'layout', 'no_box'),
(239, 85, 'hide_on_screen', ''),
(240, 85, '_edit_lock', '1525502178:1'),
(241, 86, 'banner_image', '58'),
(242, 86, '_banner_image', 'field_5aed403bdfdd9');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(243, 8, 'banner_image', '58'),
(244, 8, '_banner_image', 'field_5aed403bdfdd9'),
(245, 85, 'field_5aed40dbd7843', 'a:11:{s:3:"key";s:19:"field_5aed40dbd7843";s:5:"label";s:11:"Banner Text";s:4:"name";s:11:"banner_text";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(246, 85, 'field_5aed40fbd7844', 'a:14:{s:3:"key";s:19:"field_5aed40fbd7844";s:5:"label";s:13:"Banner Button";s:4:"name";s:13:"banner_button";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(248, 85, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"page";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(249, 87, 'banner_image', '58'),
(250, 87, '_banner_image', 'field_5aed403bdfdd9'),
(251, 87, 'banner_text', '<h2>The Ville Taqueria</h2>\r\n<h3>Best Tacos In The Ville</h3>\r\nThe Ville is the new champion of Fresh-Mex in Louisville Ky on a quest to show how fresh and exquisite Mexican Cuisine can be. We will transform your taste buds forever.'),
(252, 87, '_banner_text', 'field_5aed40dbd7843'),
(253, 87, 'banner_button', 'Order now'),
(254, 87, '_banner_button', 'field_5aed40fbd7844'),
(255, 8, 'banner_text', '<h2>The Ville Taqueria</h2>\r\n<h3>Best Tacos In The Ville</h3>\r\nThe Ville is the new champion of Fresh-Mex in Louisville Ky on a quest to show how fresh and exquisite Mexican Cuisine can be. We will transform your taste buds forever.'),
(256, 8, '_banner_text', 'field_5aed40dbd7843'),
(257, 8, 'banner_button', 'Order now'),
(258, 8, '_banner_button', 'field_5aed40fbd7844'),
(259, 88, '_edit_last', '1'),
(260, 88, '_edit_lock', '1525690245:1'),
(261, 88, '_thumbnail_id', '90'),
(262, 90, '_wp_attached_file', '2018/05/menu-large-img1.png'),
(263, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:464;s:6:"height";i:524;s:4:"file";s:27:"2018/05/menu-large-img1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"menu-large-img1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"menu-large-img1-266x300.png";s:5:"width";i:266;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(264, 91, '_wp_attached_file', '2018/05/menu-small-img1.png'),
(265, 91, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:27:"2018/05/menu-small-img1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(266, 92, '_wp_attached_file', '2018/05/menu-small-img2.png'),
(267, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:27:"2018/05/menu-small-img2.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(268, 93, '_wp_attached_file', '2018/05/menu-small-img3.png'),
(269, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:27:"2018/05/menu-small-img3.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(270, 94, '_wp_attached_file', '2018/05/menu-small-img4.png'),
(271, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:27:"2018/05/menu-small-img4.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(272, 95, '_wp_attached_file', '2018/05/menu-large-img2.png'),
(273, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:464;s:6:"height";i:524;s:4:"file";s:27:"2018/05/menu-large-img2.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"menu-large-img2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"menu-large-img2-266x300.png";s:5:"width";i:266;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(274, 96, '_wp_attached_file', '2018/05/menu-large-img3.png'),
(275, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:464;s:6:"height";i:524;s:4:"file";s:27:"2018/05/menu-large-img3.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"menu-large-img3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"menu-large-img3-266x300.png";s:5:"width";i:266;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(276, 97, '_wp_attached_file', '2018/05/menu-large-img4.png'),
(277, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:464;s:6:"height";i:524;s:4:"file";s:27:"2018/05/menu-large-img4.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"menu-large-img4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"menu-large-img4-266x300.png";s:5:"width";i:266;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(278, 98, '_wp_attached_file', '2018/05/menu-small-img5.png'),
(279, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:27:"2018/05/menu-small-img5.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(280, 99, '_wp_attached_file', '2018/05/menu-small-img6.png'),
(281, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:27:"2018/05/menu-small-img6.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(282, 100, '_wp_attached_file', '2018/05/menu-small-img7.png'),
(283, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:27:"2018/05/menu-small-img7.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(284, 101, '_wp_attached_file', '2018/05/menu-small-img8.png'),
(285, 101, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:27:"2018/05/menu-small-img8.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(286, 102, '_wp_attached_file', '2018/05/menu-small-img9.png'),
(287, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:27:"2018/05/menu-small-img9.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(288, 103, '_wp_attached_file', '2018/05/menu-small-img10.png'),
(289, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:28:"2018/05/menu-small-img10.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(290, 104, '_wp_attached_file', '2018/05/menu-small-img11.png'),
(291, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:28:"2018/05/menu-small-img11.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(292, 105, '_wp_attached_file', '2018/05/menu-small-img12.png'),
(293, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:28:"2018/05/menu-small-img12.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(294, 106, '_wp_attached_file', '2018/05/menu-small-img13.png'),
(295, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:28:"2018/05/menu-small-img13.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(296, 107, '_wp_attached_file', '2018/05/menu-small-img14.png'),
(297, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:28:"2018/05/menu-small-img14.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(298, 108, '_wp_attached_file', '2018/05/menu-small-img15.png'),
(299, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:28:"2018/05/menu-small-img15.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(300, 109, '_wp_attached_file', '2018/05/menu-small-img16.png'),
(301, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:28:"2018/05/menu-small-img16.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(302, 110, '_wp_attached_file', '2018/05/menu-small-img17.png'),
(303, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:28:"2018/05/menu-small-img17.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(304, 111, '_wp_attached_file', '2018/05/menu-small-img18.png'),
(305, 111, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:28:"2018/05/menu-small-img18.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(306, 89, '_edit_last', '1'),
(307, 89, '_edit_lock', '1525690247:1'),
(308, 89, '_thumbnail_id', '90'),
(309, 112, '_edit_last', '1'),
(310, 112, 'field_5aed519f9d701', 'a:11:{s:3:"key";s:19:"field_5aed519f9d701";s:5:"label";s:19:"Product Small Image";s:4:"name";s:19:"product_small_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(312, 112, 'position', 'normal'),
(313, 112, 'layout', 'no_box'),
(314, 112, 'hide_on_screen', ''),
(315, 112, '_edit_lock', '1525510766:1'),
(317, 88, 'product_small_image', '91'),
(318, 88, '_product_small_image', 'field_5aed519f9d701'),
(319, 89, 'product_small_image', '92'),
(320, 89, '_product_small_image', 'field_5aed519f9d701'),
(321, 113, '_edit_last', '1'),
(322, 113, '_edit_lock', '1525690205:1'),
(323, 113, '_thumbnail_id', '95'),
(324, 112, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:11:"menuproduct";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(325, 112, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:12:"menuproduct1";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(326, 112, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:12:"menuproduct3";s:8:"order_no";i:0;s:8:"group_no";i:2;}'),
(327, 112, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:12:"menuproduct4";s:8:"order_no";i:0;s:8:"group_no";i:3;}'),
(328, 113, 'product_small_image', '98'),
(329, 113, '_product_small_image', 'field_5aed519f9d701'),
(330, 114, '_edit_last', '1'),
(331, 114, '_edit_lock', '1525690839:1'),
(332, 114, '_thumbnail_id', '96'),
(333, 114, 'product_small_image', '103'),
(334, 114, '_product_small_image', 'field_5aed519f9d701'),
(335, 115, '_edit_last', '1'),
(336, 115, '_edit_lock', '1525691191:1'),
(337, 115, '_thumbnail_id', '97'),
(338, 115, 'product_small_image', '107'),
(339, 115, '_product_small_image', 'field_5aed519f9d701'),
(340, 117, '_edit_last', '1'),
(341, 117, '_edit_lock', '1525690247:1'),
(342, 117, '_thumbnail_id', '90'),
(343, 117, 'product_small_image', '93'),
(344, 117, '_product_small_image', 'field_5aed519f9d701'),
(345, 118, '_edit_last', '1'),
(346, 118, '_edit_lock', '1525707403:1'),
(347, 118, '_thumbnail_id', '90'),
(348, 118, 'product_small_image', '94'),
(349, 118, '_product_small_image', 'field_5aed519f9d701'),
(350, 119, '_edit_last', '1'),
(351, 119, '_edit_lock', '1525690143:1'),
(352, 119, '_thumbnail_id', '95'),
(353, 119, 'product_small_image', '99'),
(354, 119, '_product_small_image', 'field_5aed519f9d701'),
(355, 120, '_edit_last', '1'),
(356, 120, '_edit_lock', '1525690144:1'),
(357, 120, '_thumbnail_id', '95'),
(358, 120, 'product_small_image', '100'),
(359, 120, '_product_small_image', 'field_5aed519f9d701'),
(360, 121, '_edit_last', '1'),
(361, 121, '_edit_lock', '1525690144:1'),
(362, 121, '_thumbnail_id', '95'),
(363, 121, 'product_small_image', '101'),
(364, 121, '_product_small_image', 'field_5aed519f9d701'),
(365, 123, '_edit_last', '1'),
(366, 123, '_edit_lock', '1525707423:1'),
(367, 123, '_thumbnail_id', '95'),
(368, 123, 'product_small_image', '102'),
(369, 123, '_product_small_image', 'field_5aed519f9d701'),
(370, 124, '_edit_last', '1'),
(371, 124, '_edit_lock', '1525690840:1'),
(372, 124, '_thumbnail_id', '96'),
(373, 124, 'product_small_image', '104'),
(374, 124, '_product_small_image', 'field_5aed519f9d701'),
(375, 125, '_edit_last', '1'),
(376, 125, '_edit_lock', '1525707423:1'),
(377, 125, '_thumbnail_id', '96'),
(378, 125, 'product_small_image', '105'),
(379, 125, '_product_small_image', 'field_5aed519f9d701'),
(380, 126, '_edit_last', '1'),
(381, 126, '_edit_lock', '1525690841:1'),
(382, 126, '_thumbnail_id', '96'),
(383, 126, 'product_small_image', '106'),
(384, 126, '_product_small_image', 'field_5aed519f9d701'),
(385, 127, '_edit_last', '1'),
(386, 127, '_edit_lock', '1525691192:1'),
(387, 127, '_thumbnail_id', '97'),
(388, 127, 'product_small_image', '108'),
(389, 127, '_product_small_image', 'field_5aed519f9d701'),
(390, 128, '_edit_last', '1'),
(391, 128, '_edit_lock', '1525691192:1'),
(392, 128, '_thumbnail_id', '97'),
(393, 128, 'product_small_image', '109'),
(394, 128, '_product_small_image', 'field_5aed519f9d701'),
(395, 129, '_edit_last', '1'),
(396, 129, '_edit_lock', '1525691192:1'),
(397, 129, '_thumbnail_id', '97'),
(398, 129, 'product_small_image', '110'),
(399, 129, '_product_small_image', 'field_5aed519f9d701'),
(400, 130, '_edit_last', '1'),
(401, 130, '_edit_lock', '1525691193:1'),
(402, 130, '_thumbnail_id', '97'),
(403, 130, 'product_small_image', '111'),
(404, 130, '_product_small_image', 'field_5aed519f9d701'),
(405, 134, 'about_us_first', '<div class="col-sm-6">\r\n<h2>Great Tacos and Burritos</h2>\r\n<h4>Adding Amazing Twists To The Traditional Mexican Menu</h4>\r\nThe Ville Taqueria, at 3922 Westport Road, opened in September 2014, to provide local diners with a unique Mexian menu with unique flavors and twists.\r\n\r\n”I opened my own restaurant because I wanted to make tortillas in-house and to do some things that are not typical of local Mexican restaurants,” says Owner and Chef Fabian Leon, “I think people are ready for what we’re doing.”\r\n\r\nOne of his original objectives was to create a simple menu so that guests can make quick decisions. He offers two varieties of tacos — street-style, made with cilantro and onion; and CLT, made with cheese, lettuce and tomato. There are three burritos, two quesadillas and three tortas. Diners may choose from various kinds of beef, chicken, pork, shrimp, fish, vegetable and breakfast fillings for each dish.\r\n\r\nSome of his cooking reflects the cuisine of the Jalisco state in Mexico, but he’s careful that he doesn’t become too closely identified with any region or style of cooking. “I like to twist my food with seasonings and other things that are atypical of Mexican cooking,” says the chef. “I fix my barbacoa, which is braised brisket, with Dos Equis XX. That’s kind of neat because it’s not traditionally done with beer.”\r\n\r\n</div>'),
(406, 134, '_about_us_first', 'field_5aec40d8bef83'),
(407, 134, 'about_us_first_img', '82'),
(408, 134, '_about_us_first_img', 'field_5aec40febef84'),
(409, 134, 'about_us_last', '<div class="col-sm-8">\r\n<h3>Fabian Leon</h3>\r\n<h6>Owner / Chef</h6>\r\nFabian Leon’s interest in cooking was fanned by his mother, uncles, aunt and grandmother. He was also a voracious reader of cookbooks. But it was from working in his father’s El Caporal restaurants, two in Louisville and one in Crestwood, that he became enamored of the restaurant business.\r\n\r\nSince venturing out and opening The Ville Taqueria, 3922 Westport Road, Leon is establishing his own identity without thinking of himself as his father’s competitor. ”I opened my own restaurant because I wanted to make tortillas in-house and to do some things that are not typical of local Mexican restaurants,” he says, “I think people are ready for what we’re doing.”\r\n\r\n</div>'),
(410, 134, '_about_us_last', 'field_5aec4114bef85'),
(411, 134, 'about_us_last_img', '76'),
(412, 134, '_about_us_last_img', 'field_5aec4139bef86'),
(413, 134, 'banner_image', ''),
(414, 134, '_banner_image', 'field_5aed403bdfdd9'),
(415, 134, 'banner_text', ''),
(416, 134, '_banner_text', 'field_5aed40dbd7843'),
(417, 134, 'banner_button', ''),
(418, 134, '_banner_button', 'field_5aed40fbd7844'),
(419, 6, 'banner_image', ''),
(420, 6, '_banner_image', 'field_5aed403bdfdd9'),
(421, 6, 'banner_text', ''),
(422, 6, '_banner_text', 'field_5aed40dbd7843'),
(423, 6, 'banner_button', ''),
(424, 6, '_banner_button', 'field_5aed40fbd7844'),
(425, 135, 'about_us_first', '<div class="col-sm-6">\r\n<h2>Great Tacos and Burritos</h2>\r\n<h4>Adding Amazing Twists To The Traditional Mexican Menu</h4>\r\nThe Ville Taqueria, at 3922 Westport Road, opened in September 2014, to provide local diners with a unique Mexian menu with unique flavors and twists.\r\n\r\n”I opened my own restaurant because I wanted to make tortillas in-house and to do some things that are not typical of local Mexican restaurants,” says Owner and Chef Fabian Leon, “I think people are ready for what we’re doing.”\r\n\r\nOne of his original objectives was to create a simple menu so that guests can make quick decisions. He offers two varieties of tacos — street-style, made with cilantro and onion; and CLT, made with cheese, lettuce and tomato. There are three burritos, two quesadillas and three tortas. Diners may choose from various kinds of beef, chicken, pork, shrimp, fish, vegetable and breakfast fillings for each dish.\r\n\r\nSome of his cooking reflects the cuisine of the Jalisco state in Mexico, but he’s careful that he doesn’t become too closely identified with any region or style of cooking. “I like to twist my food with seasonings and other things that are atypical of Mexican cooking,” says the chef. “I fix my barbacoa, which is braised brisket, with Dos Equis XX. That’s kind of neat because it’s not traditionally done with beer.”\r\n\r\n</div>'),
(426, 135, '_about_us_first', 'field_5aec40d8bef83'),
(427, 135, 'about_us_first_img', '82'),
(428, 135, '_about_us_first_img', 'field_5aec40febef84'),
(429, 135, 'about_us_last', '<div class="col-sm-8">\r\n<h3>Fabian Leon</h3>\r\n<h6>Owner / Chef</h6>\r\nFabian Leon’s interest in cooking was fanned by his mother, uncles, aunt and grandmother. He was also a voracious reader of cookbooks. But it was from working in his father’s El Caporal restaurants, two in Louisville and one in Crestwood, that he became enamored of the restaurant business.\r\n\r\nSince venturing out and opening The Ville Taqueria, 3922 Westport Road, Leon is establishing his own identity without thinking of himself as his father’s competitor. ”I opened my own restaurant because I wanted to make tortillas in-house and to do some things that are not typical of local Mexican restaurants,” he says, “I think people are ready for what we’re doing.”\r\n\r\n</div>'),
(430, 135, '_about_us_last', 'field_5aec4114bef85'),
(431, 135, 'about_us_last_img', '76'),
(432, 135, '_about_us_last_img', 'field_5aec4139bef86'),
(433, 135, 'banner_image', ''),
(434, 135, '_banner_image', 'field_5aed403bdfdd9'),
(435, 135, 'banner_text', ''),
(436, 135, '_banner_text', 'field_5aed40dbd7843'),
(437, 135, 'banner_button', ''),
(438, 135, '_banner_button', 'field_5aed40fbd7844'),
(439, 136, 'about_us_first', '<div class="col-sm-6">\r\n<h2>Great Tacos and Burritos</h2>\r\n<h4>Adding Amazing Twists To The Traditional Mexican Menu</h4>\r\nThe Ville Taqueria, at 3922 Westport Road, opened in September 2014, to provide local diners with a unique Mexian menu with unique flavors and twists.\r\n\r\n”I opened my own restaurant because I wanted to make tortillas in-house and to do some things that are not typical of local Mexican restaurants,” says Owner and Chef Fabian Leon, “I think people are ready for what we’re doing.”\r\n\r\nOne of his original objectives was to create a simple menu so that guests can make quick decisions. He offers two varieties of tacos — street-style, made with cilantro and onion; and CLT, made with cheese, lettuce and tomato. There are three burritos, two quesadillas and three tortas. Diners may choose from various kinds of beef, chicken, pork, shrimp, fish, vegetable and breakfast fillings for each dish.\r\n\r\nSome of his cooking reflects the cuisine of the Jalisco state in Mexico, but he’s careful that he doesn’t become too closely identified with any region or style of cooking. “I like to twist my food with seasonings and other things that are atypical of Mexican cooking,” says the chef. “I fix my barbacoa, which is braised brisket, with Dos Equis XX. That’s kind of neat because it’s not traditionally done with beer.”\r\n\r\n</div>'),
(440, 136, '_about_us_first', 'field_5aec40d8bef83'),
(441, 136, 'about_us_first_img', '82'),
(442, 136, '_about_us_first_img', 'field_5aec40febef84'),
(443, 136, 'about_us_last', '<div class="col-sm-8">\r\n<h3>Fabian Leon</h3>\r\n<h6>Owner / Chef</h6>\r\nFabian Leon’s interest in cooking was fanned by his mother, uncles, aunt and grandmother. He was also a voracious reader of cookbooks. But it was from working in his father’s El Caporal restaurants, two in Louisville and one in Crestwood, that he became enamored of the restaurant business.\r\n\r\nSince venturing out and opening The Ville Taqueria, 3922 Westport Road, Leon is establishing his own identity without thinking of himself as his father’s competitor. ”I opened my own restaurant because I wanted to make tortillas in-house and to do some things that are not typical of local Mexican restaurants,” he says, “I think people are ready for what we’re doing.”\r\n\r\n</div>'),
(444, 136, '_about_us_last', 'field_5aec4114bef85'),
(445, 136, 'about_us_last_img', '76'),
(446, 136, '_about_us_last_img', 'field_5aec4139bef86'),
(447, 136, 'banner_image', ''),
(448, 136, '_banner_image', 'field_5aed403bdfdd9'),
(449, 136, 'banner_text', ''),
(450, 136, '_banner_text', 'field_5aed40dbd7843'),
(451, 136, 'banner_button', ''),
(452, 136, '_banner_button', 'field_5aed40fbd7844'),
(453, 74, '_wp_trash_meta_status', 'publish'),
(454, 74, '_wp_trash_meta_time', '1525685188'),
(455, 74, '_wp_desired_post_slug', 'our-chef'),
(456, 137, 'banner_image', ''),
(457, 137, '_banner_image', 'field_5aed403bdfdd9'),
(458, 137, 'banner_text', ''),
(459, 137, '_banner_text', 'field_5aed40dbd7843'),
(460, 137, 'banner_button', ''),
(461, 137, '_banner_button', 'field_5aed40fbd7844'),
(462, 10, 'banner_image', ''),
(463, 10, '_banner_image', 'field_5aed403bdfdd9'),
(464, 10, 'banner_text', ''),
(465, 10, '_banner_text', 'field_5aed40dbd7843'),
(466, 10, 'banner_button', ''),
(467, 10, '_banner_button', 'field_5aed40fbd7844');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

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
(1, 1, '2018-04-26 09:39:20', '2018-04-26 09:39:20', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-04-26 09:39:20', '2018-04-26 09:39:20', '', 0, 'http://182.76.249.189/villetaqueria/?p=1', 0, 'post', '', 1),
(2, 1, '2018-04-26 09:39:20', '2018-04-26 09:39:20', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://182.76.249.189/villetaqueria/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-04-26 09:39:20', '2018-04-26 09:39:20', '', 0, 'http://182.76.249.189/villetaqueria/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-04-26 10:05:32', '2018-04-26 10:05:32', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-04-26 10:06:18', '2018-04-26 10:06:18', '', 0, 'http://182.76.249.189/villetaqueria/?page_id=4', 0, 'page', '', 0),
(5, 1, '2018-04-26 10:05:32', '2018-04-26 10:05:32', '', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2018-04-26 10:05:32', '2018-04-26 10:05:32', '', 4, 'http://182.76.249.189/villetaqueria/2018/04/26/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-04-26 11:50:12', '2018-04-26 11:50:12', '<div class="col-sm-12">\r\n<h2 class="homeTitle">Healthy, Mouth-watering, Delicious Fresh-Mex</h2>\r\n<p>The Ville is the new champion of Fresh-Mex in Louisville, Kentucky<br>\r\non a quest to show how fresh and exquisite Mexican Cuisine can be.<br>\r\nWe will transform your taste buds forever.</p>\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/about-img2.jpg" alt="" class="alignnone size-full wp-image-72" />\r\n</div>\r\n\r\n<div class="">\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-heart"></i></span>\r\n<h3>Easy Ordering</h3>\r\n<p>A simple ordering system helps diners pick and choose their favorite dishes quickly and easily.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-utensils"></i></span>\r\n<h3>Unique Flavors</h3>\r\n<p>The Ville Taqueria’s carnitas are unusually rich and full-bodied with the addition of bourbon.  We also infuse our dishes with rum, vodka, gin and tequila.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-glass-martini"></i></span>\r\n<h3>Signature Drinks</h3>\r\n<p>Our drinks using local liquors, such as Old Forester and other Brown-Forman products, including our famous Bourbon-Ritas.</p>\r\n</div>\r\n</div>', 'About Us', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-05-07 09:07:32', '2018-05-07 09:07:32', '', 0, 'http://182.76.249.189/villetaqueria/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-04-26 11:50:12', '2018-04-26 11:50:12', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-26 11:50:12', '2018-04-26 11:50:12', '', 6, 'http://182.76.249.189/villetaqueria/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-04-26 11:50:24', '2018-04-26 11:50:24', '', 'Menu', '', 'publish', 'closed', 'closed', '', 'menu', '', '', '2018-05-05 05:30:29', '2018-05-05 05:30:29', '', 0, 'http://182.76.249.189/villetaqueria/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-04-26 11:50:24', '2018-04-26 11:50:24', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-04-26 11:50:24', '2018-04-26 11:50:24', '', 8, 'http://182.76.249.189/villetaqueria/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-04-26 11:50:43', '2018-04-26 11:50:43', '<div class="col-sm-12 text-center">\r\n<h2 class="homeTitle">Have The Ville Taqueria Cater Your Event</h2>\r\n</div>\r\n<div class="catering_content">\r\n<div class="col-sm-7">\r\n<p>With our unique flavors,  incredible taste, and beautiful plating, The Ville Taqueria makes a great addition to your conference, festival, party, wedding reception, or corporate event. We can create a custom menu that will please everyone in your group or organization for a price within your budget.\r\n<br><br>\r\nThe Ville Taqueria provides many different options for your event, no mater how large or small. From corporate events to private parties we have packages to feed your needs. We provide a variety of services, including everyone’s favorite -- Taco Bars.  Packages start as low as $X.XX per head and can be built up to accommodate your event needs. If you are interested in our services please send us a message using the form below and we will get back to you as soon as possible.</p>\r\n</div>\r\n<div class="col-sm-5">\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/catering1.jpg" alt="" class="alignnone size-full wp-image-68">\r\n</div>\r\n</div>\r\n\r\n<div class="catering_content">\r\n<div class="col-sm-5">\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/catering2.jpg" alt="" class="alignnone size-full wp-image-68">\r\n</div>\r\n\r\n<div class="col-sm-7">\r\n<h3>Planning a wedding? Need help with your reception?</h3>\r\n\r\n<p>The Ville Taqueria is perfect for your wedding reception. We can provide sit down meals or light fare that guests can carry  with them as they chat with other party-goers. The great news is that everyone loves tacos, from young to old. The Ville Taqueria has the best tacos in Louisville,  so it is a perfect fit for your wedding reception, rehearsal dinner, or any other wedding-related food.\r\n\r\n<h3>Holding a Corporate Event?</h3>\r\n\r\n<p>The Ville Taqueria is the perfect match for your networking or big corporate meeting. We can provide handheld foods that are great for people on the go, who need to chat while eating. Tacos are also great for Business Lunch and Learns. We can do it all while your concentrate on your employees and clients.</p>\r\n</div>\r\n</div>', 'Catering', '', 'publish', 'closed', 'closed', '', 'catering', '', '', '2018-05-07 09:26:48', '2018-05-07 09:26:48', '', 0, 'http://182.76.249.189/villetaqueria/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-04-26 11:50:43', '2018-04-26 11:50:43', '', 'Catering', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-04-26 11:50:43', '2018-04-26 11:50:43', '', 10, 'http://182.76.249.189/villetaqueria/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-04-26 11:51:00', '2018-04-26 11:51:00', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3133.122886335592!2d-85.6567741846685!3d38.25345587967507!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x886974c3477efc69%3A0xc04aa088db78a55f!2s3922+Westport+Rd%2C+Louisville%2C+KY+40207%2C+USA!5e0!3m2!1sen!2sin!4v1525429264105" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-05-04 10:27:00', '2018-05-04 10:27:00', '', 0, 'http://182.76.249.189/villetaqueria/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-04-26 11:51:00', '2018-04-26 11:51:00', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-04-26 11:51:00', '2018-04-26 11:51:00', '', 12, 'http://182.76.249.189/villetaqueria/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-04-26 11:51:41', '2018-04-26 11:51:41', '', 'Contact', '', 'publish', 'closed', 'closed', '', '14', '', '', '2018-04-27 12:40:55', '2018-04-27 12:40:55', '', 0, 'http://182.76.249.189/villetaqueria/?p=14', 5, 'nav_menu_item', '', 0),
(15, 1, '2018-04-26 11:51:40', '2018-04-26 11:51:40', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2018-04-27 12:40:55', '2018-04-27 12:40:55', '', 0, 'http://182.76.249.189/villetaqueria/?p=15', 4, 'nav_menu_item', '', 0),
(16, 1, '2018-04-26 11:51:40', '2018-04-26 11:51:40', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2018-04-27 12:40:55', '2018-04-27 12:40:55', '', 0, 'http://182.76.249.189/villetaqueria/?p=16', 3, 'nav_menu_item', '', 0),
(17, 1, '2018-04-26 11:51:40', '2018-04-26 11:51:40', '', 'About', '', 'publish', 'closed', 'closed', '', '17', '', '', '2018-04-27 12:40:55', '2018-04-27 12:40:55', '', 0, 'http://182.76.249.189/villetaqueria/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2018-04-26 11:51:40', '2018-04-26 11:51:40', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2018-04-27 12:40:55', '2018-04-27 12:40:55', '', 0, 'http://182.76.249.189/villetaqueria/?p=18', 1, 'nav_menu_item', '', 0),
(22, 1, '2018-04-26 12:16:39', '2018-04-26 12:16:39', '<h2>The Ville Taqueria</h2>\r\n<h3>Best Tacos In The Ville</h3>\r\n<p>The Ville is the new champion of Fresh-Mex in Louisville Ky on a quest to show how fresh and exquisite Mexican Cuisine can be. We will transform your taste buds forever.</p>\r\n<a href="javascript:void(0)">order now</a>', 'Slider1', '', 'publish', 'closed', 'closed', '', 'slider1', '', '', '2018-04-26 14:21:13', '2018-04-26 14:21:13', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=slider&#038;p=22', 0, 'slider', '', 0),
(23, 1, '2018-04-26 12:15:58', '2018-04-26 12:15:58', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-04-26 12:15:58', '2018-04-26 12:15:58', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/logo.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2018-04-26 12:16:10', '2018-04-26 12:16:10', '', 'black-arrow', '', 'inherit', 'open', 'closed', '', 'black-arrow', '', '', '2018-04-26 12:16:10', '2018-04-26 12:16:10', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/black-arrow.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2018-04-26 12:16:11', '2018-04-26 12:16:11', '', 'dishes-bg', '', 'inherit', 'open', 'closed', '', 'dishes-bg', '', '', '2018-04-26 12:16:11', '2018-04-26 12:16:11', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/dishes-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2018-04-26 12:16:12', '2018-04-26 12:16:12', '', 'dishes-img1', '', 'inherit', 'open', 'closed', '', 'dishes-img1', '', '', '2018-04-26 12:16:12', '2018-04-26 12:16:12', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/dishes-img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-04-26 12:16:12', '2018-04-26 12:16:12', '', 'dishes-img2', '', 'inherit', 'open', 'closed', '', 'dishes-img2', '', '', '2018-04-26 12:16:12', '2018-04-26 12:16:12', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/dishes-img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-04-26 12:16:13', '2018-04-26 12:16:13', '', 'dishes-img3', '', 'inherit', 'open', 'closed', '', 'dishes-img3', '', '', '2018-04-26 12:16:13', '2018-04-26 12:16:13', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/dishes-img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2018-04-26 12:16:13', '2018-04-26 12:16:13', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2018-04-26 12:16:13', '2018-04-26 12:16:13', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/favicon.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2018-04-26 12:16:13', '2018-04-26 12:16:13', '', 'footer-logo', '', 'inherit', 'open', 'closed', '', 'footer-logo', '', '', '2018-04-26 12:16:13', '2018-04-26 12:16:13', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/footer-logo.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2018-04-26 12:16:14', '2018-04-26 12:16:14', '', 'great-tacos-img', '', 'inherit', 'open', 'closed', '', 'great-tacos-img', '', '', '2018-04-26 12:16:14', '2018-04-26 12:16:14', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/great-tacos-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-04-26 12:16:14', '2018-04-26 12:16:14', '', 'how-it-work-img1', '', 'inherit', 'open', 'closed', '', 'how-it-work-img1', '', '', '2018-04-26 12:16:14', '2018-04-26 12:16:14', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/how-it-work-img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-04-26 12:16:14', '2018-04-26 12:16:14', '', 'how-it-work-img2', '', 'inherit', 'open', 'closed', '', 'how-it-work-img2', '', '', '2018-04-26 12:16:14', '2018-04-26 12:16:14', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/how-it-work-img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-04-26 12:16:15', '2018-04-26 12:16:15', '', 'how-it-work-img3', '', 'inherit', 'open', 'closed', '', 'how-it-work-img3', '', '', '2018-04-26 12:16:15', '2018-04-26 12:16:15', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/how-it-work-img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2018-04-26 12:16:15', '2018-04-26 12:16:15', '', 'instagram-img1', '', 'inherit', 'open', 'closed', '', 'instagram-img1', '', '', '2018-04-26 12:16:15', '2018-04-26 12:16:15', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/instagram-img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2018-04-26 12:16:15', '2018-04-26 12:16:15', '', 'instagram-img2', '', 'inherit', 'open', 'closed', '', 'instagram-img2', '', '', '2018-04-26 12:16:15', '2018-04-26 12:16:15', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/instagram-img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-04-26 12:16:16', '2018-04-26 12:16:16', '', 'instagram-img3', '', 'inherit', 'open', 'closed', '', 'instagram-img3', '', '', '2018-04-26 12:16:16', '2018-04-26 12:16:16', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/instagram-img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-04-26 12:16:16', '2018-04-26 12:16:16', '', 'instagram-img4', '', 'inherit', 'open', 'closed', '', 'instagram-img4', '', '', '2018-04-26 12:16:16', '2018-04-26 12:16:16', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/instagram-img4.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-04-26 12:16:16', '2018-04-26 12:16:16', '', 'instagram-img5', '', 'inherit', 'open', 'closed', '', 'instagram-img5', '', '', '2018-04-26 12:16:16', '2018-04-26 12:16:16', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/instagram-img5.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-04-26 12:16:17', '2018-04-26 12:16:17', '', 'instagram-img6', '', 'inherit', 'open', 'closed', '', 'instagram-img6', '', '', '2018-04-26 12:16:17', '2018-04-26 12:16:17', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/instagram-img6.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-04-26 12:16:17', '2018-04-26 12:16:17', '', 'question-bg', '', 'inherit', 'open', 'closed', '', 'question-bg', '', '', '2018-04-26 12:16:17', '2018-04-26 12:16:17', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/question-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2018-04-26 12:16:17', '2018-04-26 12:16:17', '', 'question-img', '', 'inherit', 'open', 'closed', '', 'question-img', '', '', '2018-04-26 12:16:17', '2018-04-26 12:16:17', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/question-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-04-26 12:16:18', '2018-04-26 12:16:18', '', 'right-circle', '', 'inherit', 'open', 'closed', '', 'right-circle', '', '', '2018-04-26 12:16:18', '2018-04-26 12:16:18', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/right-circle.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2018-04-26 12:16:18', '2018-04-26 12:16:18', '', 'slider-img1', '', 'inherit', 'open', 'closed', '', 'slider-img1', '', '', '2018-04-26 12:16:18', '2018-04-26 12:16:18', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/slider-img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2018-04-26 12:16:19', '2018-04-26 12:16:19', '', 'slider-img2', '', 'inherit', 'open', 'closed', '', 'slider-img2', '', '', '2018-04-26 12:16:19', '2018-04-26 12:16:19', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/slider-img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-04-26 12:16:20', '2018-04-26 12:16:20', '', 'title-bg', '', 'inherit', 'open', 'closed', '', 'title-bg', '', '', '2018-04-26 12:16:20', '2018-04-26 12:16:20', '', 22, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/title-bg.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2018-04-26 12:16:53', '2018-04-26 12:16:53', '<h2>The Ville Taqueria</h2>\r\n<h3>Best Tacos In The Ville</h3>\r\n<p>The Ville is the new champion of Fresh-Mex in Louisville Ky on a quest to show how fresh and exquisite Mexican Cuisine can be. We will transform your taste buds forever.</p>\r\n<a href="javascript:void(0)">order now</a>', 'Slider2', '', 'publish', 'closed', 'closed', '', 'slider2', '', '', '2018-04-26 14:21:31', '2018-04-26 14:21:31', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=slider&#038;p=47', 0, 'slider', '', 0),
(48, 1, '2018-04-26 14:20:32', '2018-04-26 14:20:32', '<h2>The Ville Taqueria</h2>\n<h3>Best Tacos In The Ville</h3>\n<p>The Ville is the new champion of Fresh-Mex in Louisville Ky on a quest to show how fresh and exquisite Mexican Cuisine can be. We will transform your taste buds forever.</p>\n<a href', 'Slider1', '', 'inherit', 'closed', 'closed', '', '22-autosave-v1', '', '', '2018-04-26 14:20:32', '2018-04-26 14:20:32', '', 22, 'http://182.76.249.189/villetaqueria/22-autosave-v1/', 0, 'revision', '', 0),
(49, 1, '2018-04-27 11:55:04', '2018-04-27 11:55:04', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nVille Taqueria "[your-subject]"\n[your-name] <wordpress@182.76.249.189>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Ville Taqueria (http://182.76.249.189/villetaqueria)\nsanjib.ghosh@sbr-technologies.com\nReply-To: [your-email]\n\n0\n0\n\nVille Taqueria "[your-subject]"\nVille Taqueria <wordpress@182.76.249.189>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Ville Taqueria (http://182.76.249.189/villetaqueria)\n[your-email]\nReply-To: sanjib.ghosh@sbr-technologies.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-04-27 11:55:04', '2018-04-27 11:55:04', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=wpcf7_contact_form&p=49', 0, 'wpcf7_contact_form', '', 0),
(50, 1, '2018-04-27 11:56:37', '2018-04-27 11:56:37', '<div class="form-group"><label>Name</label> [text* your-name]</div>\r\n<div class="form-group"><label>Email Address</label> [email* your-email]</div>\r\n<div class="form-group"><label>Mobile Number</label> [tel* your-phone]</div>\r\n<div class="form-group">[submit "Submit"]</div>\n1\nNew Message Received - [your-name]\n[your-name] <wordpress@182.76.249.189>\nsanjib.ghosh@sbr-technologies.com\n<table border="1" style="background-color=#ffffff" width="100%" cellpadding="1" cellspacing="1">\r\n<tbody>\r\n<tr>\r\n<td>Name:</td>\r\n<td>[your-name]</td>\r\n</tr>\r\n<tr>\r\n<td>Email:</td>\r\n<td>[your-email]</td>\r\n</tr>\r\n<tr>\r\n<td>Phone:</td>\r\n<td>[your-phone]</td>\r\n</tr>\r\n</tbody>\r\n</table>\nReply-To: [your-email]\n\n1\n\n\nVille Taqueria "[your-subject]"\nVille Taqueria <wordpress@182.76.249.189>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Ville Taqueria (http://182.76.249.189/villetaqueria)\nReply-To: sanjib.ghosh@sbr-technologies.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Form', '', 'publish', 'closed', 'closed', '', 'contact-form', '', '', '2018-04-27 12:20:15', '2018-04-27 12:20:15', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=wpcf7_contact_form&#038;p=50', 0, 'wpcf7_contact_form', '', 0),
(51, 1, '2018-04-27 12:26:38', '2018-04-27 12:26:38', '', 'About', '', 'inherit', 'closed', 'closed', '', '6-autosave-v1', '', '', '2018-04-27 12:26:38', '2018-04-27 12:26:38', '', 6, 'http://182.76.249.189/villetaqueria/6-autosave-v1/', 0, 'revision', '', 0),
(52, 1, '2018-04-27 12:26:51', '2018-04-27 12:26:51', '', 'about-banner', '', 'inherit', 'open', 'closed', '', 'about-banner', '', '', '2018-04-27 12:26:51', '2018-04-27 12:26:51', '', 6, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/about-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2018-04-27 12:30:25', '2018-04-27 12:30:25', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-04-27 12:30:25', '2018-04-27 12:30:25', '', 6, 'http://182.76.249.189/villetaqueria/6-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-05-04 09:04:45', '2018-05-04 09:04:45', '<div class="col-sm-12 text-center">\n<h2 class="homeTitle">Have The Ville Taqueria Cater Your Event</h2>\n</div>\n<div class="catering_content">\n<div class="col-sm-7">\n<p>With our unique flavors,  incredible taste, and beautiful plating, The Ville Taqueria makes a great addition to your conference, festival, party, wedding reception, or corporate event. We can create a custom menu that will please everyone in your group or organization for a price within your budget.\n<br><br>\nThe Ville Taqueria provides many different options for your event, no mater how large or small. From corporate events to private parties we have packages to feed your needs. We provide a variety of services, including everyone’s favorite -- Taco Bars.  Packages start as low as $X.XX per head and can be built up to accommodate your event needs. If you are interested in our services please send us a message using the form below and we will get back to you as soon as possible.</p>\n</div>\n<div class="col-sm-5">\n<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/catering1.jpg" alt="">\n\n</div>\n</div>\n\n<div class="catering_content">\n<div class="col-sm-5">\n<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/catering2.jpg" alt="">\n</div>\n\n<div class="col-sm-7">\n<h3>Planning a wedding? Need help with your reception?</h3>\n\n<p>The Ville Taqueria is perfect for your wedding reception. We can provide sit down meals or light fare that guests can carry  with them as they chat with other party-goers. The great news is that everyone loves tacos, from young to old. The Ville Taqueria has the best tacos in Louisville,  so it is a perfect fit for your wedding reception, rehearsal dinner, or any other wedding-related food.\n\n<h3>Holding a Corporate Event?</h3>\n\n<p>The Ville Taqueria is the perfect match for your networking or big corporate meeting. We can provide handheld foods that are great for people on the go, who need to chat while eating. Tacos are also great for Business Lunch and Learns. We can do it all while your concentrate on your employees and clients.</p>\n</div>\n</div>', 'Catering', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2018-05-04 09:04:45', '2018-05-04 09:04:45', '', 10, 'http://182.76.249.189/villetaqueria/10-autosave-v1/', 0, 'revision', '', 0),
(55, 1, '2018-04-27 12:40:01', '2018-04-27 12:40:01', '', 'catering-banner', '', 'inherit', 'open', 'closed', '', 'catering-banner', '', '', '2018-04-27 12:40:01', '2018-04-27 12:40:01', '', 10, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/catering-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-04-27 12:40:02', '2018-04-27 12:40:02', '', 'contact-banner', '', 'inherit', 'open', 'closed', '', 'contact-banner', '', '', '2018-04-27 12:40:02', '2018-04-27 12:40:02', '', 10, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/contact-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-04-27 12:40:42', '2018-04-27 12:40:42', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-04-27 12:40:42', '2018-04-27 12:40:42', '', 12, 'http://182.76.249.189/villetaqueria/12-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-04-27 13:46:31', '2018-04-27 13:46:31', '', 'menu-banner', '', 'inherit', 'open', 'closed', '', 'menu-banner', '', '', '2018-04-27 13:46:31', '2018-04-27 13:46:31', '', 8, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/04/menu-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2018-04-27 14:01:45', '2018-04-27 14:01:45', 'With Fresh, Hand Made Corn Tortillas', 'Tacos', '', 'publish', 'closed', 'closed', '', 'tacos', '', '', '2018-04-27 14:03:55', '2018-04-27 14:03:55', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=dishes&#038;p=59', 0, 'dishes', '', 0),
(60, 1, '2018-04-27 14:04:20', '2018-04-27 14:04:20', 'Giant Burritos Served With Your Choice of Fillings', 'Burritos', '', 'publish', 'closed', 'closed', '', 'burritos', '', '', '2018-04-27 14:04:20', '2018-04-27 14:04:20', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=dishes&#038;p=60', 0, 'dishes', '', 0),
(61, 1, '2018-04-27 14:04:48', '2018-04-27 14:04:48', 'Bolillo Bread Sandwiches filled with Beef, Pork, or Chicken', 'Tortas', '', 'publish', 'closed', 'closed', '', 'tortas', '', '', '2018-04-27 14:04:48', '2018-04-27 14:04:48', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=dishes&#038;p=61', 0, 'dishes', '', 0),
(62, 1, '2018-04-27 14:13:31', '2018-04-27 14:13:31', 'Tacos, Burritos, Tortas, & Much More!', 'Pick Your Style', '', 'publish', 'closed', 'closed', '', 'pick-your-style', '', '', '2018-05-03 07:47:17', '2018-05-03 07:47:17', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=work&#038;p=62', 0, 'work', '', 0),
(63, 1, '2018-04-27 14:14:50', '2018-04-27 14:14:50', 'Beef, Chicken, Fish,  Pork, & Shrimp', 'Pick Your Filling', '', 'publish', 'closed', 'closed', '', 'pick-your-filling', '', '', '2018-05-03 07:47:10', '2018-05-03 07:47:10', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=work&#038;p=63', 0, 'work', '', 0),
(64, 1, '2018-04-27 14:16:00', '2018-04-27 14:16:00', 'Cerveza, Margaritas, Teas, and Sodas', 'Pick Your Drink', '', 'publish', 'closed', 'closed', '', 'pick-your-drink', '', '', '2018-04-27 14:35:18', '2018-04-27 14:35:18', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=work&#038;p=64', 0, 'work', '', 0),
(65, 1, '2018-04-27 14:34:28', '2018-04-27 14:34:28', 'Cerveza, Margaritas, Teas, and Sodas', 'Pick Your Drink', '', 'inherit', 'closed', 'closed', '', '64-autosave-v1', '', '', '2018-04-27 14:34:28', '2018-04-27 14:34:28', '', 64, 'http://182.76.249.189/villetaqueria/64-autosave-v1/', 0, 'revision', '', 0),
(66, 1, '2018-05-04 07:35:13', '2018-05-04 07:35:13', '<div class="form-group">[text* your-name placeholder "Name"]</div>\r\n<div class="form-group">[email* your-email placeholder "Email"]</div>\r\n<div class="form-group">[textarea* textarea-73 placeholder "Message"]</div>\r\n<div class="form-group">[submit "Submit"]</div>\n1\nVille Taqueria "[your-subject]"\n[your-name] <wordpress@182.76.249.189>\nsanjib.ghosh@sbr-technologies.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Ville Taqueria (http://182.76.249.189/villetaqueria)\nReply-To: [your-email]\n\n\n\n\nVille Taqueria "[your-subject]"\nVille Taqueria <wordpress@182.76.249.189>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Ville Taqueria (http://182.76.249.189/villetaqueria)\nReply-To: sanjib.ghosh@sbr-technologies.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Catering Form', '', 'publish', 'closed', 'closed', '', 'catering-form', '', '', '2018-05-04 07:39:38', '2018-05-04 07:39:38', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=wpcf7_contact_form&#038;p=66', 0, 'wpcf7_contact_form', '', 0),
(67, 1, '2018-05-04 09:03:44', '2018-05-04 09:03:44', '<div class="col-sm-12 text-center">\r\n<h2 class="homeTitle">Have The Ville Taqueria Cater Your Event</h2>\r\n</div>\r\n<div class="catering_content">\r\n<div class="col-sm-7">\r\n<p>With our unique flavors,  incredible taste, and beautiful plating, The Ville Taqueria makes a great addition to your conference, festival, party, wedding reception, or corporate event. We can create a custom menu that will please everyone in your group or organization for a price within your budget.\r\n<br><br>\r\nThe Ville Taqueria provides many different options for your event, no mater how large or small. From corporate events to private parties we have packages to feed your needs. We provide a variety of services, including everyone’s favorite -- Taco Bars.  Packages start as low as $X.XX per head and can be built up to accommodate your event needs. If you are interested in our services please send us a message using the form below and we will get back to you as soon as possible.</p>\r\n</div>\r\n<div class="col-sm-5">\r\n<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/catering1.jpg" alt="">\r\n</div>\r\n</div>\r\n\r\n<div class="catering_content">\r\n<div class="col-sm-5">\r\n<img src="<?php echo esc_url( get_template_directory_uri() ); ?>/images/catering2.jpg" alt="">\r\n</div>\r\n\r\n<div class="col-sm-7">\r\n<h3>Planning a wedding? Need help with your reception?</h3>\r\n\r\n<p>The Ville Taqueria is perfect for your wedding reception. We can provide sit down meals or light fare that guests can carry  with them as they chat with other party-goers. The great news is that everyone loves tacos, from young to old. The Ville Taqueria has the best tacos in Louisville,  so it is a perfect fit for your wedding reception, rehearsal dinner, or any other wedding-related food.\r\n\r\n<h3>Holding a Corporate Event?</h3>\r\n\r\n<p>The Ville Taqueria is the perfect match for your networking or big corporate meeting. We can provide handheld foods that are great for people on the go, who need to chat while eating. Tacos are also great for Business Lunch and Learns. We can do it all while your concentrate on your employees and clients.</p>\r\n</div>\r\n</div>', 'Catering', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-05-04 09:03:44', '2018-05-04 09:03:44', '', 10, 'http://182.76.249.189/villetaqueria/10-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-05-04 09:04:53', '2018-05-04 09:04:53', '', 'catering1', '', 'inherit', 'open', 'closed', '', 'catering1', '', '', '2018-05-04 09:04:53', '2018-05-04 09:04:53', '', 10, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/catering1.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2018-05-04 09:04:53', '2018-05-04 09:04:53', '', 'catering2', '', 'inherit', 'open', 'closed', '', 'catering2', '', '', '2018-05-04 09:04:53', '2018-05-04 09:04:53', '', 10, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/catering2.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2018-05-04 09:05:42', '2018-05-04 09:05:42', '<div class="col-sm-12 text-center">\r\n<h2 class="homeTitle">Have The Ville Taqueria Cater Your Event</h2>\r\n</div>\r\n<div class="catering_content">\r\n<div class="col-sm-7">\r\n<p>With our unique flavors,  incredible taste, and beautiful plating, The Ville Taqueria makes a great addition to your conference, festival, party, wedding reception, or corporate event. We can create a custom menu that will please everyone in your group or organization for a price within your budget.\r\n<br><br>\r\nThe Ville Taqueria provides many different options for your event, no mater how large or small. From corporate events to private parties we have packages to feed your needs. We provide a variety of services, including everyone’s favorite -- Taco Bars.  Packages start as low as $X.XX per head and can be built up to accommodate your event needs. If you are interested in our services please send us a message using the form below and we will get back to you as soon as possible.</p>\r\n</div>\r\n<div class="col-sm-5">\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/catering1.jpg" alt="" width="475" height="445" class="alignnone size-full wp-image-68">\r\n</div>\r\n</div>\r\n\r\n<div class="catering_content">\r\n<div class="col-sm-5">\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/catering2.jpg" alt="" width="475" height="445" class="alignnone size-full wp-image-68">\r\n</div>\r\n\r\n<div class="col-sm-7">\r\n<h3>Planning a wedding? Need help with your reception?</h3>\r\n\r\n<p>The Ville Taqueria is perfect for your wedding reception. We can provide sit down meals or light fare that guests can carry  with them as they chat with other party-goers. The great news is that everyone loves tacos, from young to old. The Ville Taqueria has the best tacos in Louisville,  so it is a perfect fit for your wedding reception, rehearsal dinner, or any other wedding-related food.\r\n\r\n<h3>Holding a Corporate Event?</h3>\r\n\r\n<p>The Ville Taqueria is the perfect match for your networking or big corporate meeting. We can provide handheld foods that are great for people on the go, who need to chat while eating. Tacos are also great for Business Lunch and Learns. We can do it all while your concentrate on your employees and clients.</p>\r\n</div>\r\n</div>', 'Catering', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-05-04 09:05:42', '2018-05-04 09:05:42', '', 10, 'http://182.76.249.189/villetaqueria/10-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-05-04 10:27:00', '2018-05-04 10:27:00', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3133.122886335592!2d-85.6567741846685!3d38.25345587967507!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x886974c3477efc69%3A0xc04aa088db78a55f!2s3922+Westport+Rd%2C+Louisville%2C+KY+40207%2C+USA!5e0!3m2!1sen!2sin!4v1525429264105" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-05-04 10:27:00', '2018-05-04 10:27:00', '', 12, 'http://182.76.249.189/villetaqueria/12-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-05-04 10:47:54', '2018-05-04 10:47:54', '', 'about-img2', '', 'inherit', 'open', 'closed', '', 'about-img2', '', '', '2018-05-04 10:47:54', '2018-05-04 10:47:54', '', 6, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/about-img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2018-05-04 10:48:24', '2018-05-04 10:48:24', '<div class="col-sm-12">\r\n<h2 class="homeTitle">Healthy, Mouth-watering, Delicious Fresh-Mex</h2>\r\n<p>The Ville is the new champion of Fresh-Mex in Louisville, Kentucky<br>\r\non a quest to show how fresh and exquisite Mexican Cuisine can be.<br>\r\nWe will transform your taste buds forever.</p>\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/about-img2.jpg" alt="" width="1030" height="300" class="alignnone size-full wp-image-72" />\r\n</div>\r\n\r\n<div class="row">\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-heart"></i></span>\r\n<h3>Easy Ordering</h3>\r\n<p>A simple ordering system helps diners pick and choose their favorite dishes quickly and easily.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-utensils"></i></span>\r\n<h3>Unique Flavors</h3>\r\n<p>The Ville Taqueria’s carnitas are unusually rich and full-bodied with the addition of bourbon.  We also infuse our dishes with rum, vodka, gin and tequila.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-glass-martini"></i></span>\r\n<h3>Signature Drinks</h3>\r\n<p>Our drinks using local liquors, such as Old Forester and other Brown-Forman products, including our famous Bourbon-Ritas.</p>\r\n</div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-05-04 10:48:24', '2018-05-04 10:48:24', '', 6, 'http://182.76.249.189/villetaqueria/6-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-05-04 11:02:28', '2018-05-04 11:02:28', '<div class="col-sm-4">\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/about-img3.jpg" alt="" width="300" height="325" class="alignnone size-full wp-image-76" />\r\n</div>\r\n\r\n<div class="col-sm-8">\r\n<h3>Fabian Leon</h3>\r\n<h6>Owner / Chef</h6>\r\n<p>Fabian Leon’s interest in cooking was fanned by his mother, uncles, aunt and grandmother. He was also a voracious reader of cookbooks. But it was from working in his father’s El Caporal restaurants, two in Louisville and one in Crestwood, that he became enamored of the restaurant business.\r\n<br><br>\r\nSince venturing out and opening The Ville Taqueria, 3922 Westport Road, Leon is establishing his own identity without thinking of himself as his father’s competitor. ”I opened my own restaurant because I wanted to make tortillas in-house and to do some things that are not typical of local Mexican restaurants,” he says, “I think people are ready for what we’re doing.”</p>\r\n</div>\r\n', 'Our Chef', '', 'trash', 'closed', 'closed', '', 'our-chef__trashed', '', '', '2018-05-07 09:26:28', '2018-05-07 09:26:28', '', 0, 'http://182.76.249.189/villetaqueria/?page_id=74', 0, 'page', '', 0),
(75, 1, '2018-05-04 11:02:28', '2018-05-04 11:02:28', '', 'Our Chef', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-05-04 11:02:28', '2018-05-04 11:02:28', '', 74, 'http://182.76.249.189/villetaqueria/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-05-04 11:04:44', '2018-05-04 11:04:44', '', 'about-img3', '', 'inherit', 'open', 'closed', '', 'about-img3', '', '', '2018-05-04 11:04:44', '2018-05-04 11:04:44', '', 74, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/about-img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2018-05-04 11:04:53', '2018-05-04 11:04:53', '<div class="col-sm-4">\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/about-img3.jpg" alt="" width="300" height="325" class="alignnone size-full wp-image-76" />\r\n</div>\r\n\r\n<div class="col-sm-8">\r\n<h3>Fabian Leon</h3>\r\n<h6>Owner / Chef</h6>\r\n<p>Fabian Leon’s interest in cooking was fanned by his mother, uncles, aunt and grandmother. He was also a voracious reader of cookbooks. But it was from working in his father’s El Caporal restaurants, two in Louisville and one in Crestwood, that he became enamored of the restaurant business.\r\n<br><br>\r\nSince venturing out and opening The Ville Taqueria, 3922 Westport Road, Leon is establishing his own identity without thinking of himself as his father’s competitor. ”I opened my own restaurant because I wanted to make tortillas in-house and to do some things that are not typical of local Mexican restaurants,” he says, “I think people are ready for what we’re doing.”</p>\r\n</div>\r\n', 'Our Chef', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-05-04 11:04:53', '2018-05-04 11:04:53', '', 74, 'http://182.76.249.189/villetaqueria/74-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-05-04 11:17:45', '2018-05-04 11:17:45', '', 'About Page', '', 'publish', 'closed', 'closed', '', 'acf_about-page', '', '', '2018-05-04 11:18:36', '2018-05-04 11:18:36', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=acf&#038;p=78', 0, 'acf', '', 0),
(79, 1, '2018-05-04 11:21:26', '2018-05-04 11:21:26', '<div class="col-sm-12">\r\n<h2 class="homeTitle">Healthy, Mouth-watering, Delicious Fresh-Mex</h2>\r\n<p>The Ville is the new champion of Fresh-Mex in Louisville, Kentucky<br>\r\non a quest to show how fresh and exquisite Mexican Cuisine can be.<br>\r\nWe will transform your taste buds forever.</p>\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/about-img2.jpg" alt="" width="1030" height="300" class="alignnone size-full wp-image-72" />\r\n</div>\r\n\r\n<div class="row">\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-heart"></i></span>\r\n<h3>Easy Ordering</h3>\r\n<p>A simple ordering system helps diners pick and choose their favorite dishes quickly and easily.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-utensils"></i></span>\r\n<h3>Unique Flavors</h3>\r\n<p>The Ville Taqueria’s carnitas are unusually rich and full-bodied with the addition of bourbon.  We also infuse our dishes with rum, vodka, gin and tequila.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-glass-martini"></i></span>\r\n<h3>Signature Drinks</h3>\r\n<p>Our drinks using local liquors, such as Old Forester and other Brown-Forman products, including our famous Bourbon-Ritas.</p>\r\n</div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-05-04 11:21:26', '2018-05-04 11:21:26', '', 6, 'http://182.76.249.189/villetaqueria/6-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-05-04 11:25:32', '2018-05-04 11:25:32', '<div class="col-sm-12">\r\n<h2 class="homeTitle">Healthy, Mouth-watering, Delicious Fresh-Mex</h2>\r\n<p>The Ville is the new champion of Fresh-Mex in Louisville, Kentucky<br>\r\non a quest to show how fresh and exquisite Mexican Cuisine can be.<br>\r\nWe will transform your taste buds forever.</p>\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/about-img2.jpg" alt="" width="1030" height="300" class="alignnone size-full wp-image-72" />\r\n</div>\r\n\r\n<div class="row">\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-heart"></i></span>\r\n<h3>Easy Ordering</h3>\r\n<p>A simple ordering system helps diners pick and choose their favorite dishes quickly and easily.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-utensils"></i></span>\r\n<h3>Unique Flavors</h3>\r\n<p>The Ville Taqueria’s carnitas are unusually rich and full-bodied with the addition of bourbon.  We also infuse our dishes with rum, vodka, gin and tequila.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-glass-martini"></i></span>\r\n<h3>Signature Drinks</h3>\r\n<p>Our drinks using local liquors, such as Old Forester and other Brown-Forman products, including our famous Bourbon-Ritas.</p>\r\n</div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-05-04 11:25:32', '2018-05-04 11:25:32', '', 6, 'http://182.76.249.189/villetaqueria/6-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-05-04 11:27:41', '2018-05-04 11:27:41', '<div class="col-sm-12">\r\n<h2 class="homeTitle">Healthy, Mouth-watering, Delicious Fresh-Mex</h2>\r\n<p>The Ville is the new champion of Fresh-Mex in Louisville, Kentucky<br>\r\non a quest to show how fresh and exquisite Mexican Cuisine can be.<br>\r\nWe will transform your taste buds forever.</p>\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/about-img2.jpg" alt="" width="1030" height="300" class="alignnone size-full wp-image-72" />\r\n</div>\r\n\r\n<div class="row">\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-heart"></i></span>\r\n<h3>Easy Ordering</h3>\r\n<p>A simple ordering system helps diners pick and choose their favorite dishes quickly and easily.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-utensils"></i></span>\r\n<h3>Unique Flavors</h3>\r\n<p>The Ville Taqueria’s carnitas are unusually rich and full-bodied with the addition of bourbon.  We also infuse our dishes with rum, vodka, gin and tequila.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-glass-martini"></i></span>\r\n<h3>Signature Drinks</h3>\r\n<p>Our drinks using local liquors, such as Old Forester and other Brown-Forman products, including our famous Bourbon-Ritas.</p>\r\n</div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-05-04 11:27:41', '2018-05-04 11:27:41', '', 6, 'http://182.76.249.189/villetaqueria/6-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-05-04 11:32:42', '2018-05-04 11:32:42', '', 'about-img1', '', 'inherit', 'open', 'closed', '', 'about-img1', '', '', '2018-05-04 11:32:42', '2018-05-04 11:32:42', '', 6, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/about-img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2018-05-04 11:32:49', '2018-05-04 11:32:49', '<div class="col-sm-12">\r\n<h2 class="homeTitle">Healthy, Mouth-watering, Delicious Fresh-Mex</h2>\r\n<p>The Ville is the new champion of Fresh-Mex in Louisville, Kentucky<br>\r\non a quest to show how fresh and exquisite Mexican Cuisine can be.<br>\r\nWe will transform your taste buds forever.</p>\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/about-img2.jpg" alt="" width="1030" height="300" class="alignnone size-full wp-image-72" />\r\n</div>\r\n\r\n<div class="row">\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-heart"></i></span>\r\n<h3>Easy Ordering</h3>\r\n<p>A simple ordering system helps diners pick and choose their favorite dishes quickly and easily.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-utensils"></i></span>\r\n<h3>Unique Flavors</h3>\r\n<p>The Ville Taqueria’s carnitas are unusually rich and full-bodied with the addition of bourbon.  We also infuse our dishes with rum, vodka, gin and tequila.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-glass-martini"></i></span>\r\n<h3>Signature Drinks</h3>\r\n<p>Our drinks using local liquors, such as Old Forester and other Brown-Forman products, including our famous Bourbon-Ritas.</p>\r\n</div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-05-04 11:32:49', '2018-05-04 11:32:49', '', 6, 'http://182.76.249.189/villetaqueria/6-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-05-05 05:14:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-05 05:14:18', '0000-00-00 00:00:00', '', 0, 'http://182.76.249.189/villetaqueria/?p=84', 0, 'post', '', 0),
(85, 1, '2018-05-05 05:26:46', '2018-05-05 05:26:46', '', 'Banner Image', '', 'publish', 'closed', 'closed', '', 'acf_banner-image', '', '', '2018-05-05 05:29:45', '2018-05-05 05:29:45', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=acf&#038;p=85', 0, 'acf', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(86, 1, '2018-05-05 05:27:50', '2018-05-05 05:27:50', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-05-05 05:27:50', '2018-05-05 05:27:50', '', 8, 'http://182.76.249.189/villetaqueria/8-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-05-05 05:30:29', '2018-05-05 05:30:29', '', 'Menu', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-05-05 05:30:29', '2018-05-05 05:30:29', '', 8, 'http://182.76.249.189/villetaqueria/8-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-05-05 05:57:16', '2018-05-05 05:57:16', '<div class="menu_listing_details_con">\r\n<h2>Fresh Hand made corn tortilla</h2>\r\n<h3>Street style  |  $3.50</h3>\r\n<p>cILANTRO,ONION</p>\r\n<h3>CLT  |  $3.75</h3>\r\n<p>CHEESE,ROMAINE LETTUCE,TOMATO</p>\r\n</div>', 'Tacos', '', 'publish', 'closed', 'closed', '', 'tacos', '', '', '2018-05-07 10:37:37', '2018-05-07 10:37:37', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct&#038;p=88', 0, 'menuproduct', '', 0),
(89, 1, '2018-05-05 06:37:27', '2018-05-05 06:37:27', '<div class="menu_listing_details_con">\r\n<h2>Fresh Hand made corn tortilla</h2>\r\n<h3>Street style  |  $3.50</h3>\r\n<p>cILANTRO,ONION</p>\r\n<h3>CLT  |  $3.75</h3>\r\n<p>CHEESE,ROMAINE LETTUCE,TOMATO</p>\r\n</div>', 'Burritos', '', 'publish', 'closed', 'closed', '', 'burritos', '', '', '2018-05-07 10:53:05', '2018-05-07 10:53:05', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct&#038;p=89', 0, 'menuproduct', '', 0),
(90, 1, '2018-05-05 06:35:31', '2018-05-05 06:35:31', '', 'menu-large-img1', '', 'inherit', 'open', 'closed', '', 'menu-large-img1', '', '', '2018-05-05 06:35:31', '2018-05-05 06:35:31', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-large-img1.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2018-05-05 06:35:31', '2018-05-05 06:35:31', '', 'menu-small-img1', '', 'inherit', 'open', 'closed', '', 'menu-small-img1', '', '', '2018-05-05 06:35:31', '2018-05-05 06:35:31', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img1.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2018-05-05 06:35:32', '2018-05-05 06:35:32', '', 'menu-small-img2', '', 'inherit', 'open', 'closed', '', 'menu-small-img2', '', '', '2018-05-05 06:35:32', '2018-05-05 06:35:32', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img2.png', 0, 'attachment', 'image/png', 0),
(93, 1, '2018-05-05 06:35:32', '2018-05-05 06:35:32', '', 'menu-small-img3', '', 'inherit', 'open', 'closed', '', 'menu-small-img3', '', '', '2018-05-05 06:35:32', '2018-05-05 06:35:32', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img3.png', 0, 'attachment', 'image/png', 0),
(94, 1, '2018-05-05 06:35:32', '2018-05-05 06:35:32', '', 'menu-small-img4', '', 'inherit', 'open', 'closed', '', 'menu-small-img4', '', '', '2018-05-05 06:35:32', '2018-05-05 06:35:32', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img4.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2018-05-05 06:36:27', '2018-05-05 06:36:27', '', 'menu-large-img2', '', 'inherit', 'open', 'closed', '', 'menu-large-img2', '', '', '2018-05-05 06:36:27', '2018-05-05 06:36:27', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-large-img2.png', 0, 'attachment', 'image/png', 0),
(96, 1, '2018-05-05 06:36:28', '2018-05-05 06:36:28', '', 'menu-large-img3', '', 'inherit', 'open', 'closed', '', 'menu-large-img3', '', '', '2018-05-05 06:36:28', '2018-05-05 06:36:28', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-large-img3.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2018-05-05 06:36:28', '2018-05-05 06:36:28', '', 'menu-large-img4', '', 'inherit', 'open', 'closed', '', 'menu-large-img4', '', '', '2018-05-05 06:36:28', '2018-05-05 06:36:28', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-large-img4.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2018-05-05 06:36:29', '2018-05-05 06:36:29', '', 'menu-small-img5', '', 'inherit', 'open', 'closed', '', 'menu-small-img5', '', '', '2018-05-05 06:36:29', '2018-05-05 06:36:29', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img5.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2018-05-05 06:36:29', '2018-05-05 06:36:29', '', 'menu-small-img6', '', 'inherit', 'open', 'closed', '', 'menu-small-img6', '', '', '2018-05-05 06:36:29', '2018-05-05 06:36:29', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img6.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2018-05-05 06:36:29', '2018-05-05 06:36:29', '', 'menu-small-img7', '', 'inherit', 'open', 'closed', '', 'menu-small-img7', '', '', '2018-05-05 06:36:29', '2018-05-05 06:36:29', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img7.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2018-05-05 06:36:30', '2018-05-05 06:36:30', '', 'menu-small-img8', '', 'inherit', 'open', 'closed', '', 'menu-small-img8', '', '', '2018-05-05 06:36:30', '2018-05-05 06:36:30', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img8.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2018-05-05 06:36:30', '2018-05-05 06:36:30', '', 'menu-small-img9', '', 'inherit', 'open', 'closed', '', 'menu-small-img9', '', '', '2018-05-05 06:36:30', '2018-05-05 06:36:30', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img9.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2018-05-05 06:36:30', '2018-05-05 06:36:30', '', 'menu-small-img10', '', 'inherit', 'open', 'closed', '', 'menu-small-img10', '', '', '2018-05-05 06:36:30', '2018-05-05 06:36:30', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img10.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2018-05-05 06:36:31', '2018-05-05 06:36:31', '', 'menu-small-img11', '', 'inherit', 'open', 'closed', '', 'menu-small-img11', '', '', '2018-05-05 06:36:31', '2018-05-05 06:36:31', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img11.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2018-05-05 06:36:31', '2018-05-05 06:36:31', '', 'menu-small-img12', '', 'inherit', 'open', 'closed', '', 'menu-small-img12', '', '', '2018-05-05 06:36:31', '2018-05-05 06:36:31', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img12.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2018-05-05 06:36:31', '2018-05-05 06:36:31', '', 'menu-small-img13', '', 'inherit', 'open', 'closed', '', 'menu-small-img13', '', '', '2018-05-05 06:36:31', '2018-05-05 06:36:31', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img13.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2018-05-05 06:36:32', '2018-05-05 06:36:32', '', 'menu-small-img14', '', 'inherit', 'open', 'closed', '', 'menu-small-img14', '', '', '2018-05-05 06:36:32', '2018-05-05 06:36:32', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img14.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2018-05-05 06:36:32', '2018-05-05 06:36:32', '', 'menu-small-img15', '', 'inherit', 'open', 'closed', '', 'menu-small-img15', '', '', '2018-05-05 06:36:32', '2018-05-05 06:36:32', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img15.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2018-05-05 06:36:32', '2018-05-05 06:36:32', '', 'menu-small-img16', '', 'inherit', 'open', 'closed', '', 'menu-small-img16', '', '', '2018-05-05 06:36:32', '2018-05-05 06:36:32', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img16.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2018-05-05 06:36:33', '2018-05-05 06:36:33', '', 'menu-small-img17', '', 'inherit', 'open', 'closed', '', 'menu-small-img17', '', '', '2018-05-05 06:36:33', '2018-05-05 06:36:33', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img17.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2018-05-05 06:36:33', '2018-05-05 06:36:33', '', 'menu-small-img18', '', 'inherit', 'open', 'closed', '', 'menu-small-img18', '', '', '2018-05-05 06:36:33', '2018-05-05 06:36:33', '', 0, 'http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/menu-small-img18.png', 0, 'attachment', 'image/png', 0),
(112, 1, '2018-05-05 06:39:56', '2018-05-05 06:39:56', '', 'Product Small Image', '', 'publish', 'closed', 'closed', '', 'acf_product-small-image', '', '', '2018-05-05 08:15:57', '2018-05-05 08:15:57', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=acf&#038;p=112', 0, 'acf', '', 0),
(113, 1, '2018-05-05 08:01:51', '2018-05-05 08:01:51', '<div class="menu_listing_details_con">\r\n<h2>BEEF</h2>\r\n<h3>ARRACHERA</h2>                       \r\n<p>SKIRT STEAK SECRET DRY RUB CHAR GRILLED</p>\r\n<h3>RIB EYE</h3>             \r\n<p>ADOBO MARINADE FLAT GRILLED</p>\r\n<h3>Dos xx barbacoa </h3>            \r\n<p>dos xx braised brisket</p> \r\n</div>', 'Beef', '', 'publish', 'closed', 'closed', '', 'tacos', '', '', '2018-05-07 10:52:09', '2018-05-07 10:52:09', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct1&#038;p=113', 0, 'menuproduct1', '', 0),
(114, 1, '2018-05-05 08:24:25', '2018-05-05 08:24:25', '<div class="menu_listing_details_con">\r\n<h2>SIDES</h2>\r\n<h3>Verde rice, Pinto Beans, Black Beans | $2.60</h3>\r\n<h3>Charro Borracho | $3.20</h3> \r\n<p>Pinto & black beans, chorizo, Bacon, Pacifico cerveza</p>\r\n<h3>del blanco queso verde | $4.50</h3>\r\n<h3>Guacamole | $4.50</h3>\r\n<h3>esquite | $3</h3>\r\n<p>whole corn grilled, mayo, chile powder </p>\r\n</div>', 'Sides', '', 'publish', 'closed', 'closed', '', 'tacos', '', '', '2018-05-07 11:01:39', '2018-05-07 11:01:39', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct3&#038;p=114', 0, 'menuproduct3', '', 0),
(115, 1, '2018-05-05 08:25:08', '2018-05-05 08:25:08', '<div class="menu_listing_details_con">\r\n<h2>BEVERAGES</h2>\r\n<h3>HORCHATA | $2</h3>\r\n<p>RICE WATER, VANILLA, CINNAMON 16 OZ</p>\r\n<h3>JAMAICA | $2</h3>           \r\n<p>HIBISCUS FLOWER ICED TEA 16 OZ<p>\r\n<h3>JARRITOS | $2</h2>\r\n<p>IMPORTED MEXICAN SODA</p>\r\n</div>', 'Beverages', '', 'publish', 'closed', 'closed', '', 'tacos', '', '', '2018-05-07 11:08:53', '2018-05-07 11:08:53', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct4&#038;p=115', 0, 'menuproduct4', '', 0),
(116, 1, '2018-05-05 08:53:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-05-05 08:53:33', '0000-00-00 00:00:00', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct&p=116', 0, 'menuproduct', '', 0),
(117, 1, '2018-05-05 08:59:18', '2018-05-05 08:59:18', '<div class="menu_listing_details_con">\r\n<h2>Fresh Hand made corn tortilla</h2>\r\n<h3>Street style  |  $3.50</h3>\r\n<p>cILANTRO,ONION</p>\r\n<h3>CLT  |  $3.75</h3>\r\n<p>CHEESE,ROMAINE LETTUCE,TOMATO</p>\r\n</div>', 'Quesadilla', '', 'publish', 'closed', 'closed', '', 'quesadilla', '', '', '2018-05-07 10:40:57', '2018-05-07 10:40:57', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct&#038;p=117', 0, 'menuproduct', '', 0),
(118, 1, '2018-05-05 09:00:25', '2018-05-05 09:00:25', '<div class="menu_listing_details_con">\r\n<h2>Fresh Hand made corn tortilla</h2>\r\n<h3>Street style  |  $3.50</h3>\r\n<p>CILANTRO,ONION</p>\r\n<h3>CLT  |  $3.75</h3>\r\n<p>CHEESE,ROMAINE LETTUCE,TOMATO</p>\r\n</div>', 'Tortas', '', 'publish', 'closed', 'closed', '', 'tortas', '', '', '2018-05-07 15:37:20', '2018-05-07 15:37:20', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct&#038;p=118', 0, 'menuproduct', '', 0),
(119, 1, '2018-05-05 09:06:49', '2018-05-05 09:06:49', '<div class="menu_listing_details_con">\r\n<h2>BEEF</h2>\r\n<h3>ARRACHERA</h2>                       \r\n<p>SKIRT STEAK SECRET DRY RUB CHAR GRILLED</p>\r\n<h3>RIB EYE</h3>             \r\n<p>ADOBO MARINADE FLAT GRILLED</p>\r\n<h3>Dos xx barbacoa </h3>            \r\n<p>dos xx braised brisket</p> \r\n</div>', 'Chicken', '', 'publish', 'closed', 'closed', '', 'chicken', '', '', '2018-05-07 10:51:17', '2018-05-07 10:51:17', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct1&#038;p=119', 0, 'menuproduct1', '', 0),
(120, 1, '2018-05-05 09:07:34', '2018-05-05 09:07:34', '<div class="menu_listing_details_con">\r\n<h2>BEEF</h2>\r\n<h3>ARRACHERA</h2>                       \r\n<p>SKIRT STEAK SECRET DRY RUB CHAR GRILLED</p>\r\n<h3>RIB EYE</h3>             \r\n<p>ADOBO MARINADE FLAT GRILLED</p>\r\n<h3>Dos xx barbacoa </h3>            \r\n<p>dos xx braised brisket</p> \r\n</div>', 'Vegetable', '', 'publish', 'closed', 'closed', '', 'vegetable', '', '', '2018-05-07 10:48:58', '2018-05-07 10:48:58', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct1&#038;p=120', 0, 'menuproduct1', '', 0),
(121, 1, '2018-05-05 09:08:08', '2018-05-05 09:08:08', '<div class="menu_listing_details_con">\r\n<h2>BEEF</h2>\r\n<h3>ARRACHERA</h2>                       \r\n<p>SKIRT STEAK SECRET DRY RUB CHAR GRILLED</p>\r\n<h3>RIB EYE</h3>             \r\n<p>ADOBO MARINADE FLAT GRILLED</p>\r\n<h3>Dos xx barbacoa </h3>            \r\n<p>dos xx braised brisket</p> \r\n</div>', 'SHRIMP', '', 'publish', 'closed', 'closed', '', 'shrimp', '', '', '2018-05-07 10:48:38', '2018-05-07 10:48:38', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct1&#038;p=121', 0, 'menuproduct1', '', 0),
(122, 1, '2018-05-05 09:26:05', '2018-05-05 09:26:05', '<div class="menu_listing_details_con">\n                                                            <h2>Fresh Hand made corn tortilla</h2>\n                                                            <h3>Street style  |  $3.50</h3>\n                                                            <p>cILANTRO,ONION</p>\n                                                            <h3>CLT  |  $3.75</h3>\n                                                            <p>CHEESE,ROMAINE LETTUCE,TOMATO</p>\n                                                        </div>\n\n<div class="menu_listing_details_con">BEEF\nARRACHERA </div>                              \n<h2>SKIRT STEAK SECRET DRY RUB CHAR GRILLED</h2>\n<h3>RIB EYE              \nADOBO MARINADE FLAT GRILLED\nDos xx barbacoa             \ndos xx braised brisket', 'Beef', '', 'inherit', 'closed', 'closed', '', '113-autosave-v1', '', '', '2018-05-05 09:26:05', '2018-05-05 09:26:05', '', 113, 'http://182.76.249.189/villetaqueria/113-autosave-v1/', 0, 'revision', '', 0),
(123, 1, '2018-05-05 09:09:32', '2018-05-05 09:09:32', '<div class="menu_listing_details_con">\r\n<h2>Fish</h2>\r\n<h3>ARRACHERA</h2>                       \r\n<p>SKIRT STEAK SECRET DRY RUB CHAR GRILLED</p>\r\n<h3>RIB EYE</h3>             \r\n<p>ADOBO MARINADE FLAT GRILLED</p>\r\n<h3>Dos xx barbacoa </h3>            \r\n<p>dos xx braised brisket</p> \r\n</div>\r\n\r\n', 'Fish', '', 'publish', 'closed', 'closed', '', 'fish', '', '', '2018-05-07 15:35:48', '2018-05-07 15:35:48', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct1&#038;p=123', 0, 'menuproduct1', '', 0),
(124, 1, '2018-05-05 09:16:20', '2018-05-05 09:16:20', '<div class="menu_listing_details_con">\r\n<h2>SIDES</h2>\r\n<h3>Verde rice, Pinto Beans, Black Beans | $2.60</h3>\r\n<h3>Charro Borracho | $3.20</h3> \r\n<p>Pinto & black beans, chorizo, Bacon, Pacifico cerveza</p>\r\n<h3>del blanco queso verde | $4.50</h3>\r\n<h3>Guacamole | $4.50</h3>\r\n<h3>esquite | $3</h3>\r\n<p>whole corn grilled, mayo, chile powder </p>\r\n</div>', 'Salsa’s', '', 'publish', 'closed', 'closed', '', 'salsas', '', '', '2018-05-07 11:00:21', '2018-05-07 11:00:21', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct3&#038;p=124', 0, 'menuproduct3', '', 0),
(125, 1, '2018-05-05 09:16:56', '2018-05-05 09:16:56', '<div class="menu_listing_details_con">\r\n<h2>SIDES</h2>\r\n<h3>Verde rice, Pinto Beans, Black Beans | $2.60</h3>\r\n<h3>Charro Borracho | $3.20</h3> \r\n<p>Pinto & black beans, chorizo, Bacon, Pacifico cerveza</p>\r\n<h3>del blanco queso verde | $4.50</h3>\r\n<h3>Guacamole | $4.50</h3>\r\n<h3>esquite | $3</h3>\r\n<p>whole corn grilled, mayo, chile powder </p>\r\n</div>', 'El trato', '', 'publish', 'closed', 'closed', '', 'el-trato', '', '', '2018-05-07 10:58:54', '2018-05-07 10:58:54', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct3&#038;p=125', 0, 'menuproduct3', '', 0),
(126, 1, '2018-05-05 09:17:32', '2018-05-05 09:17:32', '<div class="menu_listing_details_con">\r\n<h2>SIDES</h2>\r\n<h3>Verde rice, Pinto Beans, Black Beans | $2.60</h3>\r\n<h3>Charro Borracho | $3.20</h3> \r\n<p>Pinto & black beans, chorizo, Bacon, Pacifico cerveza</p>\r\n<h3>del blanco queso verde | $4.50</h3>\r\n<h3>Guacamole | $4.50</h3>\r\n<h3>esquite | $3</h3>\r\n<p>whole corn grilled, mayo, chile powder </p>\r\n</div>\r\n', 'Extra', '', 'publish', 'closed', 'closed', '', 'extra', '', '', '2018-05-07 10:58:05', '2018-05-07 10:58:05', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct3&#038;p=126', 0, 'menuproduct3', '', 0),
(127, 1, '2018-05-05 09:18:48', '2018-05-05 09:18:48', '<div class="menu_listing_details_con">\r\n<h2>BEVERAGES</h2>\r\n<h3>HORCHATA | $2</h3>\r\n<p>RICE WATER, VANILLA, CINNAMON 16 OZ</p>\r\n<h3>JAMAICA | $2</h3>           \r\n<p>HIBISCUS FLOWER ICED TEA 16 OZ<p>\r\n<h3>JARRITOS | $2</h2>\r\n<p>IMPORTED MEXICAN SODA</p>\r\n</div>', 'Soft drinks', '', 'publish', 'closed', 'closed', '', 'soft-drinks', '', '', '2018-05-07 11:08:38', '2018-05-07 11:08:38', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct4&#038;p=127', 0, 'menuproduct4', '', 0),
(128, 1, '2018-05-05 09:19:20', '2018-05-05 09:19:20', '<div class="menu_listing_details_con">\r\n<h2>BEVERAGES</h2>\r\n<h3>HORCHATA | $2</h3>\r\n<p>RICE WATER, VANILLA, CINNAMON 16 OZ</p>\r\n<h3>JAMAICA | $2</h3>           \r\n<p>HIBISCUS FLOWER ICED TEA 16 OZ<p>\r\n<h3>JARRITOS | $2</h2>\r\n<p>IMPORTED MEXICAN SODA</p>\r\n</div>', 'Cerveza', '', 'publish', 'closed', 'closed', '', 'cerveza', '', '', '2018-05-07 11:08:20', '2018-05-07 11:08:20', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct4&#038;p=128', 0, 'menuproduct4', '', 0),
(129, 1, '2018-05-05 09:19:58', '2018-05-05 09:19:58', '<div class="menu_listing_details_con">\r\n<h2>BEVERAGES</h2>\r\n<h3>HORCHATA | $2</h3>\r\n<p>RICE WATER, VANILLA, CINNAMON 16 OZ</p>\r\n<h3>JAMAICA | $2</h3>           \r\n<p>HIBISCUS FLOWER ICED TEA 16 OZ<p>\r\n<h3>JARRITOS | $2</h2>\r\n<p>IMPORTED MEXICAN SODA</p>\r\n</div>', 'Mi chela helda', '', 'publish', 'closed', 'closed', '', 'mi-chela-helda', '', '', '2018-05-07 11:08:05', '2018-05-07 11:08:05', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct4&#038;p=129', 0, 'menuproduct4', '', 0),
(130, 1, '2018-05-05 09:20:29', '2018-05-05 09:20:29', '<div class="menu_listing_details_con">\r\n<h2>BEVERAGES</h2>\r\n<h3>HORCHATA | $2</h3>\r\n<p>RICE WATER, VANILLA, CINNAMON 16 OZ</p>\r\n<h3>JAMAICA | $2</h3>           \r\n<p>HIBISCUS FLOWER ICED TEA 16 OZ<p>\r\n<h3>JARRITOS | $2</h2>\r\n<p>IMPORTED MEXICAN SODA</p>\r\n</div>\r\n', 'Margarita', '', 'publish', 'closed', 'closed', '', 'margarita', '', '', '2018-05-07 11:07:38', '2018-05-07 11:07:38', '', 0, 'http://182.76.249.189/villetaqueria/?post_type=menuproduct4&#038;p=130', 0, 'menuproduct4', '', 0),
(132, 1, '2018-05-07 10:57:29', '2018-05-07 10:57:29', '<div class="menu_listing_details_con">\n<h2>SIDES</h2>\n<h3>Verde rice, Pinto Beans, Black Beans | $2.60</h3>\n<h3>Charro Borracho | $3.20</h3> \n<p>Pinto & black beans, chorizo, Bacon, Pacifico cerveza</p>\n<h3>del blanco queso verde | $4.50</h3>\n<h3>Guacamole | $4.50</h3>\nesquite | $3</h3>\n<h2>whole corn grilled, mayo, chile powder </h2>\n\n</div>\n', 'Extra', '', 'inherit', 'closed', 'closed', '', '126-autosave-v1', '', '', '2018-05-07 10:57:29', '2018-05-07 10:57:29', '', 126, 'http://182.76.249.189/villetaqueria/126-autosave-v1/', 0, 'revision', '', 0),
(133, 1, '2018-05-07 11:04:43', '2018-05-07 11:04:43', '<div class="menu_listing_details_con">\n<h2>BEVERAGES</h2>\n<h3>HORCHATA | $2</h3>\n<p>RICE WATER, VANILLA, CINNAMON 16 OZ</p>\nJAMAICA | $2  </h3>           \n<h2>HIBISCUS FLOWER ICED TEA 16 OZ\nJARRITOS | $2</h2>\n<h3>IMPORTED MEXICAN SODA</h3>\n</div>\n', 'Margarita', '', 'inherit', 'closed', 'closed', '', '130-autosave-v1', '', '', '2018-05-07 11:04:43', '2018-05-07 11:04:43', '', 130, 'http://182.76.249.189/villetaqueria/130-autosave-v1/', 0, 'revision', '', 0),
(134, 1, '2018-05-07 09:01:34', '2018-05-07 09:01:34', '<div class="col-sm-12">\r\n<h2 class="homeTitle">Healthy, Mouth-watering, Delicious Fresh-Mex</h2>\r\n<p>The Ville is the new champion of Fresh-Mex in Louisville, Kentucky<br>\r\non a quest to show how fresh and exquisite Mexican Cuisine can be.<br>\r\nWe will transform your taste buds forever.</p>\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/about-img2.jpg" alt="" width="1030" height="300" class="alignnone size-full wp-image-72" />\r\n</div>\r\n\r\n<div class="row">\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-heart"></i></span>\r\n<h3>Easy Ordering</h3>\r\n<p>A simple ordering system helps diners pick and choose their favorite dishes quickly and easily.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-utensils"></i></span>\r\n<h3>Unique Flavors</h3>\r\n<p>The Ville Taqueria’s carnitas are unusually rich and full-bodied with the addition of bourbon.  We also infuse our dishes with rum, vodka, gin and tequila.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-glass-martini"></i></span>\r\n<h3>Signature Drinks</h3>\r\n<p>Our drinks using local liquors, such as Old Forester and other Brown-Forman products, including our famous Bourbon-Ritas.</p>\r\n</div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-05-07 09:01:34', '2018-05-07 09:01:34', '', 6, 'http://182.76.249.189/villetaqueria/6-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2018-05-07 09:05:50', '2018-05-07 09:05:50', '<div class="col-sm-12">\r\n<h2 class="homeTitle">Healthy, Mouth-watering, Delicious Fresh-Mex</h2>\r\n<p>The Ville is the new champion of Fresh-Mex in Louisville, Kentucky<br>\r\non a quest to show how fresh and exquisite Mexican Cuisine can be.<br>\r\nWe will transform your taste buds forever.</p>\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/about-img2.jpg" alt="" class="alignnone size-full wp-image-72" />\r\n</div>\r\n\r\n<div class="row">\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-heart"></i></span>\r\n<h3>Easy Ordering</h3>\r\n<p>A simple ordering system helps diners pick and choose their favorite dishes quickly and easily.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-utensils"></i></span>\r\n<h3>Unique Flavors</h3>\r\n<p>The Ville Taqueria’s carnitas are unusually rich and full-bodied with the addition of bourbon.  We also infuse our dishes with rum, vodka, gin and tequila.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-glass-martini"></i></span>\r\n<h3>Signature Drinks</h3>\r\n<p>Our drinks using local liquors, such as Old Forester and other Brown-Forman products, including our famous Bourbon-Ritas.</p>\r\n</div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-05-07 09:05:50', '2018-05-07 09:05:50', '', 6, 'http://182.76.249.189/villetaqueria/6-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2018-05-07 09:07:32', '2018-05-07 09:07:32', '<div class="col-sm-12">\r\n<h2 class="homeTitle">Healthy, Mouth-watering, Delicious Fresh-Mex</h2>\r\n<p>The Ville is the new champion of Fresh-Mex in Louisville, Kentucky<br>\r\non a quest to show how fresh and exquisite Mexican Cuisine can be.<br>\r\nWe will transform your taste buds forever.</p>\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/about-img2.jpg" alt="" class="alignnone size-full wp-image-72" />\r\n</div>\r\n\r\n<div class="">\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-heart"></i></span>\r\n<h3>Easy Ordering</h3>\r\n<p>A simple ordering system helps diners pick and choose their favorite dishes quickly and easily.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-utensils"></i></span>\r\n<h3>Unique Flavors</h3>\r\n<p>The Ville Taqueria’s carnitas are unusually rich and full-bodied with the addition of bourbon.  We also infuse our dishes with rum, vodka, gin and tequila.</p>\r\n</div>\r\n\r\n<div class="col-sm-4 about_middle_bottom_list">\r\n<span><i class="fas fa-glass-martini"></i></span>\r\n<h3>Signature Drinks</h3>\r\n<p>Our drinks using local liquors, such as Old Forester and other Brown-Forman products, including our famous Bourbon-Ritas.</p>\r\n</div>\r\n</div>', 'About Us', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-05-07 09:07:32', '2018-05-07 09:07:32', '', 6, 'http://182.76.249.189/villetaqueria/6-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2018-05-07 09:26:48', '2018-05-07 09:26:48', '<div class="col-sm-12 text-center">\r\n<h2 class="homeTitle">Have The Ville Taqueria Cater Your Event</h2>\r\n</div>\r\n<div class="catering_content">\r\n<div class="col-sm-7">\r\n<p>With our unique flavors,  incredible taste, and beautiful plating, The Ville Taqueria makes a great addition to your conference, festival, party, wedding reception, or corporate event. We can create a custom menu that will please everyone in your group or organization for a price within your budget.\r\n<br><br>\r\nThe Ville Taqueria provides many different options for your event, no mater how large or small. From corporate events to private parties we have packages to feed your needs. We provide a variety of services, including everyone’s favorite -- Taco Bars.  Packages start as low as $X.XX per head and can be built up to accommodate your event needs. If you are interested in our services please send us a message using the form below and we will get back to you as soon as possible.</p>\r\n</div>\r\n<div class="col-sm-5">\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/catering1.jpg" alt="" class="alignnone size-full wp-image-68">\r\n</div>\r\n</div>\r\n\r\n<div class="catering_content">\r\n<div class="col-sm-5">\r\n<img src="http://182.76.249.189/villetaqueria/wp-content/uploads/2018/05/catering2.jpg" alt="" class="alignnone size-full wp-image-68">\r\n</div>\r\n\r\n<div class="col-sm-7">\r\n<h3>Planning a wedding? Need help with your reception?</h3>\r\n\r\n<p>The Ville Taqueria is perfect for your wedding reception. We can provide sit down meals or light fare that guests can carry  with them as they chat with other party-goers. The great news is that everyone loves tacos, from young to old. The Ville Taqueria has the best tacos in Louisville,  so it is a perfect fit for your wedding reception, rehearsal dinner, or any other wedding-related food.\r\n\r\n<h3>Holding a Corporate Event?</h3>\r\n\r\n<p>The Ville Taqueria is the perfect match for your networking or big corporate meeting. We can provide handheld foods that are great for people on the go, who need to chat while eating. Tacos are also great for Business Lunch and Learns. We can do it all while your concentrate on your employees and clients.</p>\r\n</div>\r\n</div>', 'Catering', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-05-07 09:26:48', '2018-05-07 09:26:48', '', 10, 'http://182.76.249.189/villetaqueria/10-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2018-05-07 10:36:18', '2018-05-07 10:36:18', '<div class="menu_listing_details_con">\n<h2>Fresh Hand made corn tortilla</h2>\n<h3>Street style  |  $3.50</h3>\n<p>cILANTRO,ONION</p>\n<h3>CLT  |  $3.75</h3>\n<p>CHEESE,ROMAINE LETTUCE,TOMATO</p>\n</div>', 'Tacos', '', 'inherit', 'closed', 'closed', '', '88-autosave-v1', '', '', '2018-05-07 10:36:18', '2018-05-07 10:36:18', '', 88, 'http://182.76.249.189/villetaqueria/88-autosave-v1/', 0, 'revision', '', 0),
(139, 1, '2018-05-07 10:38:57', '2018-05-07 10:38:57', '<div class="menu_listing_details_con">\n<h2>Fresh Hand made corn tortilla</h2>\n<h3>Street style  |  $3.50</h3>\n<p>cILANTRO,ONION</p>\n<h3>CLT  |  $3.75</h3>\n<p>CHEESE,ROMAINE LETTUCE,TOMATO</p>\n</div>', 'TORTAS', '', 'inherit', 'closed', 'closed', '', '118-autosave-v1', '', '', '2018-05-07 10:38:57', '2018-05-07 10:38:57', '', 118, 'http://182.76.249.189/villetaqueria/118-autosave-v1/', 0, 'revision', '', 0),
(140, 1, '2018-05-07 10:40:57', '2018-05-07 10:40:57', '<div class="menu_listing_details_con">\n<h2>Fresh Hand made corn tortilla</h2>\n<h3>Street style  |  $3.50</h3>\n<p>cILANTRO,ONION</p>\n<h3>CLT  |  $3.75</h3>\n<p>CHEESE,ROMAINE LETTUCE,TOMATO</p>\n</div>', 'Quesadilla', '', 'inherit', 'closed', 'closed', '', '117-autosave-v1', '', '', '2018-05-07 10:40:57', '2018-05-07 10:40:57', '', 117, 'http://182.76.249.189/villetaqueria/117-autosave-v1/', 0, 'revision', '', 0),
(141, 1, '2018-05-07 10:46:43', '2018-05-07 10:46:43', '<div class="menu_listing_details_con">\n<h2>BEEF</h2>\n<h3>ARRACHERA</h2>                       \n<p>SKIRT STEAK SECRET DRY RUB CHAR GRILLED</p>\n<h3>RIB EYE</h3>             \n<h2>ADOBO MARINADE FLAT GRILLED</h2>\n<h3>Dos xx barbacoa </h3>            \n<h3>dos xx braised brisket</h3> \n</div>\n\n', 'Fish', '', 'inherit', 'closed', 'closed', '', '123-autosave-v1', '', '', '2018-05-07 10:46:43', '2018-05-07 10:46:43', '', 123, 'http://182.76.249.189/villetaqueria/123-autosave-v1/', 0, 'revision', '', 0),
(142, 1, '2018-05-07 10:59:14', '2018-05-07 10:59:14', '<div class="menu_listing_details_con"><h2>SIDES\nVerde rice, Pinto Beans, Black Beans | $2.60</h2>\n<h3>Charro Borracho | $3.20             \nPinto & black beans, chorizo, Bacon, \nPacifico cerveza</h3>\n<h2>del blanco queso verde | $4.50</h2>\n<h3>Guacamole | $4.50\nesquite | $3</h3>\n<h2>whole corn grilled, mayo, chile powder </h2>\n\n</div>', 'Salsa’s', '', 'inherit', 'closed', 'closed', '', '124-autosave-v1', '', '', '2018-05-07 10:59:14', '2018-05-07 10:59:14', '', 124, 'http://182.76.249.189/villetaqueria/124-autosave-v1/', 0, 'revision', '', 0),
(143, 1, '2018-05-07 11:07:43', '2018-05-07 11:07:43', '<div class="menu_listing_details_con"><h2>BEVERAGES\nHORCHATA | $2</h2>\n<h3>RICE WATER, VANILLA, CINNAMON 16 OZ\nJAMAICA | $2  </h3>           \n<h2>HIBISCUS FLOWER ICED TEA 16 OZ\nJARRITOS | $2</h2>\n<h3>IMPORTED MEXICAN SODA</h3>\n</div>', 'Mi chela helda', '', 'inherit', 'closed', 'closed', '', '129-autosave-v1', '', '', '2018-05-07 11:07:43', '2018-05-07 11:07:43', '', 129, 'http://182.76.249.189/villetaqueria/129-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

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
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Header Menu', 'header-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

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
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"ae8420a5c7bca5357a7d6f686d1d3c4d1cad5eb849e477a077bbd4d3156d3aee";a:4:{s:10:"expiration";i:1525945975;s:2:"ip";s:11:"192.168.0.1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0";s:5:"login";i:1524736375;}s:64:"9f306b777c2f462b44858645fe24c6141a039e727147abdeabd07d18543e1540";a:4:{s:10:"expiration";i:1525868998;s:2:"ip";s:12:"96.28.66.159";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0";s:5:"login";i:1525696198;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '84'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:10:"96.28.66.0";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:20:"add-post-type-slider";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&imgsize=full&hidetb=1'),
(22, 1, 'wp_user-settings-time', '1525513028'),
(23, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

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
(1, 'admin', '$P$BD18gzffDLhhxRlVhl8y9QwFCob4/L1', 'admin', 'sanjib.ghosh@sbr-technologies.com', '', '2018-04-26 09:39:19', '', 0, 'admin');

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
