-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 23. Nov 2016 um 10:51
-- Server Version: 5.5.44-0+deb8u1
-- PHP-Version: 5.6.20-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `sulmag`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `AreaPermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `AreaPermissionBlockTypeAccessList`
--

CREATE TABLE IF NOT EXISTS `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `AreaPermissionBlockTypeAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Areas`
--

CREATE TABLE IF NOT EXISTS `Areas` (
`arID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` int(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Areas`
--

INSERT INTO `Areas` (`arID`, `cID`, `arHandle`, `arOverrideCollectionPermissions`, `arInheritPermissionsFromAreaOnCID`, `arIsGlobal`) VALUES
(1, 106, 'Header', 0, 0, 0),
(2, 106, 'Column 1', 0, 0, 0),
(3, 106, 'Column 2', 0, 0, 0),
(4, 106, 'Column 3', 0, 0, 0),
(5, 106, 'Column 4', 0, 0, 0),
(6, 105, 'Primary', 0, 0, 0),
(7, 105, 'Secondary 1', 0, 0, 0),
(8, 105, 'Secondary 2', 0, 0, 0),
(9, 105, 'Secondary 3', 0, 0, 0),
(10, 105, 'Secondary 4', 0, 0, 0),
(11, 105, 'Secondary 5', 0, 0, 0),
(12, 1, 'Header Nav', 0, 0, 0),
(13, 1, 'Header', 0, 0, 0),
(14, 1, 'Sidebar', 0, 0, 0),
(15, 1, 'Main', 0, 0, 0),
(16, 1, 'Inhalt-Block', 0, 0, 0),
(17, 1, 'Fusszeile', 0, 0, 0),
(18, 123, 'Main', 0, 0, 0),
(19, 124, 'Inhalt-Block', 0, 0, 0),
(20, 124, 'Fusszeile', 0, 0, 0),
(21, 117, 'Main', 0, 0, 0),
(22, 125, 'Inhalt-Block', 0, 0, 0),
(23, 125, 'Fusszeile', 0, 0, 0),
(24, 126, 'Inhalt-Block', 0, 0, 0),
(25, 126, 'Fusszeile', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `atAddress`
--

CREATE TABLE IF NOT EXISTS `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `atAddressCustomCountries`
--

CREATE TABLE IF NOT EXISTS `atAddressCustomCountries` (
`atAddressCustomCountryID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `atAddressSettings`
--

CREATE TABLE IF NOT EXISTS `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `atBoolean`
--

CREATE TABLE IF NOT EXISTS `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `atBoolean`
--

INSERT INTO `atBoolean` (`avID`, `value`) VALUES
(20, 1),
(31, 1),
(34, 1),
(64, 1),
(65, 1),
(68, 1),
(69, 1),
(75, 1),
(108, 1),
(117, 1),
(118, 1),
(119, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `atBooleanSettings`
--

CREATE TABLE IF NOT EXISTS `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `atBooleanSettings`
--

INSERT INTO `atBooleanSettings` (`akID`, `akCheckedByDefault`) VALUES
(5, 0),
(6, 0),
(8, 0),
(9, 0),
(10, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `atDateTime`
--

CREATE TABLE IF NOT EXISTS `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `atDateTimeSettings`
--

CREATE TABLE IF NOT EXISTS `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `atDefault`
--

CREATE TABLE IF NOT EXISTS `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `atDefault`
--

INSERT INTO `atDefault` (`avID`, `value`) VALUES
(1, 'blog, blogging'),
(2, 'icon-book'),
(3, 'new blog, write blog, blogging'),
(4, 'icon-pencil'),
(5, 'blog drafts,composer'),
(6, 'icon-book'),
(7, 'pages, add page, delete page, copy, move, alias'),
(8, 'pages, add page, delete page, copy, move, alias'),
(9, 'icon-home'),
(10, 'pages, add page, delete page, copy, move, alias, bulk'),
(11, 'icon-road'),
(12, 'find page, search page, search, find, pages, sitemap'),
(13, 'icon-search'),
(14, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),
(15, 'icon-picture'),
(16, 'file, file attributes, title, attribute, description, rename'),
(17, 'icon-cog'),
(18, 'files, category, categories'),
(19, 'icon-list-alt'),
(21, 'new file set'),
(22, 'icon-plus-sign'),
(23, 'users, groups, people, find, delete user, remove user, change password, password'),
(24, 'find, search, people, delete user, remove user, change password, password'),
(25, 'icon-user'),
(26, 'user, group, people, permissions, access, expire'),
(27, 'icon-globe'),
(28, 'user attributes, user data, gather data, registration data'),
(29, 'icon-cog'),
(30, 'new user, create'),
(32, 'icon-plus-sign'),
(33, 'new user group, new group, group, create'),
(35, 'icon-plus'),
(36, 'group set'),
(37, 'icon-list'),
(38, 'forms, log, error, email, mysql, exception, survey'),
(39, 'hits, pageviews, visitors, activity'),
(40, 'icon-signal'),
(41, 'forms, questions, response, data'),
(42, 'icon-briefcase'),
(43, 'questions, quiz, response'),
(44, 'icon-tasks'),
(45, 'forms, log, error, email, mysql, exception, survey, history'),
(46, 'icon-time'),
(47, 'new theme, theme, active theme, change theme, template, css'),
(48, 'icon-font'),
(49, 'theme'),
(50, 'page types'),
(51, 'custom theme, change theme, custom css, css'),
(52, 'page type defaults, global block, global area, starter, template'),
(53, 'icon-file'),
(54, 'page attributes, custom'),
(55, 'icon-cog'),
(56, 'single, page, custom, application'),
(57, 'icon-wrench'),
(58, 'add workflow, remove workflow'),
(59, 'icon-list'),
(60, 'icon-user'),
(61, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),
(62, 'icon-th'),
(63, 'icon-lock'),
(66, 'block, refresh, custom'),
(67, 'icon-wrench'),
(70, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),
(71, 'update, upgrade'),
(72, 'concrete5.org, my account, marketplace'),
(73, 'buy theme, new theme, marketplace, template'),
(74, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),
(76, 'website name, title'),
(77, 'logo, favicon, iphone, icon, bookmark'),
(78, 'tinymce, content block, fonts, editor, tinymce, content, overlay'),
(79, 'translate, translation, internationalization, multilingual, translate'),
(80, 'timezone, profile, locale'),
(81, 'interface, quick nav, dashboard background, background image'),
(82, 'vanity, pretty url, seo, pageview, view'),
(83, 'bulk, seo, change keywords, engine, optimization, search'),
(84, 'traffic, statistics, google analytics, quant, pageviews, hits'),
(85, 'pretty, slug'),
(86, 'turn off statistics, tracking, statistics, pageviews, hits'),
(87, 'configure search, site search, search option'),
(88, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),
(89, 'cache option, turn off cache, no cache, page cache, caching'),
(90, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),
(91, 'editors, hide site, offline, private, public, access'),
(92, 'file options, file manager, upload, modify'),
(93, 'security, files, media, extension, manager, upload'),
(94, 'security, actions, administrator, admin, package, marketplace, search'),
(95, 'security, lock ip, lock out, block ip, address, restrict, access'),
(96, 'security, registration'),
(97, 'antispam, block spam, security'),
(98, 'lock site, under construction, hide, hidden'),
(99, 'profile, login, redirect, specific, dashboard, administrators'),
(100, 'member profile, member page,community, forums, social, avatar'),
(101, 'signup, new user, community'),
(102, 'smtp, mail settings'),
(103, 'email server, mail settings, mail configuration, external, internal'),
(104, 'email server, mail settings, mail configuration, private message, message system, import, email, message'),
(105, 'attribute configuration'),
(106, 'attributes, sets'),
(107, 'attributes, types'),
(109, 'overrides, system info, debug, support,help'),
(110, 'errors,exceptions, develop, support, help'),
(111, 'email, logging, logs, smtp, pop, errors, mysql, errors, log'),
(112, 'security, alternate storage, hide files'),
(113, 'network, proxy server'),
(114, 'export, backup, database, sql, mysql, encryption, restore'),
(115, 'upgrade, new version, update'),
(116, 'export, database, xml, starting, points, schema, refresh, custom, tables');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `atFile`
--

CREATE TABLE IF NOT EXISTS `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `atNumber`
--

CREATE TABLE IF NOT EXISTS `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `atNumber`
--

INSERT INTO `atNumber` (`avID`, `value`) VALUES
(120, 1600.0000),
(121, 510.0000),
(122, 1600.0000),
(123, 268.0000),
(124, 1600.0000),
(125, 268.0000),
(126, 2401.0000),
(127, 402.0000),
(128, 1600.0000),
(129, 268.0000),
(130, 3500.0000),
(131, 955.0000),
(132, 3500.0000),
(133, 955.0000),
(134, 3500.0000),
(135, 955.0000),
(136, 3500.0000),
(137, 955.0000),
(138, 3500.0000),
(139, 955.0000),
(140, 3500.0000),
(141, 955.0000);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `atSelectOptions`
--

CREATE TABLE IF NOT EXISTS `atSelectOptions` (
`ID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `atSelectOptionsSelected`
--

CREATE TABLE IF NOT EXISTS `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `atSelectSettings`
--

CREATE TABLE IF NOT EXISTS `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `atTextareaSettings`
--

CREATE TABLE IF NOT EXISTS `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `atTextareaSettings`
--

INSERT INTO `atTextareaSettings` (`akID`, `akTextareaDisplayMode`) VALUES
(2, ''),
(3, ''),
(4, ''),
(7, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `AttributeKeyCategories`
--

CREATE TABLE IF NOT EXISTS `AttributeKeyCategories` (
`akCategoryID` int(10) unsigned NOT NULL,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `AttributeKeyCategories`
--

INSERT INTO `AttributeKeyCategories` (`akCategoryID`, `akCategoryHandle`, `akCategoryAllowSets`, `pkgID`) VALUES
(1, 'collection', 1, NULL),
(2, 'user', 1, NULL),
(3, 'file', 1, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `AttributeKeys`
--

CREATE TABLE IF NOT EXISTS `AttributeKeys` (
`akID` int(10) unsigned NOT NULL,
  `akHandle` varchar(255) NOT NULL,
  `akName` varchar(255) NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `AttributeKeys`
--

INSERT INTO `AttributeKeys` (`akID`, `akHandle`, `akName`, `akIsSearchable`, `akIsSearchableIndexed`, `akIsAutoCreated`, `akIsInternal`, `akIsColumnHeader`, `akIsEditable`, `atID`, `akCategoryID`, `pkgID`) VALUES
(1, 'meta_title', 'Meta Title', 1, 1, 0, 0, 0, 1, 1, 1, 0),
(2, 'meta_description', 'Meta Description', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(3, 'meta_keywords', 'Meta Keywords', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(4, 'icon_dashboard', 'Dashboard Icon', 1, 1, 0, 1, 0, 1, 2, 1, 0),
(5, 'exclude_nav', 'Exclude From Nav', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(6, 'exclude_page_list', 'Exclude From Page List', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(7, 'header_extra_content', 'Header Extra Content', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(8, 'exclude_search_index', 'Exclude From Search Index', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(9, 'exclude_sitemapxml', 'Exclude From sitemap.xml', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(10, 'profile_private_messages_enabled', 'I would like to receive private messages.', 1, 1, 0, 0, 0, 1, 3, 2, 0),
(11, 'profile_private_messages_notification_enabled', 'Send me email notifications when I receive a private message.', 1, 1, 0, 0, 0, 1, 3, 2, 0),
(12, 'width', 'Width', 1, 1, 0, 0, 0, 1, 6, 3, 0),
(13, 'height', 'Height', 1, 1, 0, 0, 0, 1, 6, 3, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `AttributeSetKeys`
--

CREATE TABLE IF NOT EXISTS `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `AttributeSetKeys`
--

INSERT INTO `AttributeSetKeys` (`akID`, `asID`, `displayOrder`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(5, 2, 1),
(6, 2, 2),
(7, 1, 4),
(8, 2, 3),
(9, 2, 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `AttributeSets`
--

CREATE TABLE IF NOT EXISTS `AttributeSets` (
`asID` int(10) unsigned NOT NULL,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `AttributeSets`
--

INSERT INTO `AttributeSets` (`asID`, `asName`, `asHandle`, `akCategoryID`, `pkgID`, `asIsLocked`, `asDisplayOrder`) VALUES
(1, 'Page Header', 'page_header', 1, 0, 0, 0),
(2, 'Navigation and Indexing', 'navigation', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `AttributeTypeCategories`
--

CREATE TABLE IF NOT EXISTS `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `AttributeTypeCategories`
--

INSERT INTO `AttributeTypeCategories` (`atID`, `akCategoryID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `AttributeTypes`
--

CREATE TABLE IF NOT EXISTS `AttributeTypes` (
`atID` int(10) unsigned NOT NULL,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `AttributeTypes`
--

INSERT INTO `AttributeTypes` (`atID`, `atHandle`, `atName`, `pkgID`) VALUES
(1, 'text', 'Text', 0),
(2, 'textarea', 'Text Area', 0),
(3, 'boolean', 'Checkbox', 0),
(4, 'date_time', 'Date/Time', 0),
(5, 'image_file', 'Image/File', 0),
(6, 'number', 'Number', 0),
(7, 'rating', 'Rating', 0),
(8, 'select', 'Select', 0),
(9, 'address', 'Address', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `AttributeValues`
--

CREATE TABLE IF NOT EXISTS `AttributeValues` (
`avID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `AttributeValues`
--

INSERT INTO `AttributeValues` (`avID`, `akID`, `avDateAdded`, `uID`, `atID`) VALUES
(1, 3, '2013-11-19 07:07:58', 1, 2),
(2, 4, '2013-11-19 07:07:58', 1, 2),
(3, 3, '2013-11-19 07:07:59', 1, 2),
(4, 4, '2013-11-19 07:07:59', 1, 2),
(5, 3, '2013-11-19 07:07:59', 1, 2),
(6, 4, '2013-11-19 07:08:00', 1, 2),
(7, 3, '2013-11-19 07:08:00', 1, 2),
(8, 3, '2013-11-19 07:08:00', 1, 2),
(9, 4, '2013-11-19 07:08:01', 1, 2),
(10, 3, '2013-11-19 07:08:01', 1, 2),
(11, 4, '2013-11-19 07:08:01', 1, 2),
(12, 3, '2013-11-19 07:08:02', 1, 2),
(13, 4, '2013-11-19 07:08:02', 1, 2),
(14, 3, '2013-11-19 07:08:03', 1, 2),
(15, 4, '2013-11-19 07:08:03', 1, 2),
(16, 3, '2013-11-19 07:08:04', 1, 2),
(17, 4, '2013-11-19 07:08:05', 1, 2),
(18, 3, '2013-11-19 07:08:06', 1, 2),
(19, 4, '2013-11-19 07:08:07', 1, 2),
(20, 5, '2013-11-19 07:08:08', 1, 3),
(21, 3, '2013-11-19 07:08:09', 1, 2),
(22, 4, '2013-11-19 07:08:10', 1, 2),
(23, 3, '2013-11-19 07:08:10', 1, 2),
(24, 3, '2013-11-19 07:08:11', 1, 2),
(25, 4, '2013-11-19 07:08:12', 1, 2),
(26, 3, '2013-11-19 07:08:12', 1, 2),
(27, 4, '2013-11-19 07:08:13', 1, 2),
(28, 3, '2013-11-19 07:08:13', 1, 2),
(29, 4, '2013-11-19 07:08:13', 1, 2),
(30, 3, '2013-11-19 07:08:14', 1, 2),
(31, 5, '2013-11-19 07:08:14', 1, 3),
(32, 4, '2013-11-19 07:08:14', 1, 2),
(33, 3, '2013-11-19 07:08:14', 1, 2),
(34, 5, '2013-11-19 07:08:15', 1, 3),
(35, 4, '2013-11-19 07:08:15', 1, 2),
(36, 3, '2013-11-19 07:08:15', 1, 2),
(37, 4, '2013-11-19 07:08:15', 1, 2),
(38, 3, '2013-11-19 07:08:16', 1, 2),
(39, 3, '2013-11-19 07:08:16', 1, 2),
(40, 4, '2013-11-19 07:08:17', 1, 2),
(41, 3, '2013-11-19 07:08:17', 1, 2),
(42, 4, '2013-11-19 07:08:17', 1, 2),
(43, 3, '2013-11-19 07:08:18', 1, 2),
(44, 4, '2013-11-19 07:08:18', 1, 2),
(45, 3, '2013-11-19 07:08:18', 1, 2),
(46, 4, '2013-11-19 07:08:18', 1, 2),
(47, 3, '2013-11-19 07:08:19', 1, 2),
(48, 4, '2013-11-19 07:08:19', 1, 2),
(49, 3, '2013-11-19 07:08:19', 1, 2),
(50, 3, '2013-11-19 07:08:19', 1, 2),
(51, 3, '2013-11-19 07:08:20', 1, 2),
(52, 3, '2013-11-19 07:08:20', 1, 2),
(53, 4, '2013-11-19 07:08:20', 1, 2),
(54, 3, '2013-11-19 07:08:20', 1, 2),
(55, 4, '2013-11-19 07:08:21', 1, 2),
(56, 3, '2013-11-19 07:08:21', 1, 2),
(57, 4, '2013-11-19 07:08:21', 1, 2),
(58, 3, '2013-11-19 07:08:22', 1, 2),
(59, 4, '2013-11-19 07:08:22', 1, 2),
(60, 4, '2013-11-19 07:08:23', 1, 2),
(61, 3, '2013-11-19 07:08:23', 1, 2),
(62, 4, '2013-11-19 07:08:24', 1, 2),
(63, 4, '2013-11-19 07:08:24', 1, 2),
(64, 5, '2013-11-19 07:08:24', 1, 3),
(65, 8, '2013-11-19 07:08:25', 1, 3),
(66, 3, '2013-11-19 07:08:25', 1, 2),
(67, 4, '2013-11-19 07:08:26', 1, 2),
(68, 5, '2013-11-19 07:08:26', 1, 3),
(69, 5, '2013-11-19 07:08:28', 1, 3),
(70, 3, '2013-11-19 07:08:29', 1, 2),
(71, 3, '2013-11-19 07:08:29', 1, 2),
(72, 3, '2013-11-19 07:08:30', 1, 2),
(73, 3, '2013-11-19 07:08:30', 1, 2),
(74, 3, '2013-11-19 07:08:30', 1, 2),
(75, 5, '2013-11-19 07:08:30', 1, 3),
(76, 3, '2013-11-19 07:08:31', 1, 2),
(77, 3, '2013-11-19 07:08:31', 1, 2),
(78, 3, '2013-11-19 07:08:31', 1, 2),
(79, 3, '2013-11-19 07:08:31', 1, 2),
(80, 3, '2013-11-19 07:08:31', 1, 2),
(81, 3, '2013-11-19 07:08:32', 1, 2),
(82, 3, '2013-11-19 07:08:32', 1, 2),
(83, 3, '2013-11-19 07:08:32', 1, 2),
(84, 3, '2013-11-19 07:08:32', 1, 2),
(85, 3, '2013-11-19 07:08:32', 1, 2),
(86, 3, '2013-11-19 07:08:32', 1, 2),
(87, 3, '2013-11-19 07:08:33', 1, 2),
(88, 3, '2013-11-19 07:08:33', 1, 2),
(89, 3, '2013-11-19 07:08:33', 1, 2),
(90, 3, '2013-11-19 07:08:33', 1, 2),
(91, 3, '2013-11-19 07:08:33', 1, 2),
(92, 3, '2013-11-19 07:08:33', 1, 2),
(93, 3, '2013-11-19 07:08:34', 1, 2),
(94, 3, '2013-11-19 07:08:34', 1, 2),
(95, 3, '2013-11-19 07:08:34', 1, 2),
(96, 3, '2013-11-19 07:08:34', 1, 2),
(97, 3, '2013-11-19 07:08:34', 1, 2),
(98, 3, '2013-11-19 07:08:35', 1, 2),
(99, 3, '2013-11-19 07:08:35', 1, 2),
(100, 3, '2013-11-19 07:08:35', 1, 2),
(101, 3, '2013-11-19 07:08:36', 1, 2),
(102, 3, '2013-11-19 07:08:36', 1, 2),
(103, 3, '2013-11-19 07:08:36', 1, 2),
(104, 3, '2013-11-19 07:08:37', 1, 2),
(105, 3, '2013-11-19 07:08:37', 1, 2),
(106, 3, '2013-11-19 07:08:37', 1, 2),
(107, 3, '2013-11-19 07:08:38', 1, 2),
(108, 8, '2013-11-19 07:08:38', 1, 3),
(109, 3, '2013-11-19 07:08:38', 1, 2),
(110, 3, '2013-11-19 07:08:39', 1, 2),
(111, 3, '2013-11-19 07:08:41', 1, 2),
(112, 3, '2013-11-19 07:08:41', 1, 2),
(113, 3, '2013-11-19 07:08:42', 1, 2),
(114, 3, '2013-11-19 07:08:42', 1, 2),
(115, 3, '2013-11-19 07:08:43', 1, 2),
(116, 3, '2013-11-19 07:08:43', 1, 2),
(117, 5, '2013-11-19 07:08:49', 1, 3),
(118, 5, '2013-11-19 07:08:57', 1, 3),
(119, 8, '2013-11-19 07:08:57', 1, 3),
(120, 12, '2013-11-27 10:06:37', 1, 6),
(121, 13, '2013-11-27 10:06:37', 1, 6),
(122, 12, '2013-11-27 10:08:57', 1, 6),
(123, 13, '2013-11-27 10:08:58', 1, 6),
(124, 12, '2013-11-27 10:09:34', 1, 6),
(125, 13, '2013-11-27 10:09:35', 1, 6),
(126, 12, '2013-11-27 10:15:13', 1, 6),
(127, 13, '2013-11-27 10:15:15', 1, 6),
(128, 12, '2013-11-27 10:17:19', 1, 6),
(129, 13, '2013-11-27 10:17:20', 1, 6),
(130, 12, '2013-12-11 09:38:24', 1, 6),
(131, 13, '2013-12-11 09:38:25', 1, 6),
(132, 12, '2013-12-11 09:38:27', 1, 6),
(133, 13, '2013-12-11 09:38:28', 1, 6),
(134, 12, '2013-12-11 09:38:29', 1, 6),
(135, 13, '2013-12-11 09:38:30', 1, 6),
(136, 12, '2013-12-11 09:38:32', 1, 6),
(137, 13, '2013-12-11 09:38:33', 1, 6),
(138, 12, '2013-12-11 09:38:38', 1, 6),
(139, 13, '2013-12-11 09:38:39', 1, 6),
(140, 12, '2013-12-11 09:38:41', 1, 6),
(141, 13, '2013-12-11 09:38:42', 1, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `BasicWorkflowPermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `BasicWorkflowProgressData`
--

CREATE TABLE IF NOT EXISTS `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `BlockPermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `BlockRelations`
--

CREATE TABLE IF NOT EXISTS `BlockRelations` (
`brID` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `BlockRelations`
--

INSERT INTO `BlockRelations` (`brID`, `bID`, `originalBID`, `relationType`) VALUES
(1, 16, 14, 'DUPLICATE'),
(2, 24, 23, 'DUPLICATE'),
(3, 25, 24, 'DUPLICATE'),
(4, 26, 25, 'DUPLICATE'),
(5, 27, 26, 'DUPLICATE'),
(6, 28, 27, 'DUPLICATE'),
(7, 29, 28, 'DUPLICATE'),
(8, 31, 16, 'DUPLICATE'),
(9, 32, 31, 'DUPLICATE'),
(10, 33, 32, 'DUPLICATE'),
(11, 36, 35, 'DUPLICATE'),
(12, 39, 38, 'DUPLICATE'),
(13, 43, 42, 'DUPLICATE'),
(14, 46, 45, 'DUPLICATE'),
(15, 47, 46, 'DUPLICATE'),
(16, 48, 47, 'DUPLICATE'),
(17, 49, 48, 'DUPLICATE'),
(18, 50, 49, 'DUPLICATE'),
(19, 51, 50, 'DUPLICATE'),
(20, 52, 51, 'DUPLICATE'),
(21, 53, 52, 'DUPLICATE'),
(22, 54, 53, 'DUPLICATE'),
(23, 55, 54, 'DUPLICATE'),
(24, 56, 55, 'DUPLICATE'),
(25, 57, 56, 'DUPLICATE'),
(26, 58, 57, 'DUPLICATE'),
(27, 59, 58, 'DUPLICATE'),
(28, 60, 59, 'DUPLICATE'),
(29, 61, 60, 'DUPLICATE'),
(30, 62, 36, 'DUPLICATE'),
(31, 63, 61, 'DUPLICATE'),
(32, 66, 65, 'DUPLICATE'),
(33, 67, 66, 'DUPLICATE'),
(34, 68, 67, 'DUPLICATE'),
(35, 69, 68, 'DUPLICATE'),
(36, 70, 69, 'DUPLICATE'),
(37, 71, 70, 'DUPLICATE'),
(38, 72, 71, 'DUPLICATE'),
(39, 73, 72, 'DUPLICATE'),
(40, 74, 73, 'DUPLICATE'),
(41, 76, 74, 'DUPLICATE');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Blocks`
--

CREATE TABLE IF NOT EXISTS `Blocks` (
`bID` int(10) unsigned NOT NULL,
  `bName` varchar(60) DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(32) DEFAULT NULL,
  `bIsActive` varchar(1) NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Blocks`
--

INSERT INTO `Blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(1, '', '2013-11-19 07:08:44', '2013-11-19 07:08:45', NULL, '1', 9, 1, NULL),
(2, '', '2013-11-19 07:08:45', '2013-11-19 07:08:46', NULL, '1', 9, 1, NULL),
(3, '', '2013-11-19 07:08:46', '2013-11-19 07:08:47', NULL, '1', 9, 1, NULL),
(4, '', '2013-11-19 07:08:47', '2013-11-19 07:08:48', NULL, '1', 9, 1, NULL),
(5, '', '2013-11-19 07:08:48', '2013-11-19 07:08:49', NULL, '1', 9, 1, NULL),
(6, '', '2013-11-19 07:08:50', '2013-11-19 07:08:51', NULL, '1', 6, 1, NULL),
(7, '', '2013-11-19 07:08:51', '2013-11-19 07:08:51', NULL, '1', 7, 1, NULL),
(8, '', '2013-11-19 07:08:51', '2013-11-19 07:08:53', NULL, '1', 5, 1, NULL),
(9, '', '2013-11-19 07:08:53', '2013-11-19 07:08:54', NULL, '1', 5, 1, NULL),
(10, '', '2013-11-19 07:08:54', '2013-11-19 07:08:55', NULL, '1', 4, 1, NULL),
(11, '', '2013-11-19 07:08:55', '2013-11-19 07:08:55', NULL, '1', 3, 1, NULL),
(12, '', '2013-11-19 07:08:56', '2013-11-19 07:08:56', NULL, '1', 5, 1, NULL),
(14, NULL, '2013-11-19 10:28:45', '2013-11-19 10:28:45', NULL, '1', 9, 1, NULL),
(15, NULL, '2013-11-19 10:29:48', '2013-11-19 10:29:48', NULL, '1', 1, 1, NULL),
(16, NULL, '2013-11-19 10:39:44', '2013-11-19 10:39:45', NULL, '1', 9, 1, NULL),
(17, NULL, '2013-11-19 10:39:54', '2013-11-19 10:39:54', NULL, '1', 9, 1, NULL),
(18, NULL, '2013-11-19 11:11:48', '2013-11-19 11:11:48', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=18";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"18";i:1;s:189:"<p>SULMAG Maschinenbau AG • Bahnhofstrasse 4 • 9536 Schwerzenbach • Tel. +41 (0)71 923 21 23 • <a title="E-Mail" href="mailto:info@sulmag.ch" target="_blank">info@sulmag.ch</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"18";s:7:"content";s:189:"<p>SULMAG Maschinenbau AG • Bahnhofstrasse 4 • 9536 Schwerzenbach • Tel. +41 (0)71 923 21 23 • <a title="E-Mail" href="mailto:info@sulmag.ch" target="_blank">info@sulmag.ch</a></p>";}'),
(19, NULL, '2013-11-19 11:12:05', '2013-11-19 11:12:05', NULL, '1', 2, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btCoreStackDisplay";s:8:"_tableat";s:18:"btCoreStackDisplay";s:6:"_where";s:6:"bID=19";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"19";i:1;s:3:"123";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"19";s:4:"stID";s:3:"123";}'),
(20, NULL, '2013-11-19 11:40:10', '2013-11-19 11:40:10', NULL, '1', 2, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btCoreStackDisplay";s:8:"_tableat";s:18:"btCoreStackDisplay";s:6:"_where";s:6:"bID=20";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"20";i:1;s:3:"123";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"20";s:4:"stID";s:3:"123";}'),
(21, NULL, '2013-11-19 11:40:26', '2013-11-19 11:40:26', NULL, '1', 2, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btCoreStackDisplay";s:8:"_tableat";s:18:"btCoreStackDisplay";s:6:"_where";s:6:"bID=21";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"21";i:1;s:3:"123";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"21";s:4:"stID";s:3:"123";}'),
(22, NULL, '2013-11-19 11:40:40', '2013-11-19 11:40:40', NULL, '1', 2, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btCoreStackDisplay";s:8:"_tableat";s:18:"btCoreStackDisplay";s:6:"_where";s:6:"bID=22";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"22";i:1;s:3:"123";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"22";s:4:"stID";s:3:"123";}'),
(23, NULL, '2013-11-27 10:07:18', '2013-11-27 10:07:18', NULL, '1', 23, 1, NULL),
(24, 'slideshow', '2013-11-29 07:33:25', '2013-11-29 07:33:27', NULL, '1', 23, 1, NULL),
(25, 'slideshow', '2013-11-29 07:34:34', '2013-11-29 07:34:35', NULL, '1', 23, 1, NULL),
(26, 'slideshow', '2013-11-29 07:35:47', '2013-11-29 07:35:49', NULL, '1', 23, 1, NULL),
(27, 'slideshow', '2013-11-29 07:36:31', '2013-11-29 07:36:33', NULL, '1', 23, 1, NULL),
(28, 'slideshow', '2013-11-29 07:37:53', '2013-11-29 07:37:54', NULL, '1', 23, 1, NULL),
(29, '', '2013-11-29 07:38:28', '2013-11-29 07:38:29', NULL, '1', 23, 1, NULL),
(30, NULL, '2013-11-29 07:39:14', '2013-11-29 07:39:14', NULL, '1', 23, 1, NULL),
(31, NULL, '2013-12-11 08:20:18', '2013-12-11 08:20:58', NULL, '1', 9, 1, NULL),
(32, NULL, '2013-12-11 08:22:06', '2013-12-11 08:22:26', NULL, '1', 9, 1, NULL),
(33, NULL, '2013-12-11 08:23:32', '2013-12-11 08:23:33', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=33";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"33";i:1;s:504:"<h1>Willkommen bei der SULMAG Maschinenbau AG</h1>\r\n<p>Dienstleistungen rund um die Metallbearbeitung. Wir produzieren Maschinenbauteile ganz nach Ihren Wünschen. Wir bearbeiten alle Materialien in "fast" allen Grössen. Drehen, fräsen, hobeln, bohren, schweissen, etc. und dies alles aus einer Hand.</p>\r\n<p>Unsere Spezialitäten:</p>\r\n<ul>\r\n<li>Kleinserien</li>\r\n<li>Einzelteile</li>\r\n<li>Prototypen</li>\r\n</ul>\r\n<p>Finden Sie mehr heraus über uns und unsere Produktion auf den nächsten Seiten.</p>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"33";s:7:"content";s:504:"<h1>Willkommen bei der SULMAG Maschinenbau AG</h1>\r\n<p>Dienstleistungen rund um die Metallbearbeitung. Wir produzieren Maschinenbauteile ganz nach Ihren Wünschen. Wir bearbeiten alle Materialien in "fast" allen Grössen. Drehen, fräsen, hobeln, bohren, schweissen, etc. und dies alles aus einer Hand.</p>\r\n<p>Unsere Spezialitäten:</p>\r\n<ul>\r\n<li>Kleinserien</li>\r\n<li>Einzelteile</li>\r\n<li>Prototypen</li>\r\n</ul>\r\n<p>Finden Sie mehr heraus über uns und unsere Produktion auf den nächsten Seiten.</p>";}'),
(34, NULL, '2013-12-11 08:27:14', '2013-12-11 08:29:07', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=34";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"34";i:1;s:1052:"<h1>Über Uns</h1>\r\n<p>Die Sulmag Maschinenbau AG in Schwarzenbach versteht sich als Zulieferfirma der Energie-, Maschinenbau-, Lebensmittel-, Verpackungs-, Fahrzeug-, Entsorgungs-, sowie der Bauindustrie. Die Kernkompetenzen liegen in der spanabhebenden Bearbeitung von grossvolumigen Werkstücken. Mit einem flexiblem und motivierten Team von Fachleuten sind wir in der Lage, auch kurzfristig Ihre Wünsche zu erfüllen.</p>\r\n<p>1968    Gründungsjahr als Maschinenbau Sulgen AG in Sulgen.<br />1972    Umzug der Firma nach Schwarzenbach und Namensänderung in Sulmag Maschinenbau AG.</p>\r\n<p>Geschäftsführer:              Hr. A. Shala<br />Stv. Geschäftsführer:       Hr. W. Brändle</p>\r\n<p>Öffnungszeiten:<br />Bürozeiten, Mo. bis Do.:  07:30 bis 11:30; 13:30 bis 17:00<br />Bürozeiten, Fr.:                07:30 bis 11:30; 13:30 bis 16:30<br />Spedition, Mo. bis Do.:    07:00 bis 12:00; 13:00 bis 17:00<br />Spedition, Fr.:                  07:00 bis 12:00; 13:00 bis 16:30</p>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"34";s:7:"content";s:1052:"<h1>Über Uns</h1>\r\n<p>Die Sulmag Maschinenbau AG in Schwarzenbach versteht sich als Zulieferfirma der Energie-, Maschinenbau-, Lebensmittel-, Verpackungs-, Fahrzeug-, Entsorgungs-, sowie der Bauindustrie. Die Kernkompetenzen liegen in der spanabhebenden Bearbeitung von grossvolumigen Werkstücken. Mit einem flexiblem und motivierten Team von Fachleuten sind wir in der Lage, auch kurzfristig Ihre Wünsche zu erfüllen.</p>\r\n<p>1968    Gründungsjahr als Maschinenbau Sulgen AG in Sulgen.<br />1972    Umzug der Firma nach Schwarzenbach und Namensänderung in Sulmag Maschinenbau AG.</p>\r\n<p>Geschäftsführer:              Hr. A. Shala<br />Stv. Geschäftsführer:       Hr. W. Brändle</p>\r\n<p>Öffnungszeiten:<br />Bürozeiten, Mo. bis Do.:  07:30 bis 11:30; 13:30 bis 17:00<br />Bürozeiten, Fr.:                07:30 bis 11:30; 13:30 bis 16:30<br />Spedition, Mo. bis Do.:    07:00 bis 12:00; 13:00 bis 17:00<br />Spedition, Fr.:                  07:00 bis 12:00; 13:00 bis 16:30</p>";}'),
(35, NULL, '2013-12-11 08:42:21', '2013-12-11 08:44:37', NULL, '1', 9, 1, NULL),
(36, NULL, '2013-12-11 08:48:13', '2013-12-11 08:48:14', NULL, '1', 9, 1, NULL),
(37, NULL, '2013-12-11 08:54:25', '2013-12-11 08:54:25', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=37";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"37";i:1;s:239:"<h1>Kontakt</h1>\r\n<p>SULMAG AG Maschinenbau<br /> Bahnhofstrasse 4<br /> 9536 Schwarzenbach</p>\r\n<p>Telefon: +41 71 923 21 23<br /> Fax: +41 71 923 21 94</p>\r\n<p>Email: <a href="mailto:info@sulmag.ch" target="_blank">info@sulmag.ch</a></p>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"37";s:7:"content";s:239:"<h1>Kontakt</h1>\r\n<p>SULMAG AG Maschinenbau<br /> Bahnhofstrasse 4<br /> 9536 Schwarzenbach</p>\r\n<p>Telefon: +41 71 923 21 23<br /> Fax: +41 71 923 21 94</p>\r\n<p>Email: <a href="mailto:info@sulmag.ch" target="_blank">info@sulmag.ch</a></p>";}'),
(38, NULL, '2013-12-11 08:55:14', '2013-12-11 08:55:14', NULL, '1', 15, 1, NULL),
(39, NULL, '2013-12-11 08:56:30', '2013-12-11 08:56:30', NULL, '1', 15, 1, 'O:11:"BlockRecord":14:{s:5:"_dbat";i:1;s:6:"_table";s:11:"btGoogleMap";s:8:"_tableat";s:11:"btGoogleMap";s:6:"_where";s:6:"bID=39";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:6:{i:0;s:2:"39";i:1;s:0:"";i:2;s:45:"Bahnhofstrasse 4, 9536 Schwarzenbach, Schweiz";i:3;s:10:"47.4447661";i:4;s:9:"9.0675699";i:5;s:2:"14";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"39";s:5:"title";s:0:"";s:8:"location";s:45:"Bahnhofstrasse 4, 9536 Schwarzenbach, Schweiz";s:8:"latitude";s:10:"47.4447661";s:9:"longitude";s:9:"9.0675699";s:4:"zoom";s:2:"14";}'),
(40, NULL, '2013-12-11 08:56:47', '2013-12-11 08:57:04', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=40";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"40";i:1;s:14:"<h2>Karte</h2>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"40";s:7:"content";s:14:"<h2>Karte</h2>";}'),
(41, NULL, '2013-12-11 09:39:03', '2013-12-11 09:39:37', NULL, '1', 18, 1, NULL),
(42, NULL, '2013-12-11 09:41:10', '2013-12-11 09:41:10', NULL, '1', 23, 1, NULL),
(43, 'slideshow', '2013-12-11 09:47:17', '2013-12-11 09:47:18', NULL, '1', 23, 1, NULL),
(44, NULL, '2013-12-11 09:48:51', '2013-12-11 09:48:51', NULL, '1', 18, 1, 'O:11:"BlockRecord":17:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";s:6:"bID=44";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"44";i:1;s:1:"9";i:2;s:1:"0";i:3;s:1:"0";i:4;s:1:"0";i:5;s:0:"";i:6;s:1:"0";i:7;s:1:"0";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"44";s:3:"fID";s:1:"9";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";s:1:"0";s:9:"maxHeight";s:1:"0";s:12:"externalLink";s:0:"";s:15:"internalLinkCID";s:1:"0";s:27:"forceImageToMatchDimensions";s:1:"0";s:7:"altText";s:0:"";}'),
(45, NULL, '2013-12-11 09:50:29', '2013-12-11 09:50:29', NULL, '1', 23, 1, NULL),
(46, 'slideshow', '2013-12-11 09:52:04', '2013-12-11 09:52:06', NULL, '1', 23, 1, NULL),
(47, '', '2013-12-11 09:56:34', '2013-12-11 09:56:34', NULL, '1', 23, 1, NULL),
(48, 'slideshow', '2013-12-11 09:58:10', '2013-12-11 09:58:12', NULL, '1', 23, 1, NULL),
(49, 'slideshow', '2013-12-11 10:01:00', '2013-12-11 10:01:02', NULL, '1', 23, 1, NULL),
(50, 'slideshow', '2013-12-11 10:02:28', '2013-12-11 10:02:29', NULL, '1', 23, 1, NULL),
(51, 'slideshow', '2013-12-11 10:03:09', '2013-12-11 10:03:10', NULL, '1', 23, 1, NULL),
(52, 'slideshow', '2013-12-11 10:03:51', '2013-12-11 10:04:22', NULL, '1', 23, 1, NULL),
(53, 'slideshow', '2013-12-11 10:05:27', '2013-12-11 10:05:27', NULL, '1', 23, 1, NULL),
(54, 'slideshow', '2013-12-11 10:06:11', '2013-12-11 10:06:12', NULL, '1', 23, 1, NULL),
(55, 'slideshow', '2013-12-11 10:07:30', '2013-12-11 10:07:30', NULL, '1', 23, 1, NULL),
(56, 'slideshow', '2013-12-11 10:08:53', '2013-12-11 10:08:54', NULL, '1', 23, 1, NULL),
(57, 'slideshow', '2013-12-11 10:09:29', '2013-12-11 10:09:30', NULL, '1', 23, 1, NULL),
(58, 'slideshow', '2013-12-11 10:10:25', '2013-12-11 10:10:25', NULL, '1', 23, 1, NULL),
(59, 'slideshow', '2013-12-11 10:12:39', '2013-12-11 10:12:40', NULL, '1', 23, 1, NULL),
(60, 'slideshow', '2013-12-11 10:13:09', '2013-12-11 10:13:11', NULL, '1', 23, 1, NULL),
(61, 'slideshow', '2013-12-11 10:15:18', '2013-12-11 10:15:21', NULL, '1', 23, 1, NULL),
(62, NULL, '2013-12-11 10:26:48', '2013-12-11 10:26:49', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";s:6:"bID=62";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"62";i:1;s:1297:"<h1>Produktion</h1>\r\n<p>Wir bieten Ihnendie Möglichkeit, Stangenmaterialien bis Ø 220mm, 260 x 150mm auf unseren <br />Bandsägeautomaten zuzuschneiden. Bis 4000mm Länge sind wir in der Lage, diese auch zu richten <br />(bis 16t Richtkraft).</p>\r\n<ul>\r\n<li>Hobeln: Hobelmaschine Waldrich Coburg Wir hobeln Ihre Werkstücke auch in Übergrössen. Max. zu bearbeitende Fläche L=5000mm, B=1640mm, H=1200mm</li>\r\n<li>Drehen: Spitzenweite normal: 4000 mm, Spitzenweite ausgezogen: 6000 mm, Spitzenhöhe: 500 mm, Durchgang über Bett: 1000 mm, Durchgang über Schlitten: 740 mm, Durchgang in Kröpfung: Ø 1500 mm / L=2000mm, Durchlass Hauptspindel: Ø 100 mm,Durchlass Hauptspindel: Ø 120 mm, Spitzenweite: 3000 mm</li>\r\n<li>Fräsen:   Vertikalfräsen: Fläche: 350 x 1250 mm, Quer: 250 mm, Längs: 850 mm, Horizontalbohrwerk: Fläche: 1240 x 1240 mm, Quer:1570 mm, Vertikal: 1100 mm</li>\r\n<li>Bohren:  Horizontal: WZ-Aufnahme: ISO 50, Fläche: 1240 x 1240 mm, Quer: 1570 mm, Vertikal: 1100 mm, Vertikal: WZ-Aufnahme: MK 5, Fläche: 1250 x 1400 mm, Quer: 1450 mm, Längs: 1200 mm</li>\r\n<li>Schleifen: Flachschleifarbeiten können wir anbieten auf unserer; Diskusschleifmaschine "Stefor" 300 x 1000 mm Kleine Maschinen sind bei uns im Einsatz für das nachschleifen eigenen Werkzeuge</li>\r\n</ul>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"62";s:7:"content";s:1297:"<h1>Produktion</h1>\r\n<p>Wir bieten Ihnendie Möglichkeit, Stangenmaterialien bis Ø 220mm, 260 x 150mm auf unseren <br />Bandsägeautomaten zuzuschneiden. Bis 4000mm Länge sind wir in der Lage, diese auch zu richten <br />(bis 16t Richtkraft).</p>\r\n<ul>\r\n<li>Hobeln: Hobelmaschine Waldrich Coburg Wir hobeln Ihre Werkstücke auch in Übergrössen. Max. zu bearbeitende Fläche L=5000mm, B=1640mm, H=1200mm</li>\r\n<li>Drehen: Spitzenweite normal: 4000 mm, Spitzenweite ausgezogen: 6000 mm, Spitzenhöhe: 500 mm, Durchgang über Bett: 1000 mm, Durchgang über Schlitten: 740 mm, Durchgang in Kröpfung: Ø 1500 mm / L=2000mm, Durchlass Hauptspindel: Ø 100 mm,Durchlass Hauptspindel: Ø 120 mm, Spitzenweite: 3000 mm</li>\r\n<li>Fräsen:   Vertikalfräsen: Fläche: 350 x 1250 mm, Quer: 250 mm, Längs: 850 mm, Horizontalbohrwerk: Fläche: 1240 x 1240 mm, Quer:1570 mm, Vertikal: 1100 mm</li>\r\n<li>Bohren:  Horizontal: WZ-Aufnahme: ISO 50, Fläche: 1240 x 1240 mm, Quer: 1570 mm, Vertikal: 1100 mm, Vertikal: WZ-Aufnahme: MK 5, Fläche: 1250 x 1400 mm, Quer: 1450 mm, Längs: 1200 mm</li>\r\n<li>Schleifen: Flachschleifarbeiten können wir anbieten auf unserer; Diskusschleifmaschine "Stefor" 300 x 1000 mm Kleine Maschinen sind bei uns im Einsatz für das nachschleifen eigenen Werkzeuge</li>\r\n</ul>";}'),
(63, 'slideshow', '2013-12-11 10:27:59', '2013-12-11 10:28:01', NULL, '1', 23, 1, NULL),
(64, 'slideshow', '2013-12-11 10:29:05', '2013-12-11 10:29:15', NULL, '1', 23, 1, NULL),
(65, NULL, '2013-12-11 10:30:23', '2013-12-11 10:30:23', NULL, '1', 23, 1, NULL),
(66, 'slideshow', '2013-12-11 10:31:48', '2013-12-11 10:31:49', NULL, '1', 23, 1, NULL),
(67, 'slideshow', '2013-12-11 10:38:09', '2013-12-11 10:38:14', NULL, '1', 23, 1, NULL),
(68, 'slideshow', '2013-12-11 10:38:41', '2013-12-11 10:38:42', NULL, '1', 23, 1, NULL),
(69, 'slideshow', '2013-12-11 10:39:24', '2013-12-11 10:39:25', NULL, '1', 23, 1, NULL),
(70, 'slideshow', '2013-12-11 10:44:48', '2013-12-11 10:44:49', NULL, '1', 23, 1, NULL),
(71, 'slideshow', '2013-12-11 10:46:01', '2013-12-11 10:46:04', NULL, '1', 23, 1, NULL),
(72, 'slideshow', '2013-12-11 10:47:10', '2013-12-11 10:47:13', NULL, '1', 23, 1, NULL),
(73, 'slideshow', '2013-12-11 10:48:39', '2013-12-11 10:48:40', NULL, '1', 23, 1, NULL),
(74, 'slideshow', '2013-12-11 10:49:44', '2013-12-11 10:49:46', NULL, '1', 23, 1, 'O:11:"BlockRecord":13:{s:5:"_dbat";i:1;s:6:"_table";s:11:"btSlideshow";s:8:"_tableat";s:11:"btSlideshow";s:6:"_where";s:6:"bID=74";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"74";i:1;s:1:"2";i:2;s:5:"ORDER";i:3;s:1:"5";i:4;s:1:"2";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"74";s:4:"fsID";s:1:"2";s:8:"playback";s:5:"ORDER";s:8:"duration";s:1:"5";s:12:"fadeDuration";s:1:"2";}'),
(75, NULL, '2013-12-11 10:52:27', '2013-12-11 10:52:27', NULL, '1', 1, 1, NULL),
(76, 'slideshow', '2013-12-11 10:54:31', '2013-12-11 10:54:31', NULL, '1', 23, 1, 'O:11:"BlockRecord":13:{s:5:"_dbat";i:1;s:6:"_table";s:11:"btSlideshow";s:8:"_tableat";s:11:"btSlideshow";s:6:"_where";s:6:"bID=76";s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"76";i:1;s:1:"2";i:2;s:6:"RANDOM";i:3;s:1:"5";i:4;s:1:"2";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"76";s:4:"fsID";s:1:"2";s:8:"playback";s:6:"RANDOM";s:8:"duration";s:1:"5";s:12:"fadeDuration";s:1:"2";}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `BlockTypePermissionBlockTypeAccessList`
--

CREATE TABLE IF NOT EXISTS `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `BlockTypePermissionBlockTypeAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `BlockTypes`
--

CREATE TABLE IF NOT EXISTS `BlockTypes` (
`btID` int(10) unsigned NOT NULL,
  `btHandle` varchar(32) NOT NULL,
  `btName` varchar(128) NOT NULL,
  `btDescription` text,
  `btActiveWhenAdded` tinyint(1) NOT NULL DEFAULT '1',
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `BlockTypes`
--

INSERT INTO `BlockTypes` (`btID`, `btHandle`, `btName`, `btDescription`, `btActiveWhenAdded`, `btCopyWhenPropagate`, `btIncludeAll`, `btIsInternal`, `btDisplayOrder`, `btInterfaceWidth`, `btInterfaceHeight`, `pkgID`) VALUES
(1, 'core_scrapbook_display', 'Scrapbook Display (Core)', 'Proxy block for blocks pasted through the scrapbook.', 1, 0, 0, 1, 0, 400, 400, 0),
(2, 'core_stack_display', 'Stack Display (Core)', 'Proxy block for stacks added through the UI.', 1, 0, 0, 1, 0, 400, 400, 0),
(3, 'dashboard_featured_addon', 'Dashboard Featured Add-On', 'Features an add-on from concrete5.org.', 1, 0, 0, 1, 0, 300, 100, 0),
(4, 'dashboard_featured_theme', 'Dashboard Featured Theme', 'Features a theme from concrete5.org.', 1, 0, 0, 1, 0, 300, 100, 0),
(5, 'dashboard_newsflow_latest', 'Dashboard Newsflow Latest', 'Grabs the latest newsflow data from concrete5.org.', 1, 0, 0, 1, 0, 400, 400, 0),
(6, 'dashboard_app_status', 'Dashboard App Status', 'Displays update and welcome back information on your dashboard.', 1, 0, 0, 1, 0, 400, 400, 0),
(7, 'dashboard_site_activity', 'Dashboard Site Activity', 'Displays a summary of website activity.', 1, 0, 0, 1, 0, 400, 400, 0),
(8, 'autonav', 'Auto-Nav', 'Creates navigation trees and sitemaps.', 1, 0, 0, 0, 1, 500, 350, 0),
(9, 'content', 'Content', 'HTML/WYSIWYG Editor Content.', 1, 0, 0, 0, 2, 600, 465, 0),
(10, 'date_nav', 'Date Navigation', 'A collapsible date based navigation tree', 1, 0, 0, 0, 3, 500, 350, 0),
(11, 'external_form', 'External Form', 'Include external forms in the filesystem and place them on pages.', 1, 0, 0, 0, 4, 370, 100, 0),
(12, 'file', 'File', 'Link to files stored in the asset library.', 1, 0, 0, 0, 5, 300, 250, 0),
(13, 'flash_content', 'Flash Content', 'Embeds SWF files, including flash detection.', 1, 0, 0, 0, 6, 380, 200, 0),
(14, 'form', 'Form', 'Build simple forms and surveys.', 1, 0, 0, 0, 7, 420, 430, 0),
(15, 'google_map', 'Google Map', 'Enter an address and a Google Map of that location will be placed in your page.', 1, 0, 0, 0, 8, 400, 200, 0),
(16, 'guestbook', 'Guestbook / Comments', 'Adds blog-style comments (a guestbook) to your page.', 1, 0, 1, 0, 9, 350, 480, 0),
(17, 'html', 'HTML', 'For adding HTML by hand.', 1, 0, 0, 0, 10, 600, 465, 0),
(18, 'image', 'Image', 'Adds images and onstates from the library to pages.', 1, 0, 0, 0, 11, 400, 550, 0),
(19, 'next_previous', 'Next & Previous Nav', 'Navigate through sibling pages.', 1, 0, 0, 0, 12, 430, 400, 0),
(20, 'page_list', 'Page List', 'List pages based on type, area.', 1, 0, 0, 0, 13, 500, 350, 0),
(21, 'rss_displayer', 'RSS Displayer', 'Fetch, parse and display the contents of an RSS or Atom feed.', 1, 0, 0, 0, 14, 400, 330, 0),
(22, 'search', 'Search', 'Add a search box to your site.', 1, 0, 0, 0, 15, 400, 240, 0),
(23, 'slideshow', 'Slideshow', 'Display a running loop of images.', 1, 0, 0, 0, 16, 550, 400, 0),
(24, 'survey', 'Survey', 'Provide a simple survey, along with results in a pie chart format.', 1, 0, 0, 0, 17, 420, 300, 0),
(25, 'tags', 'Tags', 'List pages based on type, area.', 1, 0, 0, 0, 18, 450, 260, 0),
(26, 'video', 'Video Player', 'Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.', 1, 0, 0, 0, 19, 320, 220, 0),
(27, 'youtube', 'YouTube Video', 'Embeds a YouTube Video in your web page.', 1, 0, 0, 0, 20, 400, 210, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btContentFile`
--

CREATE TABLE IF NOT EXISTS `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btContentImage`
--

CREATE TABLE IF NOT EXISTS `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `forceImageToMatchDimensions` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `btContentImage`
--

INSERT INTO `btContentImage` (`bID`, `fID`, `fOnstateID`, `maxWidth`, `maxHeight`, `externalLink`, `internalLinkCID`, `forceImageToMatchDimensions`, `altText`) VALUES
(41, 9, 0, 100, 0, '', 0, 1, 'Home Bild'),
(44, 9, 0, 0, 0, '', 0, 0, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btContentLocal`
--

CREATE TABLE IF NOT EXISTS `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `btContentLocal`
--

INSERT INTO `btContentLocal` (`bID`, `content`) VALUES
(1, '	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						'),
(2, '<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>'),
(3, '<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>'),
(4, '<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>'),
(5, '\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>'),
(14, '<h1>Produktion</h1>\r\n<p>Wir bieten Ihnen die Möglichkeit, Stangenmaterialien bis Ø 220mm Durchschnitt, auf unseren Bandsägenautomaten zuzuschneiden. Bis 4000mm Länge sind wir in der Lage, diese auch zu richten (bis 16t Richtkraft).</p>\r\n<p><strong>Hobeln:</strong> Hobelmaschine Waldrick Coburg. Wir hobeln Ihre Werkstücke auch in Übergrössen. Max zu bearbeitende Fläche L=5000mm, B=1640mm, H=1200mm</p>\r\n<p><strong>Drehen: </strong>Spitzenweite normal: 4000mm, Spitzenweite ausgezogen: 6000mm, Spitzenhöhe: 500mm, Durchgang über Bett: 1000mm, Durchgang über Schlitten: 740mm, Durchgang in Kröpfung: Ø 1500mm / L=2000mm, Durchlass Hauptspindel: Ø 100mm, Durchlass Hauptspindel: Ø 120mm, Spitzenweite: 3000mm.</p>'),
(16, '<h1>Produktion</h1>\r\n<p>Wir bieten Ihnen die Möglichkeit, Stangenmaterialien bis Ø 220mm Durchschnitt, auf unseren Bandsägenautomaten zuzuschneiden. Bis 4000mm Länge sind wir in der Lage, diese auch zu richten (bis 16t Richtkraft).</p>\r\n<p><strong>Hobeln:</strong> Hobelmaschine Waldrick Coburg. Wir hobeln Ihre Werkstücke auch in Übergrössen. Max zu bearbeitende Fläche L=5000mm, B=1640mm, H=1200mm</p>\r\n<p><strong>Drehen: </strong>Spitzenweite normal: 4000mm, Spitzenweite ausgezogen: 6000mm, Spitzenhöhe: 500mm, Durchgang über Bett: 1000mm, Durchgang über Schlitten: 740mm, Durchgang in Kröpfung: Ø 1500mm / L=2000mm, Durchlass Hauptspindel: Ø 100mm, Durchlass Hauptspindel: Ø 120mm, Spitzenweite: 3000mm.</p>'),
(17, '<p>dfpgsdfgsdfsdfg</p>'),
(18, '<p>SULMAG Maschinenbau AG • Bahnhofstrasse 4 • 9536 Schwerzenbach • Tel. +41 (0)71 923 21 23 • <a title="E-Mail" href="mailto:info@sulmag.ch" target="_blank">info@sulmag.ch</a></p>'),
(31, '<h1>Willkommen bei der SULMAG Maschinenbau AG</h1>\r\n<div>Dienstleistungen rund um die Metallbearbeitung. Wir produzieren Maschinenbauteile ganz nach Ihren Wünschen. Wir bearbeiten alle Materialien in "fast" allen Grössen. Drehen, fräsen, hobeln, bohren, schweissen, etc. und dies alles aus einer Hand.</div>\r\n<div> </div>\r\n<div>Unsere Spezialitäten:</div>\r\n<div> </div>\r\n<div>- Kleinserien</div>\r\n<div>- Einzelteile</div>\r\n<div>- Prototypen</div>\r\n<div> </div>\r\n<div>Finden Sie mehr heraus über uns und unsere Produktion</div>\r\n<p> </p>'),
(32, '<h1>Willkommen bei der SULMAG Maschinenbau AG</h1>\r\n<p>Dienstleistungen rund um die Metallbearbeitung. Wir produzieren Maschinenbauteile ganz nach Ihren Wünschen. Wir bearbeiten alle Materialien in "fast" allen Grössen. Drehen, fräsen, hobeln, bohren, schweissen, etc. und dies alles aus einer Hand.</p>\r\n<p>Unsere Spezialitäten:</p>\r\n<p>- Kleinserien</p>\r\n<p>- Einzelteile</p>\r\n<p>- Prototypen</p>\r\n<p> </p>\r\n<p>Finden Sie mehr heraus über uns und unsere Produktion auf den nächsten Seiten.</p>'),
(33, '<h1>Willkommen bei der SULMAG Maschinenbau AG</h1>\r\n<p>Dienstleistungen rund um die Metallbearbeitung. Wir produzieren Maschinenbauteile ganz nach Ihren Wünschen. Wir bearbeiten alle Materialien in "fast" allen Grössen. Drehen, fräsen, hobeln, bohren, schweissen, etc. und dies alles aus einer Hand.</p>\r\n<p>Unsere Spezialitäten:</p>\r\n<ul>\r\n<li>Kleinserien</li>\r\n<li>Einzelteile</li>\r\n<li>Prototypen</li>\r\n</ul>\r\n<p>Finden Sie mehr heraus über uns und unsere Produktion auf den nächsten Seiten.</p>'),
(34, '<h1>Über Uns</h1>\r\n<p>Die Sulmag Maschinenbau AG in Schwarzenbach versteht sich als Zulieferfirma der Energie-, Maschinenbau-, Lebensmittel-, Verpackungs-, Fahrzeug-, Entsorgungs-, sowie der Bauindustrie. Die Kernkompetenzen liegen in der spanabhebenden Bearbeitung von grossvolumigen Werkstücken. Mit einem flexiblem und motivierten Team von Fachleuten sind wir in der Lage, auch kurzfristig Ihre Wünsche zu erfüllen.</p>\r\n<p>1968    Gründungsjahr als Maschinenbau Sulgen AG in Sulgen.<br />1972    Umzug der Firma nach Schwarzenbach und Namensänderung in Sulmag Maschinenbau AG.</p>\r\n<p>Geschäftsführer:              Hr. A. Shala<br />Stv. Geschäftsführer:       Hr. W. Brändle</p>\r\n<p>Öffnungszeiten:<br />Bürozeiten, Mo. bis Do.:  07:30 bis 11:30; 13:30 bis 17:00<br />Bürozeiten, Fr.:                07:30 bis 11:30; 13:30 bis 16:30<br />Spedition, Mo. bis Do.:    07:00 bis 12:00; 13:00 bis 17:00<br />Spedition, Fr.:                  07:00 bis 12:00; 13:00 bis 16:30</p>'),
(35, '<h1>Produktion</h1>\r\n<p>Wir bieten Ihnendie Möglichkeit, Stangenmaterialien bis Ø 220mm, 260 x 150mm auf unseren <br />Bandsägeautomaten zuzuschneiden. Bis 4000mm Länge sind wir in der Lage, diese auch zu richten <br />(bis 16t Richtkraft).<br /> <br />Hobeln:         Hobelmaschine Waldrich Coburg Wir hobeln Ihre Werkstücke auch in Übergrössen. <br />                      Max. zu bearbeitende Fläche L=5000mm, B=1640mm, H=1200mm<br /><br />Drehen:         Spitzenweite normal: 4000 mm, Spitzenweite ausgezogen: 6000 mm, Spitzenhöhe: 500 mm,<br />                     Durchgang über Bett: 1000 mm, Durchgang über Schlitten: 740 mm, Durchgang in Kröpfung: Ø 1500 mm / L=2000mm,</p>\r\n<p>                     Durchlass Hauptspindel: Ø 100 mm,Durchlass Hauptspindel: Ø 120 mm, Spitzenweite: 3000 mm<br /><br />Fräsen:          Vertikalfräsen: Fläche: 350 x 1250 mm, Quer: 250 mm, Längs: 850 mm  <br />                     Horizontalbohrwerk: Fläche: 1240 x 1240 mm, Quer:1570 mm, Vertikal: 1100 mm  <br /><br />Bohren:         Horizontal: WZ-Aufnahme: ISO 50, Fläche: 1240 x 1240 mm, Quer: 1570 mm, Vertikal: 1100 mm<br />                      Vertikal: WZ-Aufnahme: MK 5, Fläche: 1250 x 1400 mm, Quer: 1450 mm, Längs: 1200 mm<br /> <br />Schleifen:     Flachschleifarbeiten können wir anbieten auf unserer; Diskusschleifmaschine "Stefor" 300 x 1000 mm Kleine Maschinen sind bei uns im Einsatz für das nachschleifen der eigenen Werkzeuge<br /><br />Schweissen:  Folgenende Schweissarbeiten können unsere Fachleute für Sie anbieten:<br />                     TIC bis max. 400 A, AC und DC Schutzgas bis 370 A</p>'),
(36, '<h1>Produktion</h1>\r\n<p>Wir bieten Ihnendie Möglichkeit, Stangenmaterialien bis Ø 220mm, 260 x 150mm auf unseren <br />Bandsägeautomaten zuzuschneiden. Bis 4000mm Länge sind wir in der Lage, diese auch zu richten <br />(bis 16t Richtkraft).</p>\r\n<ul>\r\n<li>Hobeln: Hobelmaschine Waldrich Coburg Wir hobeln Ihre Werkstücke auch in Übergrössen. <br />              Max. zu bearbeitende Fläche L=5000mm, B=1640mm, H=1200mm</li>\r\n<li>Drehen: Spitzenweite normal: 4000 mm, Spitzenweite ausgezogen: 6000 mm, Spitzenhöhe: 500 mm,<br />              Durchgang über Bett: 1000 mm, Durchgang über Schlitten: 740 mm, Durchgang in Kröpfung:<br />              Ø 1500 mm / L=2000mm, Durchlass Hauptspindel: Ø 100 mm,Durchlass Hauptspindel: <br />              Ø 120 mm, Spitzenweite: 3000 mm</li>\r\n<li>Fräsen:   Vertikalfräsen: Fläche: 350 x 1250 mm, Quer: 250 mm, Längs: 850 mm  <br />              Horizontalbohrwerk: Fläche: 1240 x 1240 mm, Quer:1570 mm, Vertikal: 1100 mm</li>\r\n<li>Bohren:  Horizontal: WZ-Aufnahme: ISO 50, Fläche: 1240 x 1240 mm, Quer: 1570 mm, Vertikal: 1100 mm<br />               Vertikal: WZ-Aufnahme: MK 5, Fläche: 1250 x 1400 mm, Quer: 1450 mm, Längs: 1200 mm</li>\r\n<li>Schleifen: Flachschleifarbeiten können wir anbieten auf unserer; Diskusschleifmaschine "Stefor" 300 x 1000 mm Kleine Maschinen sind bei uns im Einsatz für das nachschleifen eigenen Werkzeuge</li>\r\n</ul>'),
(37, '<h1>Kontakt</h1>\r\n<p>SULMAG AG Maschinenbau<br /> Bahnhofstrasse 4<br /> 9536 Schwarzenbach</p>\r\n<p>Telefon: +41 71 923 21 23<br /> Fax: +41 71 923 21 94</p>\r\n<p>Email: <a href="mailto:info@sulmag.ch" target="_blank">info@sulmag.ch</a></p>'),
(40, '<h2>Karte</h2>'),
(62, '<h1>Produktion</h1>\r\n<p>Wir bieten Ihnendie Möglichkeit, Stangenmaterialien bis Ø 220mm, 260 x 150mm auf unseren <br />Bandsägeautomaten zuzuschneiden. Bis 4000mm Länge sind wir in der Lage, diese auch zu richten <br />(bis 16t Richtkraft).</p>\r\n<ul>\r\n<li>Hobeln: Hobelmaschine Waldrich Coburg Wir hobeln Ihre Werkstücke auch in Übergrössen. Max. zu bearbeitende Fläche L=5000mm, B=1640mm, H=1200mm</li>\r\n<li>Drehen: Spitzenweite normal: 4000 mm, Spitzenweite ausgezogen: 6000 mm, Spitzenhöhe: 500 mm, Durchgang über Bett: 1000 mm, Durchgang über Schlitten: 740 mm, Durchgang in Kröpfung: Ø 1500 mm / L=2000mm, Durchlass Hauptspindel: Ø 100 mm,Durchlass Hauptspindel: Ø 120 mm, Spitzenweite: 3000 mm</li>\r\n<li>Fräsen:   Vertikalfräsen: Fläche: 350 x 1250 mm, Quer: 250 mm, Längs: 850 mm, Horizontalbohrwerk: Fläche: 1240 x 1240 mm, Quer:1570 mm, Vertikal: 1100 mm</li>\r\n<li>Bohren:  Horizontal: WZ-Aufnahme: ISO 50, Fläche: 1240 x 1240 mm, Quer: 1570 mm, Vertikal: 1100 mm, Vertikal: WZ-Aufnahme: MK 5, Fläche: 1250 x 1400 mm, Quer: 1450 mm, Längs: 1200 mm</li>\r\n<li>Schleifen: Flachschleifarbeiten können wir anbieten auf unserer; Diskusschleifmaschine "Stefor" 300 x 1000 mm Kleine Maschinen sind bei uns im Einsatz für das nachschleifen eigenen Werkzeuge</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btCoreScrapbookDisplay`
--

CREATE TABLE IF NOT EXISTS `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `btCoreScrapbookDisplay`
--

INSERT INTO `btCoreScrapbookDisplay` (`bID`, `bOriginalID`) VALUES
(15, 14),
(75, 74);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btCoreStackDisplay`
--

CREATE TABLE IF NOT EXISTS `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `btCoreStackDisplay`
--

INSERT INTO `btCoreStackDisplay` (`bID`, `stID`) VALUES
(19, 123),
(20, 123),
(21, 123),
(22, 123);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btDashboardNewsflowLatest`
--

CREATE TABLE IF NOT EXISTS `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `btDashboardNewsflowLatest`
--

INSERT INTO `btDashboardNewsflowLatest` (`bID`, `slot`) VALUES
(8, 'A'),
(9, 'B'),
(12, 'C');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btDateNav`
--

CREATE TABLE IF NOT EXISTS `btDateNav` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `flatDisplay` int(11) DEFAULT '0',
  `defaultNode` varchar(64) DEFAULT 'current_page',
  `truncateTitles` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `truncateTitleChars` int(11) DEFAULT '128',
  `showDescriptions` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btExternalForm`
--

CREATE TABLE IF NOT EXISTS `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btFlashContent`
--

CREATE TABLE IF NOT EXISTS `btFlashContent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btForm`
--

CREATE TABLE IF NOT EXISTS `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) DEFAULT NULL,
  `thankyouMsg` text,
  `notifyMeOnSubmission` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btFormAnswers`
--

CREATE TABLE IF NOT EXISTS `btFormAnswers` (
`aID` int(10) unsigned NOT NULL,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btFormAnswerSet`
--

CREATE TABLE IF NOT EXISTS `btFormAnswerSet` (
`asID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btFormQuestions`
--

CREATE TABLE IF NOT EXISTS `btFormQuestions` (
`qID` int(10) unsigned NOT NULL,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `options` text,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btGoogleMap`
--

CREATE TABLE IF NOT EXISTS `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `btGoogleMap`
--

INSERT INTO `btGoogleMap` (`bID`, `title`, `location`, `latitude`, `longitude`, `zoom`) VALUES
(38, 'Karte', 'Bahnhofstrasse 4, 9536 Schwarzenbach, Schweiz', 47.4447661, 9.0675699, 14),
(39, '', 'Bahnhofstrasse 4, 9536 Schwarzenbach, Schweiz', 47.4447661, 9.0675699, 14);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btGuestBook`
--

CREATE TABLE IF NOT EXISTS `btGuestBook` (
  `bID` int(10) unsigned NOT NULL,
  `requireApproval` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT 'Comments',
  `dateFormat` varchar(100) DEFAULT NULL,
  `displayGuestBookForm` int(11) DEFAULT '1',
  `displayCaptcha` int(11) DEFAULT '1',
  `authenticationRequired` int(11) DEFAULT '0',
  `notifyEmail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btGuestBookEntries`
--

CREATE TABLE IF NOT EXISTS `btGuestBookEntries` (
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT '1',
`entryID` int(11) NOT NULL,
  `uID` int(11) DEFAULT '0',
  `commentText` longtext,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `entryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approved` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btNavigation`
--

CREATE TABLE IF NOT EXISTS `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btNextPrevious`
--

CREATE TABLE IF NOT EXISTS `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `linkStyle` varchar(32) DEFAULT NULL,
  `nextLabel` varchar(128) DEFAULT NULL,
  `previousLabel` varchar(128) DEFAULT NULL,
  `parentLabel` varchar(128) DEFAULT NULL,
  `showArrows` int(11) DEFAULT '1',
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) DEFAULT 'display_asc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btPageList`
--

CREATE TABLE IF NOT EXISTS `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paginate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayAliases` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `rss` int(11) DEFAULT '0',
  `rssTitle` varchar(255) DEFAULT NULL,
  `rssDescription` longtext,
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btRssDisplay`
--

CREATE TABLE IF NOT EXISTS `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btSearch`
--

CREATE TABLE IF NOT EXISTS `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `postTo_cID` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btSlideshow`
--

CREATE TABLE IF NOT EXISTS `btSlideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `btSlideshow`
--

INSERT INTO `btSlideshow` (`bID`, `fsID`, `playback`, `duration`, `fadeDuration`) VALUES
(23, 1, 'ORDER', 5, 2),
(24, 1, 'ORDER', 5, 2),
(25, 1, 'ORDER', 5, 2),
(26, 1, 'ORDER', 5, 2),
(27, 1, 'ORDER', 5, 2),
(28, 1, 'ORDER', 5, 2),
(29, 1, 'ORDER', 5, 2),
(30, 1, 'ORDER', 5, 2),
(42, 1, 'ORDER', 5, 2),
(43, 1, 'ORDER', 5, 2),
(45, 1, 'ORDER', 5, 2),
(46, 1, 'ORDER', 5, 2),
(47, 1, 'ORDER', 5, 2),
(48, 1, 'ORDER', 5, 2),
(49, 1, 'ORDER', 5, 2),
(50, 1, 'ORDER', 5, 2),
(51, 1, 'ORDER', 5, 2),
(52, 1, 'ORDER', 5, 2),
(53, 1, 'ORDER', 5, 2),
(54, 1, 'ORDER', 5, 2),
(55, 1, 'ORDER', 5, 2),
(56, 1, 'ORDER', 5, 2),
(57, 1, 'ORDER', 5, 2),
(58, 1, 'ORDER', 5, 2),
(59, 1, 'ORDER', 5, 2),
(60, 1, 'ORDER', 5, 2),
(61, 1, 'ORDER', 5, 2),
(63, 2, 'ORDER', 5, 2),
(64, 2, 'ORDER', 5, 2),
(65, 2, 'ORDER', 5, 2),
(66, 2, 'ORDER', 5, 2),
(67, 2, 'ORDER', 5, 2),
(68, 2, 'ORDER', 5, 2),
(69, 2, 'ORDER', 5, 2),
(70, 2, 'ORDER', 5, 2),
(71, 2, 'ORDER', 5, 2),
(72, 2, 'ORDER', 5, 2),
(73, 2, 'ORDER', 5, 2),
(74, 2, 'ORDER', 5, 2),
(76, 2, 'RANDOM', 5, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btSlideshowImg`
--

CREATE TABLE IF NOT EXISTS `btSlideshowImg` (
`slideshowImgId` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `btSlideshowImg`
--

INSERT INTO `btSlideshowImg` (`slideshowImgId`, `bID`, `fID`, `url`, `duration`, `fadeDuration`, `groupSet`, `position`, `imgHeight`) VALUES
(1, 24, 2, '/sulmag/files/2413/8554/6974/010203-Maschinenbau.jpg', 5, 2, 0, NULL, 268),
(2, 24, 3, '/sulmag/files/2013/8554/7439/Unbenannt-1.jpg', 5, 2, 0, NULL, 268),
(3, 25, 2, '/sulmag/files/2413/8554/6974/010203-Maschinenbau.jpg', 5, 2, 0, NULL, 268),
(4, 25, 3, '/sulmag/files/2013/8554/7439/Unbenannt-1.jpg', 5, 2, 0, NULL, 268),
(5, 26, 2, '/sulmag/files/2413/8554/6974/010203-Maschinenbau.jpg', 5, 2, 0, NULL, 268),
(6, 26, 3, '/sulmag/files/2013/8554/7439/Unbenannt-1.jpg', 5, 2, 0, NULL, 268),
(7, 27, 2, '/sulmag/files/2413/8554/6974/010203-Maschinenbau.jpg', 5, 2, 0, NULL, 268),
(8, 27, 3, '/sulmag/files/2013/8554/7439/Unbenannt-1.jpg', 5, 2, 0, NULL, 268),
(9, 28, 2, '/sulmag/files/2413/8554/6974/010203-Maschinenbau.jpg', 5, 2, 0, NULL, 268),
(10, 28, 3, '/sulmag/files/2013/8554/7439/Unbenannt-1.jpg', 5, 2, 0, NULL, 268),
(11, 29, 2, '/sulmag/files/2413/8554/6974/010203-Maschinenbau.jpg', 5, 2, 0, NULL, 268),
(12, 29, 3, '/sulmag/files/2013/8554/7439/Unbenannt-1.jpg', 5, 2, 0, NULL, 268),
(13, 43, 9, '/sulmag/files/5013/8675/4721/6sulmag.jpg', 5, 2, 0, NULL, 955),
(14, 46, 9, '/sulmag/files/5013/8675/4721/6sulmag.jpg', 5, 2, 0, NULL, 955),
(15, 47, 9, '/sulmag/files/5013/8675/4721/6sulmag.jpg', 5, 2, 0, NULL, 955),
(16, 48, 9, '/sulmag/files/5013/8675/4721/6sulmag.jpg', 5, 2, 0, NULL, 955),
(17, 49, 9, '/sulmag/files/5013/8675/4721/6sulmag.jpg', 5, 2, 0, NULL, 955),
(18, 50, 9, '/sulmag/files/5013/8675/4721/6sulmag.jpg', 5, 2, 0, NULL, 955),
(19, 51, 9, '/sulmag/files/5013/8675/4721/6sulmag.jpg', 5, 2, 0, NULL, 955),
(20, 52, 9, '/sulmag/files/5013/8675/4721/6sulmag.jpg', 5, 2, 0, NULL, 955),
(21, 53, 9, '/sulmag/files/5013/8675/4721/6sulmag.jpg', 5, 2, 0, NULL, 955),
(22, 54, 9, '/sulmag/files/5013/8675/4721/6sulmag.jpg', 5, 2, 0, NULL, 955),
(23, 55, 9, '/sulmag/files/5013/8675/4721/6sulmag.jpg', 5, 2, 0, NULL, 955),
(24, 56, 9, '/sulmag/files/5013/8675/4721/6sulmag.jpg', 5, 2, 0, NULL, 955),
(25, 57, 9, '/sulmag/files/5013/8675/4721/6sulmag.jpg', 5, 2, 0, NULL, 955),
(26, 58, 9, '/sulmag/files/5013/8675/4721/6sulmag.jpg', 5, 2, 0, NULL, 955),
(27, 59, 9, '/sulmag/files/5013/8675/4721/6sulmag.jpg', 5, 2, 0, NULL, 955),
(28, 60, 9, '/sulmag/files/5013/8675/4721/6sulmag.jpg', 5, 2, 0, NULL, 955),
(29, 61, 9, '/sulmag/files/5013/8675/4721/6sulmag.jpg', 5, 2, 0, NULL, 955),
(30, 66, 8, '/sulmag/files/4413/8675/4717/5sulmag.jpg', 5, 2, 0, NULL, 955),
(31, 66, 7, '/sulmag/files/3713/8675/4712/4sulmag.jpg', 5, 2, 0, NULL, 955),
(32, 66, 6, '/sulmag/files/1213/8675/4709/3sulmag.jpg', 5, 2, 0, NULL, 955),
(33, 66, 5, '/sulmag/files/8113/8675/4707/2sulmag.jpg', 5, 2, 0, NULL, 955),
(34, 66, 4, '/sulmag/files/5613/8675/4704/1sulmag.jpg', 5, 2, 0, NULL, 955),
(40, 68, 8, '/sulmag/files/4413/8675/4717/5sulmag.jpg', 5, 2, 0, NULL, 955),
(41, 68, 7, '/sulmag/files/3713/8675/4712/4sulmag.jpg', 5, 2, 0, NULL, 955),
(42, 68, 6, '/sulmag/files/1213/8675/4709/3sulmag.jpg', 5, 2, 0, NULL, 955),
(43, 68, 5, '/sulmag/files/8113/8675/4707/2sulmag.jpg', 5, 2, 0, NULL, 955),
(44, 68, 4, '/sulmag/files/5613/8675/4704/1sulmag.jpg', 5, 2, 0, NULL, 955),
(45, 69, 8, '/sulmag/files/4413/8675/4717/5sulmag.jpg', 5, 2, 0, NULL, 955),
(46, 69, 7, '/sulmag/files/3713/8675/4712/4sulmag.jpg', 5, 2, 0, NULL, 955),
(47, 69, 6, '/sulmag/files/1213/8675/4709/3sulmag.jpg', 5, 2, 0, NULL, 955),
(48, 69, 5, '/sulmag/files/8113/8675/4707/2sulmag.jpg', 5, 2, 0, NULL, 955),
(49, 69, 4, '/sulmag/files/5613/8675/4704/1sulmag.jpg', 5, 2, 0, NULL, 955),
(50, 70, 8, '/sulmag/files/4413/8675/4717/5sulmag.jpg', 5, 2, 0, NULL, 955),
(51, 70, 7, '/sulmag/files/3713/8675/4712/4sulmag.jpg', 5, 2, 0, NULL, 955),
(52, 70, 6, '/sulmag/files/1213/8675/4709/3sulmag.jpg', 5, 2, 0, NULL, 955),
(53, 70, 5, '/sulmag/files/8113/8675/4707/2sulmag.jpg', 5, 2, 0, NULL, 955),
(54, 70, 4, '/sulmag/files/5613/8675/4704/1sulmag.jpg', 5, 2, 0, NULL, 955),
(55, 71, 8, '/sulmag/files/4413/8675/4717/5sulmag.jpg', 5, 2, 0, NULL, 955),
(56, 71, 7, '/sulmag/files/3713/8675/4712/4sulmag.jpg', 5, 2, 0, NULL, 955),
(57, 71, 6, '/sulmag/files/1213/8675/4709/3sulmag.jpg', 5, 2, 0, NULL, 955),
(58, 71, 5, '/sulmag/files/8113/8675/4707/2sulmag.jpg', 5, 2, 0, NULL, 955),
(59, 71, 4, '/sulmag/files/5613/8675/4704/1sulmag.jpg', 5, 2, 0, NULL, 955),
(60, 72, 8, '/sulmag/files/4413/8675/4717/5sulmag.jpg', 5, 2, 0, NULL, 955),
(61, 72, 7, '/sulmag/files/3713/8675/4712/4sulmag.jpg', 5, 2, 0, NULL, 955),
(62, 72, 6, '/sulmag/files/1213/8675/4709/3sulmag.jpg', 5, 2, 0, NULL, 955),
(63, 72, 5, '/sulmag/files/8113/8675/4707/2sulmag.jpg', 5, 2, 0, NULL, 955),
(64, 72, 4, '/sulmag/files/5613/8675/4704/1sulmag.jpg', 5, 2, 0, NULL, 955),
(65, 73, 8, '/sulmag/files/4413/8675/4717/5sulmag.jpg', 5, 2, 0, NULL, 955),
(66, 73, 7, '/sulmag/files/3713/8675/4712/4sulmag.jpg', 5, 2, 0, NULL, 955),
(67, 73, 6, '/sulmag/files/1213/8675/4709/3sulmag.jpg', 5, 2, 0, NULL, 955),
(68, 73, 5, '/sulmag/files/8113/8675/4707/2sulmag.jpg', 5, 2, 0, NULL, 955),
(69, 73, 4, '/sulmag/files/5613/8675/4704/1sulmag.jpg', 5, 2, 0, NULL, 955),
(70, 74, 8, '/sulmag/files/4413/8675/4717/5sulmag.jpg', 5, 2, 0, NULL, 955),
(71, 74, 7, '/sulmag/files/3713/8675/4712/4sulmag.jpg', 5, 2, 0, NULL, 955),
(72, 74, 6, '/sulmag/files/1213/8675/4709/3sulmag.jpg', 5, 2, 0, NULL, 955),
(73, 74, 5, '/sulmag/files/8113/8675/4707/2sulmag.jpg', 5, 2, 0, NULL, 955),
(74, 74, 4, '/sulmag/files/5613/8675/4704/1sulmag.jpg', 5, 2, 0, NULL, 955);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btSurvey`
--

CREATE TABLE IF NOT EXISTS `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btSurveyOptions`
--

CREATE TABLE IF NOT EXISTS `btSurveyOptions` (
`optionID` int(10) unsigned NOT NULL,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btSurveyResults`
--

CREATE TABLE IF NOT EXISTS `btSurveyResults` (
`resultID` int(10) unsigned NOT NULL,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btTags`
--

CREATE TABLE IF NOT EXISTS `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btVideo`
--

CREATE TABLE IF NOT EXISTS `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `btYouTube`
--

CREATE TABLE IF NOT EXISTS `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CollectionAttributeValues`
--

CREATE TABLE IF NOT EXISTS `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `CollectionAttributeValues`
--

INSERT INTO `CollectionAttributeValues` (`cID`, `cvID`, `akID`, `avID`) VALUES
(3, 1, 3, 1),
(3, 1, 4, 2),
(4, 1, 3, 3),
(4, 1, 4, 4),
(5, 1, 3, 5),
(5, 1, 4, 6),
(6, 1, 3, 7),
(7, 1, 3, 8),
(7, 1, 4, 9),
(8, 1, 3, 10),
(8, 1, 4, 11),
(9, 1, 3, 12),
(9, 1, 4, 13),
(11, 1, 3, 14),
(11, 1, 4, 15),
(12, 1, 3, 16),
(12, 1, 4, 17),
(13, 1, 3, 18),
(13, 1, 4, 19),
(14, 1, 3, 21),
(14, 1, 4, 22),
(14, 1, 5, 20),
(15, 1, 3, 23),
(16, 1, 3, 24),
(16, 1, 4, 25),
(17, 1, 3, 26),
(17, 1, 4, 27),
(18, 1, 3, 28),
(18, 1, 4, 29),
(19, 1, 3, 30),
(19, 1, 4, 32),
(19, 1, 5, 31),
(20, 1, 3, 33),
(20, 1, 4, 35),
(20, 1, 5, 34),
(21, 1, 3, 36),
(21, 1, 4, 37),
(22, 1, 3, 38),
(23, 1, 3, 39),
(23, 1, 4, 40),
(24, 1, 3, 41),
(24, 1, 4, 42),
(25, 1, 3, 43),
(25, 1, 4, 44),
(26, 1, 3, 45),
(26, 1, 4, 46),
(28, 1, 3, 47),
(28, 1, 4, 48),
(29, 1, 3, 49),
(30, 1, 3, 50),
(31, 1, 3, 51),
(32, 1, 3, 52),
(32, 1, 4, 53),
(34, 1, 3, 54),
(34, 1, 4, 55),
(35, 1, 3, 56),
(35, 1, 4, 57),
(36, 1, 3, 58),
(37, 1, 4, 59),
(38, 1, 4, 60),
(40, 1, 3, 61),
(40, 1, 4, 62),
(41, 1, 4, 63),
(42, 1, 5, 64),
(42, 1, 8, 65),
(43, 1, 3, 66),
(43, 1, 4, 67),
(44, 1, 5, 68),
(45, 1, 5, 69),
(46, 1, 3, 70),
(47, 1, 3, 71),
(48, 1, 3, 72),
(49, 1, 3, 73),
(50, 1, 3, 74),
(51, 1, 5, 75),
(53, 1, 3, 76),
(54, 1, 3, 77),
(55, 1, 3, 78),
(56, 1, 3, 79),
(57, 1, 3, 80),
(58, 1, 3, 81),
(60, 1, 3, 82),
(61, 1, 3, 83),
(62, 1, 3, 84),
(63, 1, 3, 85),
(64, 1, 3, 86),
(65, 1, 3, 87),
(67, 1, 3, 88),
(68, 1, 3, 89),
(69, 1, 3, 90),
(71, 1, 3, 91),
(72, 1, 3, 92),
(73, 1, 3, 93),
(74, 1, 3, 94),
(77, 1, 3, 95),
(78, 1, 3, 96),
(79, 1, 3, 97),
(80, 1, 3, 98),
(82, 1, 3, 99),
(83, 1, 3, 100),
(84, 1, 3, 101),
(85, 1, 3, 102),
(86, 1, 3, 103),
(87, 1, 3, 104),
(88, 1, 3, 105),
(89, 1, 3, 106),
(90, 1, 3, 107),
(91, 1, 8, 108),
(92, 1, 3, 109),
(93, 1, 3, 110),
(94, 1, 3, 111),
(95, 1, 3, 112),
(96, 1, 3, 113),
(97, 1, 3, 114),
(99, 1, 3, 115),
(100, 1, 3, 116),
(105, 1, 5, 118),
(105, 1, 8, 119),
(106, 1, 5, 117);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Collections`
--

CREATE TABLE IF NOT EXISTS `Collections` (
`cID` int(10) unsigned NOT NULL,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Collections`
--

INSERT INTO `Collections` (`cID`, `cDateAdded`, `cDateModified`, `cHandle`) VALUES
(1, '2013-11-19 07:04:48', '2013-12-11 09:49:02', 'home'),
(2, '2013-11-19 07:05:27', '2013-11-19 07:05:35', 'dashboard'),
(3, '2013-11-19 07:05:36', '2013-11-19 07:05:36', 'composer'),
(4, '2013-11-19 07:05:36', '2013-11-19 07:05:36', 'write'),
(5, '2013-11-19 07:05:36', '2013-11-19 07:05:37', 'drafts'),
(6, '2013-11-19 07:05:37', '2013-11-19 07:05:37', 'sitemap'),
(7, '2013-11-19 07:05:37', '2013-11-19 07:05:38', 'full'),
(8, '2013-11-19 07:05:38', '2013-11-19 07:05:38', 'explore'),
(9, '2013-11-19 07:05:38', '2013-11-19 07:05:38', 'search'),
(10, '2013-11-19 07:05:39', '2013-11-19 07:05:39', 'files'),
(11, '2013-11-19 07:05:39', '2013-11-19 07:05:40', 'search'),
(12, '2013-11-19 07:05:40', '2013-11-19 07:05:40', 'attributes'),
(13, '2013-11-19 07:05:41', '2013-11-19 07:05:41', 'sets'),
(14, '2013-11-19 07:05:41', '2013-11-19 07:05:42', 'add_set'),
(15, '2013-11-19 07:05:42', '2013-11-19 07:05:43', 'users'),
(16, '2013-11-19 07:05:44', '2013-11-19 07:05:45', 'search'),
(17, '2013-11-19 07:05:47', '2013-11-19 07:05:48', 'groups'),
(18, '2013-11-19 07:05:49', '2013-11-19 07:05:50', 'attributes'),
(19, '2013-11-19 07:05:50', '2013-11-19 07:05:51', 'add'),
(20, '2013-11-19 07:05:52', '2013-11-19 07:05:53', 'add_group'),
(21, '2013-11-19 07:05:53', '2013-11-19 07:05:55', 'group_sets'),
(22, '2013-11-19 07:05:55', '2013-11-19 07:05:56', 'reports'),
(23, '2013-11-19 07:05:57', '2013-11-19 07:05:57', 'statistics'),
(24, '2013-11-19 07:05:58', '2013-11-19 07:06:00', 'forms'),
(25, '2013-11-19 07:06:01', '2013-11-19 07:06:02', 'surveys'),
(26, '2013-11-19 07:06:02', '2013-11-19 07:06:03', 'logs'),
(27, '2013-11-19 07:06:04', '2013-11-19 07:06:05', 'pages'),
(28, '2013-11-19 07:06:06', '2013-11-19 07:06:07', 'themes'),
(29, '2013-11-19 07:06:07', '2013-11-19 07:06:08', 'add'),
(30, '2013-11-19 07:06:08', '2013-11-19 07:06:09', 'inspect'),
(31, '2013-11-19 07:06:10', '2013-11-19 07:06:13', 'customize'),
(32, '2013-11-19 07:06:14', '2013-11-19 07:06:16', 'types'),
(33, '2013-11-19 07:06:17', '2013-11-19 07:06:19', 'add'),
(34, '2013-11-19 07:06:19', '2013-11-19 07:06:21', 'attributes'),
(35, '2013-11-19 07:06:22', '2013-11-19 07:06:23', 'single'),
(36, '2013-11-19 07:06:23', '2013-11-19 07:06:25', 'workflow'),
(37, '2013-11-19 07:06:25', '2013-11-19 07:06:26', 'list'),
(38, '2013-11-19 07:06:26', '2013-11-19 07:06:27', 'me'),
(39, '2013-11-19 07:06:27', '2013-11-19 07:06:28', 'blocks'),
(40, '2013-11-19 07:06:28', '2013-11-19 07:06:29', 'stacks'),
(41, '2013-11-19 07:06:29', '2013-11-19 07:06:29', 'permissions'),
(42, '2013-11-19 07:06:30', '2013-11-19 07:06:32', 'list'),
(43, '2013-11-19 07:06:32', '2013-11-19 07:06:33', 'types'),
(44, '2013-11-19 07:06:33', '2013-11-19 07:06:34', 'extend'),
(45, '2013-11-19 07:06:34', '2013-11-19 07:06:38', 'news'),
(46, '2013-11-19 07:06:38', '2013-11-19 07:06:39', 'install'),
(47, '2013-11-19 07:06:39', '2013-11-19 07:06:40', 'update'),
(48, '2013-11-19 07:06:41', '2013-11-19 07:06:42', 'connect'),
(49, '2013-11-19 07:06:43', '2013-11-19 07:06:44', 'themes'),
(50, '2013-11-19 07:06:44', '2013-11-19 07:06:44', 'add-ons'),
(51, '2013-11-19 07:06:45', '2013-11-19 07:06:45', 'system'),
(52, '2013-11-19 07:06:45', '2013-11-19 07:06:46', 'basics'),
(53, '2013-11-19 07:06:46', '2013-11-19 07:06:46', 'site_name'),
(54, '2013-11-19 07:06:46', '2013-11-19 07:06:46', 'icons'),
(55, '2013-11-19 07:06:46', '2013-11-19 07:06:47', 'editor'),
(56, '2013-11-19 07:06:47', '2013-11-19 07:06:48', 'multilingual'),
(57, '2013-11-19 07:06:48', '2013-11-19 07:06:49', 'timezone'),
(58, '2013-11-19 07:06:50', '2013-11-19 07:06:50', 'interface'),
(59, '2013-11-19 07:06:50', '2013-11-19 07:06:51', 'seo'),
(60, '2013-11-19 07:06:51', '2013-11-19 07:06:52', 'urls'),
(61, '2013-11-19 07:06:52', '2013-11-19 07:06:53', 'bulk_seo_tool'),
(62, '2013-11-19 07:06:54', '2013-11-19 07:06:55', 'tracking_codes'),
(63, '2013-11-19 07:06:55', '2013-11-19 07:06:56', 'excluded'),
(64, '2013-11-19 07:06:57', '2013-11-19 07:06:58', 'statistics'),
(65, '2013-11-19 07:06:58', '2013-11-19 07:06:59', 'search_index'),
(66, '2013-11-19 07:07:01', '2013-11-19 07:07:02', 'optimization'),
(67, '2013-11-19 07:07:02', '2013-11-19 07:07:03', 'cache'),
(68, '2013-11-19 07:07:03', '2013-11-19 07:07:03', 'clear_cache'),
(69, '2013-11-19 07:07:03', '2013-11-19 07:07:04', 'jobs'),
(70, '2013-11-19 07:07:04', '2013-11-19 07:07:04', 'permissions'),
(71, '2013-11-19 07:07:04', '2013-11-19 07:07:04', 'site'),
(72, '2013-11-19 07:07:05', '2013-11-19 07:07:05', 'files'),
(73, '2013-11-19 07:07:05', '2013-11-19 07:07:05', 'file_types'),
(74, '2013-11-19 07:07:06', '2013-11-19 07:07:06', 'tasks'),
(75, '2013-11-19 07:07:06', '2013-11-19 07:07:06', 'users'),
(76, '2013-11-19 07:07:07', '2013-11-19 07:07:07', 'advanced'),
(77, '2013-11-19 07:07:07', '2013-11-19 07:07:08', 'ip_blacklist'),
(78, '2013-11-19 07:07:09', '2013-11-19 07:07:09', 'captcha'),
(79, '2013-11-19 07:07:09', '2013-11-19 07:07:11', 'antispam'),
(80, '2013-11-19 07:07:11', '2013-11-19 07:07:15', 'maintenance_mode'),
(81, '2013-11-19 07:07:15', '2013-11-19 07:07:16', 'registration'),
(82, '2013-11-19 07:07:17', '2013-11-19 07:07:18', 'postlogin'),
(83, '2013-11-19 07:07:18', '2013-11-19 07:07:19', 'profiles'),
(84, '2013-11-19 07:07:19', '2013-11-19 07:07:20', 'public_registration'),
(85, '2013-11-19 07:07:21', '2013-11-19 07:07:22', 'mail'),
(86, '2013-11-19 07:07:23', '2013-11-19 07:07:23', 'method'),
(87, '2013-11-19 07:07:24', '2013-11-19 07:07:24', 'importers'),
(88, '2013-11-19 07:07:26', '2013-11-19 07:07:28', 'attributes'),
(89, '2013-11-19 07:07:29', '2013-11-19 07:07:29', 'sets'),
(90, '2013-11-19 07:07:30', '2013-11-19 07:07:31', 'types'),
(91, '2013-11-19 07:07:31', '2013-11-19 07:07:33', 'environment'),
(92, '2013-11-19 07:07:33', '2013-11-19 07:07:34', 'info'),
(93, '2013-11-19 07:07:34', '2013-11-19 07:07:35', 'debug'),
(94, '2013-11-19 07:07:36', '2013-11-19 07:07:37', 'logging'),
(95, '2013-11-19 07:07:37', '2013-11-19 07:07:42', 'file_storage_locations'),
(96, '2013-11-19 07:07:43', '2013-11-19 07:07:46', 'proxy'),
(97, '2013-11-19 07:07:47', '2013-11-19 07:07:51', 'backup_restore'),
(98, '2013-11-19 07:07:52', '2013-11-19 07:07:53', 'backup'),
(99, '2013-11-19 07:07:53', '2013-11-19 07:07:54', 'update'),
(100, '2013-11-19 07:07:54', '2013-11-19 07:07:55', 'database'),
(101, '2013-11-19 07:07:55', '2013-11-19 07:07:55', 'composer'),
(102, '2013-11-19 07:07:56', '2013-11-19 07:07:56', NULL),
(103, '2013-11-19 07:07:56', '2013-11-19 07:07:56', NULL),
(104, '2013-11-19 07:07:56', '2013-11-19 07:07:56', NULL),
(105, '2013-11-19 07:07:57', '2013-11-19 07:07:57', 'home'),
(106, '2013-11-19 07:07:57', '2013-11-19 07:07:58', 'welcome'),
(107, '2013-11-19 07:08:58', '2013-11-19 07:08:59', '!drafts'),
(108, '2013-11-19 07:08:59', '2013-11-19 07:09:00', '!trash'),
(109, '2013-11-19 07:09:01', '2013-11-19 07:09:01', '!stacks'),
(110, '2013-11-19 07:09:02', '2013-11-19 07:09:07', 'login'),
(111, '2013-11-19 07:09:08', '2013-11-19 07:09:10', 'register'),
(112, '2013-11-19 07:09:10', '2013-11-19 07:09:11', 'profile'),
(113, '2013-11-19 07:09:12', '2013-11-19 07:09:13', 'edit'),
(114, '2013-11-19 07:09:14', '2013-11-19 07:09:15', 'avatar'),
(115, '2013-11-19 07:09:16', '2013-11-19 07:09:18', 'messages'),
(116, '2013-11-19 07:09:19', '2013-11-19 07:09:19', 'friends'),
(117, '2013-11-19 07:09:20', '2013-11-19 07:09:20', 'page_not_found'),
(118, '2013-11-19 07:09:21', '2013-11-19 07:09:21', 'page_forbidden'),
(119, '2013-11-19 07:09:21', '2013-11-19 07:09:22', 'download_file'),
(120, '2013-11-19 07:09:22', '2013-11-19 07:09:23', 'members'),
(121, '2013-11-19 07:09:24', '2013-11-19 07:09:24', NULL),
(122, '2013-11-19 07:43:33', '2013-11-19 07:43:33', NULL),
(123, '2013-11-19 11:09:43', '2013-11-19 11:11:51', 'fusszeile'),
(124, '2013-11-19 11:35:43', '2013-12-11 10:54:35', 'ueberuns'),
(125, '2013-11-19 11:36:17', '2013-12-11 10:52:18', 'produktion'),
(126, '2013-11-19 11:36:44', '2013-12-11 08:57:11', 'kontakt');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CollectionSearchIndexAttributes`
--

CREATE TABLE IF NOT EXISTS `CollectionSearchIndexAttributes` (
  `cID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` text,
  `ak_meta_description` text,
  `ak_meta_keywords` text,
  `ak_icon_dashboard` text,
  `ak_exclude_nav` tinyint(4) DEFAULT '0',
  `ak_exclude_page_list` tinyint(4) DEFAULT '0',
  `ak_header_extra_content` text,
  `ak_exclude_search_index` tinyint(4) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `CollectionSearchIndexAttributes`
--

INSERT INTO `CollectionSearchIndexAttributes` (`cID`, `ak_meta_title`, `ak_meta_description`, `ak_meta_keywords`, `ak_icon_dashboard`, `ak_exclude_nav`, `ak_exclude_page_list`, `ak_header_extra_content`, `ak_exclude_search_index`, `ak_exclude_sitemapxml`) VALUES
(1, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0),
(3, NULL, NULL, 'blog, blogging', 'icon-book', 0, 0, NULL, 0, 0),
(4, NULL, NULL, 'new blog, write blog, blogging', 'icon-pencil', 0, 0, NULL, 0, 0),
(5, NULL, NULL, 'blog drafts,composer', 'icon-book', 0, 0, NULL, 0, 0),
(6, NULL, NULL, 'pages, add page, delete page, copy, move, alias', NULL, 0, 0, NULL, 0, 0),
(7, NULL, NULL, 'pages, add page, delete page, copy, move, alias', 'icon-home', 0, 0, NULL, 0, 0),
(8, NULL, NULL, 'pages, add page, delete page, copy, move, alias, bulk', 'icon-road', 0, 0, NULL, 0, 0),
(9, NULL, NULL, 'find page, search page, search, find, pages, sitemap', 'icon-search', 0, 0, NULL, 0, 0),
(11, NULL, NULL, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', 'icon-picture', 0, 0, NULL, 0, 0),
(12, NULL, NULL, 'file, file attributes, title, attribute, description, rename', 'icon-cog', 0, 0, NULL, 0, 0),
(13, NULL, NULL, 'files, category, categories', 'icon-list-alt', 0, 0, NULL, 0, 0),
(14, NULL, NULL, 'new file set', 'icon-plus-sign', 1, 0, NULL, 0, 0),
(15, NULL, NULL, 'users, groups, people, find, delete user, remove user, change password, password', NULL, 0, 0, NULL, 0, 0),
(16, NULL, NULL, 'find, search, people, delete user, remove user, change password, password', 'icon-user', 0, 0, NULL, 0, 0),
(17, NULL, NULL, 'user, group, people, permissions, access, expire', 'icon-globe', 0, 0, NULL, 0, 0),
(18, NULL, NULL, 'user attributes, user data, gather data, registration data', 'icon-cog', 0, 0, NULL, 0, 0),
(19, NULL, NULL, 'new user, create', 'icon-plus-sign', 1, 0, NULL, 0, 0),
(20, NULL, NULL, 'new user group, new group, group, create', 'icon-plus', 1, 0, NULL, 0, 0),
(21, NULL, NULL, 'group set', 'icon-list', 0, 0, NULL, 0, 0),
(22, NULL, NULL, 'forms, log, error, email, mysql, exception, survey', NULL, 0, 0, NULL, 0, 0),
(23, NULL, NULL, 'hits, pageviews, visitors, activity', 'icon-signal', 0, 0, NULL, 0, 0),
(24, NULL, NULL, 'forms, questions, response, data', 'icon-briefcase', 0, 0, NULL, 0, 0),
(25, NULL, NULL, 'questions, quiz, response', 'icon-tasks', 0, 0, NULL, 0, 0),
(26, NULL, NULL, 'forms, log, error, email, mysql, exception, survey, history', 'icon-time', 0, 0, NULL, 0, 0),
(28, NULL, NULL, 'new theme, theme, active theme, change theme, template, css', 'icon-font', 0, 0, NULL, 0, 0),
(29, NULL, NULL, 'theme', NULL, 0, 0, NULL, 0, 0),
(30, NULL, NULL, 'page types', NULL, 0, 0, NULL, 0, 0),
(31, NULL, NULL, 'custom theme, change theme, custom css, css', NULL, 0, 0, NULL, 0, 0),
(32, NULL, NULL, 'page type defaults, global block, global area, starter, template', 'icon-file', 0, 0, NULL, 0, 0),
(34, NULL, NULL, 'page attributes, custom', 'icon-cog', 0, 0, NULL, 0, 0),
(35, NULL, NULL, 'single, page, custom, application', 'icon-wrench', 0, 0, NULL, 0, 0),
(36, NULL, NULL, 'add workflow, remove workflow', NULL, 0, 0, NULL, 0, 0),
(37, NULL, NULL, NULL, 'icon-list', 0, 0, NULL, 0, 0),
(38, NULL, NULL, NULL, 'icon-user', 0, 0, NULL, 0, 0),
(40, NULL, NULL, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', 'icon-th', 0, 0, NULL, 0, 0),
(41, NULL, NULL, NULL, 'icon-lock', 0, 0, NULL, 0, 0),
(42, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0),
(43, NULL, NULL, 'block, refresh, custom', 'icon-wrench', 0, 0, NULL, 0, 0),
(44, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0),
(45, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0),
(46, NULL, NULL, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', NULL, 0, 0, NULL, 0, 0),
(47, NULL, NULL, 'update, upgrade', NULL, 0, 0, NULL, 0, 0),
(48, NULL, NULL, 'concrete5.org, my account, marketplace', NULL, 0, 0, NULL, 0, 0),
(49, NULL, NULL, 'buy theme, new theme, marketplace, template', NULL, 0, 0, NULL, 0, 0),
(50, NULL, NULL, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', NULL, 0, 0, NULL, 0, 0),
(51, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0),
(53, NULL, NULL, 'website name, title', NULL, 0, 0, NULL, 0, 0),
(54, NULL, NULL, 'logo, favicon, iphone, icon, bookmark', NULL, 0, 0, NULL, 0, 0),
(55, NULL, NULL, 'tinymce, content block, fonts, editor, tinymce, content, overlay', NULL, 0, 0, NULL, 0, 0),
(56, NULL, NULL, 'translate, translation, internationalization, multilingual, translate', NULL, 0, 0, NULL, 0, 0),
(57, NULL, NULL, 'timezone, profile, locale', NULL, 0, 0, NULL, 0, 0),
(58, NULL, NULL, 'interface, quick nav, dashboard background, background image', NULL, 0, 0, NULL, 0, 0),
(60, NULL, NULL, 'vanity, pretty url, seo, pageview, view', NULL, 0, 0, NULL, 0, 0),
(61, NULL, NULL, 'bulk, seo, change keywords, engine, optimization, search', NULL, 0, 0, NULL, 0, 0),
(62, NULL, NULL, 'traffic, statistics, google analytics, quant, pageviews, hits', NULL, 0, 0, NULL, 0, 0),
(63, NULL, NULL, 'pretty, slug', NULL, 0, 0, NULL, 0, 0),
(64, NULL, NULL, 'turn off statistics, tracking, statistics, pageviews, hits', NULL, 0, 0, NULL, 0, 0),
(65, NULL, NULL, 'configure search, site search, search option', NULL, 0, 0, NULL, 0, 0),
(67, NULL, NULL, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, 0, 0),
(68, NULL, NULL, 'cache option, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, 0, 0),
(69, NULL, NULL, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', NULL, 0, 0, NULL, 0, 0),
(71, NULL, NULL, 'editors, hide site, offline, private, public, access', NULL, 0, 0, NULL, 0, 0),
(72, NULL, NULL, 'file options, file manager, upload, modify', NULL, 0, 0, NULL, 0, 0),
(73, NULL, NULL, 'security, files, media, extension, manager, upload', NULL, 0, 0, NULL, 0, 0),
(74, NULL, NULL, 'security, actions, administrator, admin, package, marketplace, search', NULL, 0, 0, NULL, 0, 0),
(77, NULL, NULL, 'security, lock ip, lock out, block ip, address, restrict, access', NULL, 0, 0, NULL, 0, 0),
(78, NULL, NULL, 'security, registration', NULL, 0, 0, NULL, 0, 0),
(79, NULL, NULL, 'antispam, block spam, security', NULL, 0, 0, NULL, 0, 0),
(80, NULL, NULL, 'lock site, under construction, hide, hidden', NULL, 0, 0, NULL, 0, 0),
(82, NULL, NULL, 'profile, login, redirect, specific, dashboard, administrators', NULL, 0, 0, NULL, 0, 0),
(83, NULL, NULL, 'member profile, member page,community, forums, social, avatar', NULL, 0, 0, NULL, 0, 0),
(84, NULL, NULL, 'signup, new user, community', NULL, 0, 0, NULL, 0, 0),
(85, NULL, NULL, 'smtp, mail settings', NULL, 0, 0, NULL, 0, 0),
(86, NULL, NULL, 'email server, mail settings, mail configuration, external, internal', NULL, 0, 0, NULL, 0, 0),
(87, NULL, NULL, 'email server, mail settings, mail configuration, private message, message system, import, email, message', NULL, 0, 0, NULL, 0, 0),
(88, NULL, NULL, 'attribute configuration', NULL, 0, 0, NULL, 0, 0),
(89, NULL, NULL, 'attributes, sets', NULL, 0, 0, NULL, 0, 0),
(90, NULL, NULL, 'attributes, types', NULL, 0, 0, NULL, 0, 0),
(91, NULL, NULL, NULL, NULL, 0, 0, NULL, 1, 0),
(92, NULL, NULL, 'overrides, system info, debug, support,help', NULL, 0, 0, NULL, 0, 0),
(93, NULL, NULL, 'errors,exceptions, develop, support, help', NULL, 0, 0, NULL, 0, 0),
(94, NULL, NULL, 'email, logging, logs, smtp, pop, errors, mysql, errors, log', NULL, 0, 0, NULL, 0, 0),
(95, NULL, NULL, 'security, alternate storage, hide files', NULL, 0, 0, NULL, 0, 0),
(96, NULL, NULL, 'network, proxy server', NULL, 0, 0, NULL, 0, 0),
(97, NULL, NULL, 'export, backup, database, sql, mysql, encryption, restore', NULL, 0, 0, NULL, 0, 0),
(99, NULL, NULL, 'upgrade, new version, update', NULL, 0, 0, NULL, 0, 0),
(100, NULL, NULL, 'export, database, xml, starting, points, schema, refresh, custom, tables', NULL, 0, 0, NULL, 0, 0),
(105, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0),
(106, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0),
(123, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0),
(124, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0),
(125, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0),
(126, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CollectionVersionAreaLayouts`
--

CREATE TABLE IF NOT EXISTS `CollectionVersionAreaLayouts` (
`cvalID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `cvID` int(10) unsigned DEFAULT '0',
  `arHandle` varchar(255) DEFAULT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) DEFAULT '1000',
  `areaNameNumber` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CollectionVersionAreaStyles`
--

CREATE TABLE IF NOT EXISTS `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CollectionVersionBlocks`
--

CREATE TABLE IF NOT EXISTS `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `CollectionVersionBlocks`
--

INSERT INTO `CollectionVersionBlocks` (`cID`, `cvID`, `bID`, `arHandle`, `cbDisplayOrder`, `isOriginal`, `cbOverrideAreaPermissions`, `cbIncludeAll`) VALUES
(1, 3, 14, 'Inhalt-Block', 0, 1, 0, 0),
(1, 5, 15, 'Inhalt-Block', 0, 1, 0, 0),
(1, 6, 16, 'Inhalt-Block', 0, 1, 0, 0),
(1, 6, 17, 'Inhalt-Block', 1, 1, 0, 0),
(1, 7, 16, 'Inhalt-Block', 0, 0, 0, 0),
(1, 7, 17, 'Inhalt-Block', 1, 0, 0, 0),
(1, 7, 19, 'Fusszeile', 0, 1, 0, 0),
(1, 8, 16, 'Inhalt-Block', 2, 0, 0, 0),
(1, 8, 19, 'Fusszeile', 0, 0, 0, 0),
(1, 8, 23, 'Inhalt-Block', 1, 1, 0, 0),
(1, 9, 16, 'Inhalt-Block', 1, 0, 0, 0),
(1, 9, 19, 'Fusszeile', 0, 0, 0, 0),
(1, 9, 24, 'Inhalt-Block', 0, 1, 0, 0),
(1, 10, 16, 'Inhalt-Block', 1, 0, 0, 0),
(1, 10, 19, 'Fusszeile', 0, 0, 0, 0),
(1, 10, 25, 'Inhalt-Block', 0, 1, 0, 0),
(1, 11, 16, 'Inhalt-Block', 1, 0, 0, 0),
(1, 11, 19, 'Fusszeile', 0, 0, 0, 0),
(1, 11, 26, 'Inhalt-Block', 0, 1, 0, 0),
(1, 12, 16, 'Inhalt-Block', 1, 0, 0, 0),
(1, 12, 19, 'Fusszeile', 0, 0, 0, 0),
(1, 12, 27, 'Inhalt-Block', 0, 1, 0, 0),
(1, 13, 16, 'Inhalt-Block', 1, 0, 0, 0),
(1, 13, 19, 'Fusszeile', 0, 0, 0, 0),
(1, 13, 28, 'Inhalt-Block', 0, 1, 0, 0),
(1, 14, 16, 'Inhalt-Block', 1, 0, 0, 0),
(1, 14, 19, 'Fusszeile', 0, 0, 0, 0),
(1, 14, 29, 'Inhalt-Block', 0, 1, 0, 0),
(1, 15, 16, 'Inhalt-Block', 2, 0, 0, 0),
(1, 15, 19, 'Fusszeile', 0, 0, 0, 0),
(1, 15, 30, 'Inhalt-Block', 1, 1, 0, 0),
(1, 16, 19, 'Fusszeile', 0, 0, 0, 0),
(1, 16, 30, 'Inhalt-Block', 0, 0, 0, 0),
(1, 16, 31, 'Inhalt-Block', 2, 1, 0, 0),
(1, 17, 19, 'Fusszeile', 0, 0, 0, 0),
(1, 17, 30, 'Inhalt-Block', 0, 0, 0, 0),
(1, 17, 32, 'Inhalt-Block', 2, 1, 0, 0),
(1, 18, 19, 'Fusszeile', 0, 0, 0, 0),
(1, 18, 30, 'Inhalt-Block', 0, 0, 0, 0),
(1, 18, 33, 'Inhalt-Block', 2, 1, 0, 0),
(1, 19, 19, 'Fusszeile', 0, 0, 0, 0),
(1, 19, 33, 'Inhalt-Block', 1, 0, 0, 0),
(1, 19, 41, 'Inhalt-Block', 2, 1, 0, 0),
(1, 20, 19, 'Fusszeile', 0, 0, 0, 0),
(1, 20, 33, 'Inhalt-Block', 1, 0, 0, 0),
(1, 20, 42, 'Inhalt-Block', 0, 1, 0, 0),
(1, 21, 19, 'Fusszeile', 0, 0, 0, 0),
(1, 21, 33, 'Inhalt-Block', 1, 0, 0, 0),
(1, 21, 43, 'Inhalt-Block', 0, 1, 0, 0),
(1, 22, 19, 'Fusszeile', 0, 0, 0, 0),
(1, 22, 33, 'Inhalt-Block', 2, 0, 0, 0),
(1, 22, 44, 'Inhalt-Block', 1, 1, 0, 0),
(105, 1, 6, 'Primary', 0, 1, 0, 0),
(105, 1, 7, 'Primary', 1, 1, 0, 0),
(105, 1, 8, 'Secondary 1', 0, 1, 0, 0),
(105, 1, 9, 'Secondary 2', 0, 1, 0, 0),
(105, 1, 10, 'Secondary 3', 0, 1, 0, 0),
(105, 1, 11, 'Secondary 4', 0, 1, 0, 0),
(105, 1, 12, 'Secondary 5', 0, 1, 0, 0),
(106, 1, 1, 'Header', 0, 1, 0, 0),
(106, 1, 2, 'Column 1', 0, 1, 0, 0),
(106, 1, 3, 'Column 2', 0, 1, 0, 0),
(106, 1, 4, 'Column 3', 0, 1, 0, 0),
(106, 1, 5, 'Column 4', 0, 1, 0, 0),
(123, 2, 18, 'Main', 0, 1, 0, 0),
(124, 3, 20, 'Fusszeile', 0, 1, 0, 0),
(124, 4, 20, 'Fusszeile', 0, 0, 0, 0),
(124, 4, 34, 'Inhalt-Block', 0, 1, 0, 0),
(124, 5, 20, 'Fusszeile', 0, 0, 0, 0),
(124, 5, 34, 'Inhalt-Block', 1, 0, 0, 0),
(124, 5, 75, 'Inhalt-Block', 0, 1, 0, 0),
(124, 6, 20, 'Fusszeile', 0, 0, 0, 0),
(124, 6, 34, 'Inhalt-Block', 1, 0, 0, 0),
(124, 6, 76, 'Inhalt-Block', 0, 1, 0, 0),
(125, 2, 21, 'Fusszeile', 0, 1, 0, 0),
(125, 3, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 3, 35, 'Inhalt-Block', 0, 1, 0, 0),
(125, 4, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 4, 36, 'Inhalt-Block', 0, 1, 0, 0),
(125, 5, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 5, 36, 'Inhalt-Block', 0, 0, 0, 0),
(125, 5, 45, 'Inhalt-Block', 1, 1, 0, 0),
(125, 6, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 6, 36, 'Inhalt-Block', 0, 0, 0, 0),
(125, 6, 46, 'Inhalt-Block', 1, 1, 0, 0),
(125, 7, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 7, 36, 'Inhalt-Block', 0, 0, 0, 0),
(125, 7, 47, 'Inhalt-Block', 1, 1, 0, 0),
(125, 8, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 8, 36, 'Inhalt-Block', 0, 0, 0, 0),
(125, 8, 48, 'Inhalt-Block', 1, 1, 0, 0),
(125, 9, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 9, 36, 'Inhalt-Block', 0, 0, 0, 0),
(125, 9, 49, 'Inhalt-Block', 1, 1, 0, 0),
(125, 10, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 10, 36, 'Inhalt-Block', 0, 0, 0, 0),
(125, 10, 50, 'Inhalt-Block', 1, 1, 0, 0),
(125, 11, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 11, 36, 'Inhalt-Block', 0, 0, 0, 0),
(125, 11, 51, 'Inhalt-Block', 1, 1, 0, 0),
(125, 12, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 12, 36, 'Inhalt-Block', 0, 0, 0, 0),
(125, 12, 52, 'Inhalt-Block', 1, 1, 0, 0),
(125, 13, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 13, 36, 'Inhalt-Block', 1, 0, 0, 0),
(125, 13, 52, 'Inhalt-Block', 0, 0, 0, 0),
(125, 14, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 14, 36, 'Inhalt-Block', 1, 0, 0, 0),
(125, 14, 53, 'Inhalt-Block', 0, 1, 0, 0),
(125, 15, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 15, 36, 'Inhalt-Block', 1, 0, 0, 0),
(125, 15, 54, 'Inhalt-Block', 0, 1, 0, 0),
(125, 16, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 16, 36, 'Inhalt-Block', 1, 0, 0, 0),
(125, 16, 55, 'Inhalt-Block', 0, 1, 0, 0),
(125, 17, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 17, 36, 'Inhalt-Block', 1, 0, 0, 0),
(125, 17, 56, 'Inhalt-Block', 0, 1, 0, 0),
(125, 18, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 18, 36, 'Inhalt-Block', 1, 0, 0, 0),
(125, 18, 57, 'Inhalt-Block', 0, 1, 0, 0),
(125, 19, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 19, 36, 'Inhalt-Block', 1, 0, 0, 0),
(125, 19, 58, 'Inhalt-Block', 0, 1, 0, 0),
(125, 20, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 20, 36, 'Inhalt-Block', 1, 0, 0, 0),
(125, 20, 59, 'Inhalt-Block', 0, 1, 0, 0),
(125, 21, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 21, 36, 'Inhalt-Block', 1, 0, 0, 0),
(125, 21, 60, 'Inhalt-Block', 0, 1, 0, 0),
(125, 22, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 22, 36, 'Inhalt-Block', 1, 0, 0, 0),
(125, 22, 61, 'Inhalt-Block', 0, 1, 0, 0),
(125, 23, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 23, 61, 'Inhalt-Block', 0, 0, 0, 0),
(125, 23, 62, 'Inhalt-Block', 1, 1, 0, 0),
(125, 24, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 24, 62, 'Inhalt-Block', 1, 0, 0, 0),
(125, 24, 63, 'Inhalt-Block', 0, 1, 0, 0),
(125, 25, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 25, 62, 'Inhalt-Block', 1, 0, 0, 0),
(125, 25, 64, 'Inhalt-Block', 2, 1, 0, 0),
(125, 26, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 26, 62, 'Inhalt-Block', 1, 0, 0, 0),
(125, 26, 65, 'Inhalt-Block', 0, 1, 0, 0),
(125, 27, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 27, 62, 'Inhalt-Block', 1, 0, 0, 0),
(125, 27, 66, 'Inhalt-Block', 0, 1, 0, 0),
(125, 28, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 28, 62, 'Inhalt-Block', 1, 0, 0, 0),
(125, 28, 67, 'Inhalt-Block', 0, 1, 0, 0),
(125, 29, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 29, 62, 'Inhalt-Block', 1, 0, 0, 0),
(125, 29, 68, 'Inhalt-Block', 0, 1, 0, 0),
(125, 30, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 30, 62, 'Inhalt-Block', 1, 0, 0, 0),
(125, 30, 69, 'Inhalt-Block', 0, 1, 0, 0),
(125, 31, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 31, 62, 'Inhalt-Block', 1, 0, 0, 0),
(125, 31, 70, 'Inhalt-Block', 0, 1, 0, 0),
(125, 32, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 32, 62, 'Inhalt-Block', 1, 0, 0, 0),
(125, 32, 71, 'Inhalt-Block', 0, 1, 0, 0),
(125, 33, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 33, 62, 'Inhalt-Block', 1, 0, 0, 0),
(125, 33, 72, 'Inhalt-Block', 0, 1, 0, 0),
(125, 34, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 34, 62, 'Inhalt-Block', 1, 0, 0, 0),
(125, 34, 73, 'Inhalt-Block', 0, 1, 0, 0),
(125, 35, 21, 'Fusszeile', 0, 0, 0, 0),
(125, 35, 62, 'Inhalt-Block', 1, 0, 0, 0),
(125, 35, 74, 'Inhalt-Block', 0, 1, 0, 0),
(126, 2, 22, 'Fusszeile', 0, 1, 0, 0),
(126, 3, 22, 'Fusszeile', 0, 0, 0, 0),
(126, 3, 37, 'Inhalt-Block', 0, 1, 0, 0),
(126, 3, 38, 'Inhalt-Block', 1, 1, 0, 0),
(126, 4, 22, 'Fusszeile', 0, 0, 0, 0),
(126, 4, 37, 'Inhalt-Block', 0, 0, 0, 0),
(126, 4, 39, 'Inhalt-Block', 2, 1, 0, 0),
(126, 4, 40, 'Inhalt-Block', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CollectionVersionBlocksOutputCache`
--

CREATE TABLE IF NOT EXISTS `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `btCachedBlockOutput` longtext,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `CollectionVersionBlocksOutputCache`
--

INSERT INTO `CollectionVersionBlocksOutputCache` (`cID`, `cvID`, `bID`, `arHandle`, `btCachedBlockOutput`, `btCachedBlockOutputExpires`) VALUES
(1, 22, 18, 'Main', '<p>SULMAG Maschinenbau AG • Bahnhofstrasse 4 • 9536 Schwerzenbach • Tel. +41 (0)71 923 21 23 • <a title="E-Mail" href="mailto:info@sulmag.ch" target="_blank">info@sulmag.ch</a></p>', 1544525717),
(1, 22, 33, 'Inhalt-Block', '<h1>Willkommen bei der SULMAG Maschinenbau AG</h1>\r\n<p>Dienstleistungen rund um die Metallbearbeitung. Wir produzieren Maschinenbauteile ganz nach Ihren Wünschen. Wir bearbeiten alle Materialien in "fast" allen Grössen. Drehen, fräsen, hobeln, bohren, schweissen, etc. und dies alles aus einer Hand.</p>\r\n<p>Unsere Spezialitäten:</p>\r\n<ul>\r\n<li>Kleinserien</li>\r\n<li>Einzelteile</li>\r\n<li>Prototypen</li>\r\n</ul>\r\n<p>Finden Sie mehr heraus über uns und unsere Produktion auf den nächsten Seiten.</p>', 1544525717),
(1, 22, 44, 'Inhalt-Block', '<img border="0" class="ccm-image-block" alt="" src="/sulmag/files/5013/8675/4721/6sulmag.jpg" width="3500" height="955" />', 1544525717),
(124, 6, 18, 'Main', '<p>SULMAG Maschinenbau AG • Bahnhofstrasse 4 • 9536 Schwerzenbach • Tel. +41 (0)71 923 21 23 • <a title="E-Mail" href="mailto:info@sulmag.ch" target="_blank">info@sulmag.ch</a></p>', 1544525903),
(124, 6, 34, 'Inhalt-Block', '<h1>Über Uns</h1>\r\n<p>Die Sulmag Maschinenbau AG in Schwarzenbach versteht sich als Zulieferfirma der Energie-, Maschinenbau-, Lebensmittel-, Verpackungs-, Fahrzeug-, Entsorgungs-, sowie der Bauindustrie. Die Kernkompetenzen liegen in der spanabhebenden Bearbeitung von grossvolumigen Werkstücken. Mit einem flexiblem und motivierten Team von Fachleuten sind wir in der Lage, auch kurzfristig Ihre Wünsche zu erfüllen.</p>\r\n<p>1968    Gründungsjahr als Maschinenbau Sulgen AG in Sulgen.<br />1972    Umzug der Firma nach Schwarzenbach und Namensänderung in Sulmag Maschinenbau AG.</p>\r\n<p>Geschäftsführer:              Hr. A. Shala<br />Stv. Geschäftsführer:       Hr. W. Brändle</p>\r\n<p>Öffnungszeiten:<br />Bürozeiten, Mo. bis Do.:  07:30 bis 11:30; 13:30 bis 17:00<br />Bürozeiten, Fr.:                07:30 bis 11:30; 13:30 bis 16:30<br />Spedition, Mo. bis Do.:    07:00 bis 12:00; 13:00 bis 17:00<br />Spedition, Fr.:                  07:00 bis 12:00; 13:00 bis 16:30</p>', 1544525903),
(124, 6, 76, 'Inhalt-Block', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper76 = {\n\n	bID:76,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		//this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper76.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;}).hide();		\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+76+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/sulmag/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML='';\n		el.innerHTML=''<div><img src="''+imgURL+''" style="height: auto" ></div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper76.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(){\n\n	},\n	imgInfos:[\n				{\n				fileName:"1sulmag.jpg",\n				fullFilePath:"/sulmag/files/5613/8675/4704/1sulmag.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"/sulmag/files/5613/8675/4704/1sulmag.jpg",\n				groupSet:0,\n				imgHeight: ''300''\n			}\n		,			{\n				fileName:"2sulmag.jpg",\n				fullFilePath:"/sulmag/files/8113/8675/4707/2sulmag.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"/sulmag/files/8113/8675/4707/2sulmag.jpg",\n				groupSet:0,\n				imgHeight: ''300''\n			}\n		,			{\n				fileName:"5sulmag.jpg",\n				fullFilePath:"/sulmag/files/4413/8675/4717/5sulmag.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"/sulmag/files/4413/8675/4717/5sulmag.jpg",\n				groupSet:0,\n				imgHeight: ''300''\n			}\n		,			{\n				fileName:"4sulmag.jpg",\n				fullFilePath:"/sulmag/files/3713/8675/4712/4sulmag.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"/sulmag/files/3713/8675/4712/4sulmag.jpg",\n				groupSet:0,\n				imgHeight: ''300''\n			}\n		,			{\n				fileName:"3sulmag.jpg",\n				fullFilePath:"/sulmag/files/1213/8675/4709/3sulmag.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"/sulmag/files/1213/8675/4709/3sulmag.jpg",\n				groupSet:0,\n				imgHeight: ''300''\n			}\n			]\n}\n$(function(){ccmSlideShowHelper76.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display76" style="height: auto" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter76" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1544525903),
(125, 35, 18, 'Main', '<p>SULMAG Maschinenbau AG • Bahnhofstrasse 4 • 9536 Schwerzenbach • Tel. +41 (0)71 923 21 23 • <a title="E-Mail" href="mailto:info@sulmag.ch" target="_blank">info@sulmag.ch</a></p>', 1544525906),
(125, 35, 62, 'Inhalt-Block', '<h1>Produktion</h1>\r\n<p>Wir bieten Ihnendie Möglichkeit, Stangenmaterialien bis Ø 220mm, 260 x 150mm auf unseren <br />Bandsägeautomaten zuzuschneiden. Bis 4000mm Länge sind wir in der Lage, diese auch zu richten <br />(bis 16t Richtkraft).</p>\r\n<ul>\r\n<li>Hobeln: Hobelmaschine Waldrich Coburg Wir hobeln Ihre Werkstücke auch in Übergrössen. Max. zu bearbeitende Fläche L=5000mm, B=1640mm, H=1200mm</li>\r\n<li>Drehen: Spitzenweite normal: 4000 mm, Spitzenweite ausgezogen: 6000 mm, Spitzenhöhe: 500 mm, Durchgang über Bett: 1000 mm, Durchgang über Schlitten: 740 mm, Durchgang in Kröpfung: Ø 1500 mm / L=2000mm, Durchlass Hauptspindel: Ø 100 mm,Durchlass Hauptspindel: Ø 120 mm, Spitzenweite: 3000 mm</li>\r\n<li>Fräsen:   Vertikalfräsen: Fläche: 350 x 1250 mm, Quer: 250 mm, Längs: 850 mm, Horizontalbohrwerk: Fläche: 1240 x 1240 mm, Quer:1570 mm, Vertikal: 1100 mm</li>\r\n<li>Bohren:  Horizontal: WZ-Aufnahme: ISO 50, Fläche: 1240 x 1240 mm, Quer: 1570 mm, Vertikal: 1100 mm, Vertikal: WZ-Aufnahme: MK 5, Fläche: 1250 x 1400 mm, Quer: 1450 mm, Längs: 1200 mm</li>\r\n<li>Schleifen: Flachschleifarbeiten können wir anbieten auf unserer; Diskusschleifmaschine "Stefor" 300 x 1000 mm Kleine Maschinen sind bei uns im Einsatz für das nachschleifen eigenen Werkzeuge</li>\r\n</ul>', 1544525906),
(125, 35, 74, 'Inhalt-Block', '\n<script type="text/javascript">\n//<![CDATA[\nvar ccmSlideShowHelper74 = {\n\n	bID:74,\n	imgNum:0,\n	\n	init:function(){\n		this.displayWrap=$(''#ccm-SlideshowBlock-display''+this.bID); \n		if(this.imgInfos.length==0){\n			//alert(''There are no images in this slideshow'');\n			return false;\n		}\n		var maxHeight=0;\n		for(var i=0;i<this.imgInfos.length;i++){\n			this.addImg(i);\n			if(maxHeight==0 || this.imgInfos[i].imgHeight > maxHeight)\n				maxHeight=this.imgInfos[i].imgHeight;\n		}\n		//this.displayWrap.css(''height'',maxHeight);\n\n		\n		//center images\n		for(var i=0;i<this.imgInfos.length;i++){ \n			if( this.imgInfos[i].imgHeight < maxHeight){\n				var t=((maxHeight - this.imgInfos[i].imgHeight)/2);\n				this.imgEls[i].css(''top'',t);\n			}\n		}\n		this.nextImg();\n	}, \n	nextImg:function(){ \n		if(this.imgNum>=this.imgInfos.length) this.imgNum=0;  \n		this.imgEls[this.imgNum].css(''opacity'',0);\n		this.imgEls[this.imgNum].css(''display'',''block'');\n		this.imgEls[this.imgNum].animate({opacity:1},\n			this.imgInfos[this.imgNum].fadeDuration*1000,'''',function(){ccmSlideShowHelper74.preparefadeOut()});\n		var prevNum=this.imgNum-1;\n		if(prevNum<0) prevNum=this.imgInfos.length-1;\n		if(this.imgInfos.length==1) return;\n		this.imgEls[prevNum].animate({opacity:0},this.imgInfos[this.imgNum].fadeDuration*800,function(){this.style.zIndex=1;}).hide();		\n	},\n	preparefadeOut:function(){\n		if(this.imgInfos.length==1) return;\n		var milisecDuration=parseInt(this.imgInfos[this.imgNum].duration)*1000;\n		this.imgEls[this.imgNum].css(''z-index'',2);\n		setTimeout(''ccmSlideShowHelper''+74+''.nextImg();'',milisecDuration);\n		this.imgNum++;\n	},\n	maxHeight:0,\n	imgEls:[],\n	addImg:function(num){\n		var el=document.createElement(''div'');\n		el.id="slideImgWrap"+num;\n		el.className="slideImgWrap"; \n		if(this.imgInfos[num].fullFilePath.length>0)\n			 imgURL=this.imgInfos[num].fullFilePath;\n		else imgURL=''/sulmag/files/''+this.imgInfos[num].fileName; \n		//el.innerHTML='';\n		el.innerHTML=''<div><img src="''+imgURL+''" style="height: auto" ></div>'';\n		//alert(imgURL);\n		if(this.imgInfos[num].url.length>0) {\n			//el.linkURL=this.imgInfos[num].url;\n			var clickEvent=''onclick="return ccmSlideShowHelper74.imgClick( this.href  );"'';\n			el.innerHTML=''<a href="''+this.imgInfos[num].url+''" ''+clickEvent+'' >''+el.innerHTML+''</a>'';			\n		}\n		el.style.display=''none'';\n		this.displayWrap.append(el);\n		var jqEl=$(el);\n		this.imgEls.push(jqEl);\n	},\n	imgClick:function(){\n\n	},\n	imgInfos:[\n				{\n				fileName:"5sulmag.jpg",\n				fullFilePath:"/sulmag/files/4413/8675/4717/5sulmag.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"/sulmag/files/4413/8675/4717/5sulmag.jpg",\n				groupSet:0,\n				imgHeight: ''300''\n			}\n		,			{\n				fileName:"4sulmag.jpg",\n				fullFilePath:"/sulmag/files/3713/8675/4712/4sulmag.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"/sulmag/files/3713/8675/4712/4sulmag.jpg",\n				groupSet:0,\n				imgHeight: ''300''\n			}\n		,			{\n				fileName:"3sulmag.jpg",\n				fullFilePath:"/sulmag/files/1213/8675/4709/3sulmag.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"/sulmag/files/1213/8675/4709/3sulmag.jpg",\n				groupSet:0,\n				imgHeight: ''300''\n			}\n		,			{\n				fileName:"2sulmag.jpg",\n				fullFilePath:"/sulmag/files/8113/8675/4707/2sulmag.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"/sulmag/files/8113/8675/4707/2sulmag.jpg",\n				groupSet:0,\n				imgHeight: ''300''\n			}\n		,			{\n				fileName:"1sulmag.jpg",\n				fullFilePath:"/sulmag/files/5613/8675/4704/1sulmag.jpg",\n				duration:5,\n				fadeDuration:2,		\n				url:"/sulmag/files/5613/8675/4704/1sulmag.jpg",\n				groupSet:0,\n				imgHeight: ''300''\n			}\n			]\n}\n$(function(){ccmSlideShowHelper74.init();}); \n//]]>\n</script>\n\n<div id="ccm-SlideshowBlock-display74" style="height: auto" class="ccm-SlideshowBlock-display">\n<div id="ccm-SlideshowBlock-heightSetter74" class="ccm-SlideshowBlock-heightSetter"></div>\n<div class="ccm-SlideshowBlock-clear" ></div>\n</div>\n', 1544525906),
(126, 4, 18, 'Main', '<p>SULMAG Maschinenbau AG • Bahnhofstrasse 4 • 9536 Schwerzenbach • Tel. +41 (0)71 923 21 23 • <a title="E-Mail" href="mailto:info@sulmag.ch" target="_blank">info@sulmag.ch</a></p>', 1544525910),
(126, 4, 37, 'Inhalt-Block', '<h1>Kontakt</h1>\r\n<p>SULMAG AG Maschinenbau<br /> Bahnhofstrasse 4<br /> 9536 Schwarzenbach</p>\r\n<p>Telefon: +41 71 923 21 23<br /> Fax: +41 71 923 21 94</p>\r\n<p>Email: <a href="mailto:info@sulmag.ch" target="_blank">info@sulmag.ch</a></p>', 1544525910),
(126, 4, 39, 'Inhalt-Block', '	\n		<div id="googleMapCanvas39" class="googleMapCanvas"></div>	\n', 1544525910),
(126, 4, 40, 'Inhalt-Block', '<h2>Karte</h2>', 1544525910);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CollectionVersionBlockStyles`
--

CREATE TABLE IF NOT EXISTS `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `CollectionVersionBlockStyles`
--

INSERT INTO `CollectionVersionBlockStyles` (`cID`, `cvID`, `bID`, `arHandle`, `csrID`) VALUES
(1, 6, 16, 'Inhalt-Block', 0),
(1, 7, 16, 'Inhalt-Block', 0),
(1, 7, 17, 'Inhalt-Block', 0),
(1, 9, 16, 'Inhalt-Block', 0),
(1, 9, 19, 'Fusszeile', 0),
(1, 9, 24, 'Inhalt-Block', 0),
(1, 10, 16, 'Inhalt-Block', 0),
(1, 10, 19, 'Fusszeile', 0),
(1, 10, 25, 'Inhalt-Block', 0),
(1, 11, 16, 'Inhalt-Block', 0),
(1, 11, 19, 'Fusszeile', 0),
(1, 11, 26, 'Inhalt-Block', 0),
(1, 12, 16, 'Inhalt-Block', 0),
(1, 12, 19, 'Fusszeile', 0),
(1, 12, 27, 'Inhalt-Block', 0),
(1, 13, 16, 'Inhalt-Block', 0),
(1, 13, 19, 'Fusszeile', 0),
(1, 13, 28, 'Inhalt-Block', 0),
(1, 14, 16, 'Inhalt-Block', 0),
(1, 14, 19, 'Fusszeile', 0),
(1, 14, 29, 'Inhalt-Block', 0),
(1, 16, 19, 'Fusszeile', 0),
(1, 16, 30, 'Inhalt-Block', 0),
(1, 16, 31, 'Inhalt-Block', 0),
(1, 17, 19, 'Fusszeile', 0),
(1, 17, 30, 'Inhalt-Block', 0),
(1, 17, 32, 'Inhalt-Block', 0),
(1, 18, 19, 'Fusszeile', 0),
(1, 18, 30, 'Inhalt-Block', 0),
(1, 18, 33, 'Inhalt-Block', 0),
(1, 19, 19, 'Fusszeile', 0),
(1, 19, 33, 'Inhalt-Block', 0),
(1, 21, 19, 'Fusszeile', 0),
(1, 21, 33, 'Inhalt-Block', 0),
(1, 21, 43, 'Inhalt-Block', 0),
(124, 4, 20, 'Fusszeile', 0),
(124, 6, 20, 'Fusszeile', 0),
(124, 6, 34, 'Inhalt-Block', 0),
(124, 6, 76, 'Inhalt-Block', 0),
(125, 3, 21, 'Fusszeile', 0),
(125, 4, 21, 'Fusszeile', 0),
(125, 4, 36, 'Inhalt-Block', 0),
(125, 5, 21, 'Fusszeile', 0),
(125, 5, 36, 'Inhalt-Block', 0),
(125, 6, 21, 'Fusszeile', 0),
(125, 6, 36, 'Inhalt-Block', 0),
(125, 6, 46, 'Inhalt-Block', 0),
(125, 7, 21, 'Fusszeile', 0),
(125, 7, 36, 'Inhalt-Block', 0),
(125, 7, 47, 'Inhalt-Block', 0),
(125, 8, 21, 'Fusszeile', 0),
(125, 8, 36, 'Inhalt-Block', 0),
(125, 8, 48, 'Inhalt-Block', 0),
(125, 9, 21, 'Fusszeile', 0),
(125, 9, 36, 'Inhalt-Block', 0),
(125, 9, 49, 'Inhalt-Block', 0),
(125, 10, 21, 'Fusszeile', 0),
(125, 10, 36, 'Inhalt-Block', 0),
(125, 10, 50, 'Inhalt-Block', 0),
(125, 11, 21, 'Fusszeile', 0),
(125, 11, 36, 'Inhalt-Block', 0),
(125, 11, 51, 'Inhalt-Block', 0),
(125, 12, 21, 'Fusszeile', 0),
(125, 12, 36, 'Inhalt-Block', 0),
(125, 12, 52, 'Inhalt-Block', 0),
(125, 14, 21, 'Fusszeile', 0),
(125, 14, 36, 'Inhalt-Block', 0),
(125, 14, 53, 'Inhalt-Block', 0),
(125, 15, 21, 'Fusszeile', 0),
(125, 15, 36, 'Inhalt-Block', 0),
(125, 15, 54, 'Inhalt-Block', 0),
(125, 16, 21, 'Fusszeile', 0),
(125, 16, 36, 'Inhalt-Block', 0),
(125, 16, 55, 'Inhalt-Block', 0),
(125, 17, 21, 'Fusszeile', 0),
(125, 17, 36, 'Inhalt-Block', 0),
(125, 17, 56, 'Inhalt-Block', 0),
(125, 18, 21, 'Fusszeile', 0),
(125, 18, 36, 'Inhalt-Block', 0),
(125, 18, 57, 'Inhalt-Block', 0),
(125, 19, 21, 'Fusszeile', 0),
(125, 19, 36, 'Inhalt-Block', 0),
(125, 19, 58, 'Inhalt-Block', 0),
(125, 20, 21, 'Fusszeile', 0),
(125, 20, 36, 'Inhalt-Block', 0),
(125, 20, 59, 'Inhalt-Block', 0),
(125, 21, 21, 'Fusszeile', 0),
(125, 21, 36, 'Inhalt-Block', 0),
(125, 21, 60, 'Inhalt-Block', 0),
(125, 22, 21, 'Fusszeile', 0),
(125, 22, 36, 'Inhalt-Block', 0),
(125, 22, 61, 'Inhalt-Block', 0),
(125, 23, 21, 'Fusszeile', 0),
(125, 23, 61, 'Inhalt-Block', 0),
(125, 23, 62, 'Inhalt-Block', 0),
(125, 24, 21, 'Fusszeile', 0),
(125, 24, 62, 'Inhalt-Block', 0),
(125, 24, 63, 'Inhalt-Block', 0),
(125, 25, 21, 'Fusszeile', 0),
(125, 25, 62, 'Inhalt-Block', 0),
(125, 27, 21, 'Fusszeile', 0),
(125, 27, 62, 'Inhalt-Block', 0),
(125, 27, 66, 'Inhalt-Block', 0),
(125, 28, 21, 'Fusszeile', 0),
(125, 28, 62, 'Inhalt-Block', 0),
(125, 28, 67, 'Inhalt-Block', 0),
(125, 29, 21, 'Fusszeile', 0),
(125, 29, 62, 'Inhalt-Block', 0),
(125, 29, 68, 'Inhalt-Block', 0),
(125, 30, 21, 'Fusszeile', 0),
(125, 30, 62, 'Inhalt-Block', 0),
(125, 30, 69, 'Inhalt-Block', 0),
(125, 31, 21, 'Fusszeile', 0),
(125, 31, 62, 'Inhalt-Block', 0),
(125, 31, 70, 'Inhalt-Block', 0),
(125, 32, 21, 'Fusszeile', 0),
(125, 32, 62, 'Inhalt-Block', 0),
(125, 32, 71, 'Inhalt-Block', 0),
(125, 33, 21, 'Fusszeile', 0),
(125, 33, 62, 'Inhalt-Block', 0),
(125, 33, 72, 'Inhalt-Block', 0),
(125, 34, 21, 'Fusszeile', 0),
(125, 34, 62, 'Inhalt-Block', 0),
(125, 34, 73, 'Inhalt-Block', 0),
(125, 35, 21, 'Fusszeile', 0),
(125, 35, 62, 'Inhalt-Block', 0),
(125, 35, 74, 'Inhalt-Block', 0),
(126, 3, 22, 'Fusszeile', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CollectionVersionRelatedEdits`
--

CREATE TABLE IF NOT EXISTS `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CollectionVersions`
--

CREATE TABLE IF NOT EXISTS `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text,
  `cvHandle` varchar(255) DEFAULT NULL,
  `cvDescription` text,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `CollectionVersions`
--

INSERT INTO `CollectionVersions` (`cID`, `cvID`, `cvName`, `cvHandle`, `cvDescription`, `cvDatePublic`, `cvDateCreated`, `cvComments`, `cvIsApproved`, `cvIsNew`, `cvAuthorUID`, `cvApproverUID`, `ptID`, `ctID`, `cvActivateDatetime`) VALUES
(1, 1, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-11-19 07:04:48', 'Initial Version', 0, 0, 1, NULL, 5, 4, NULL),
(1, 2, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-11-19 07:44:13', 'Neue Version 2', 0, 0, 1, 1, 5, 5, NULL),
(1, 3, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-11-19 10:17:42', 'Version 3', 0, 0, 1, 1, 5, 5, NULL),
(1, 4, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-11-19 10:29:32', 'Version 4', 0, 0, 1, 1, 5, 5, NULL),
(1, 5, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-11-19 10:29:48', 'Version 5', 0, 0, 1, 1, 5, 5, NULL),
(1, 6, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-11-19 10:39:43', 'Version 6', 0, 0, 1, 1, 5, 5, NULL),
(1, 7, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-11-19 11:12:04', 'Version 7', 0, 0, 1, 1, 5, 5, NULL),
(1, 8, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-11-27 10:07:17', 'Version 8', 0, 0, 1, 1, 5, 5, NULL),
(1, 9, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-11-29 07:33:25', 'Version 9', 0, 0, 1, 1, 5, 5, NULL),
(1, 10, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-11-29 07:34:33', 'Version 10', 0, 0, 1, 1, 5, 5, NULL),
(1, 11, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-11-29 07:35:46', 'Version 11', 0, 0, 1, 1, 5, 5, NULL),
(1, 12, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-11-29 07:36:30', 'Version 12', 0, 0, 1, 1, 5, 5, NULL),
(1, 13, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-11-29 07:37:52', 'Version 13', 0, 0, 1, 1, 5, 5, NULL),
(1, 14, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-11-29 07:38:27', 'Version 14', 0, 0, 1, 1, 5, 5, NULL),
(1, 15, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-11-29 07:38:57', 'Version 15', 0, 0, 1, 1, 5, 5, NULL),
(1, 16, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-12-11 08:20:17', 'Version 16', 0, 0, 1, 1, 5, 5, NULL),
(1, 17, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-12-11 08:22:05', 'Version 17', 0, 0, 1, 1, 5, 5, NULL),
(1, 18, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-12-11 08:23:31', 'Version 18', 0, 0, 1, 1, 5, 5, NULL),
(1, 19, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-12-11 09:37:49', 'Version 19', 0, 0, 1, 1, 5, 5, NULL),
(1, 20, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-12-11 09:40:54', 'Version 20', 0, 0, 1, 1, 5, 5, NULL),
(1, 21, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-12-11 09:47:16', 'Version 21', 0, 0, 1, 1, 5, 5, NULL),
(1, 22, 'Home', 'home', '', '2013-11-19 07:04:48', '2013-12-11 09:48:33', 'Version 22', 1, 0, 1, 1, 5, 5, NULL),
(2, 1, 'Dashboard', 'dashboard', '', '2013-11-19 07:05:27', '2013-11-19 07:05:27', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(3, 1, 'Composer', 'composer', 'Write for your site.', '2013-11-19 07:05:36', '2013-11-19 07:05:36', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(4, 1, 'Write', 'write', '', '2013-11-19 07:05:36', '2013-11-19 07:05:36', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(5, 1, 'Drafts', 'drafts', '', '2013-11-19 07:05:36', '2013-11-19 07:05:36', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(6, 1, 'Sitemap', 'sitemap', 'Whole world at a glance.', '2013-11-19 07:05:37', '2013-11-19 07:05:37', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(7, 1, 'Full Sitemap', 'full', '', '2013-11-19 07:05:37', '2013-11-19 07:05:37', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(8, 1, 'Flat View', 'explore', '', '2013-11-19 07:05:38', '2013-11-19 07:05:38', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(9, 1, 'Page Search', 'search', '', '2013-11-19 07:05:38', '2013-11-19 07:05:38', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(10, 1, 'Files', 'files', 'All documents and images.', '2013-11-19 07:05:39', '2013-11-19 07:05:39', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(11, 1, 'File Manager', 'search', '', '2013-11-19 07:05:39', '2013-11-19 07:05:39', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(12, 1, 'Attributes', 'attributes', '', '2013-11-19 07:05:40', '2013-11-19 07:05:40', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(13, 1, 'File Sets', 'sets', '', '2013-11-19 07:05:41', '2013-11-19 07:05:41', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(14, 1, 'Add File Set', 'add_set', '', '2013-11-19 07:05:41', '2013-11-19 07:05:41', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(15, 1, 'Members', 'users', 'Add and manage the user accounts and groups on your website.', '2013-11-19 07:05:42', '2013-11-19 07:05:42', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(16, 1, 'Search Users', 'search', '', '2013-11-19 07:05:44', '2013-11-19 07:05:44', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(17, 1, 'User Groups', 'groups', '', '2013-11-19 07:05:47', '2013-11-19 07:05:47', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(18, 1, 'Attributes', 'attributes', '', '2013-11-19 07:05:49', '2013-11-19 07:05:49', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(19, 1, 'Add User', 'add', '', '2013-11-19 07:05:50', '2013-11-19 07:05:50', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(20, 1, 'Add Group', 'add_group', '', '2013-11-19 07:05:52', '2013-11-19 07:05:52', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(21, 1, 'Group Sets', 'group_sets', '', '2013-11-19 07:05:53', '2013-11-19 07:05:53', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(22, 1, 'Reports', 'reports', 'Get data from forms and logs.', '2013-11-19 07:05:55', '2013-11-19 07:05:55', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(23, 1, 'Statistics', 'statistics', 'View your site activity.', '2013-11-19 07:05:57', '2013-11-19 07:05:57', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(24, 1, 'Form Results', 'forms', 'Get submission data.', '2013-11-19 07:05:58', '2013-11-19 07:05:58', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(25, 1, 'Surveys', 'surveys', '', '2013-11-19 07:06:01', '2013-11-19 07:06:01', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(26, 1, 'Logs', 'logs', '', '2013-11-19 07:06:02', '2013-11-19 07:06:02', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(27, 1, 'Pages & Themes', 'pages', 'Reskin your site.', '2013-11-19 07:06:04', '2013-11-19 07:06:04', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(28, 1, 'Themes', 'themes', 'Reskin your site.', '2013-11-19 07:06:06', '2013-11-19 07:06:06', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(29, 1, 'Add', 'add', '', '2013-11-19 07:06:07', '2013-11-19 07:06:07', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(30, 1, 'Inspect', 'inspect', '', '2013-11-19 07:06:08', '2013-11-19 07:06:08', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(31, 1, 'Customize', 'customize', '', '2013-11-19 07:06:10', '2013-11-19 07:06:10', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(32, 1, 'Page Types', 'types', 'What goes in your site.', '2013-11-19 07:06:14', '2013-11-19 07:06:14', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(33, 1, 'Add Page Type', 'add', 'Add page types to your site.', '2013-11-19 07:06:17', '2013-11-19 07:06:17', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(34, 1, 'Attributes', 'attributes', '', '2013-11-19 07:06:19', '2013-11-19 07:06:19', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(35, 1, 'Single Pages', 'single', '', '2013-11-19 07:06:22', '2013-11-19 07:06:22', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(36, 1, 'Workflow', 'workflow', '', '2013-11-19 07:06:23', '2013-11-19 07:06:23', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(37, 1, 'Workflow List', 'list', '', '2013-11-19 07:06:25', '2013-11-19 07:06:25', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(38, 1, 'Waiting for Me', 'me', '', '2013-11-19 07:06:26', '2013-11-19 07:06:26', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(39, 1, 'Stacks & Blocks', 'blocks', 'Manage sitewide content and administer block types.', '2013-11-19 07:06:27', '2013-11-19 07:06:27', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(40, 1, 'Stacks', 'stacks', 'Share content across your site.', '2013-11-19 07:06:28', '2013-11-19 07:06:28', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(41, 1, 'Block & Stack Permissions', 'permissions', 'Control who can add blocks and stacks on your site.', '2013-11-19 07:06:29', '2013-11-19 07:06:29', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(42, 1, 'Stack List', 'list', '', '2013-11-19 07:06:30', '2013-11-19 07:06:30', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(43, 1, 'Block Types', 'types', 'Manage the installed block types in your site.', '2013-11-19 07:06:32', '2013-11-19 07:06:32', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(44, 1, 'Extend concrete5', 'extend', 'Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.', '2013-11-19 07:06:33', '2013-11-19 07:06:33', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(45, 1, 'Dashboard', 'news', '', '2013-11-19 07:06:34', '2013-11-19 07:06:34', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(46, 1, 'Add Functionality', 'install', 'Install add-ons & themes.', '2013-11-19 07:06:38', '2013-11-19 07:06:38', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(47, 1, 'Update Add-Ons', 'update', 'Update your installed packages.', '2013-11-19 07:06:39', '2013-11-19 07:06:39', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(48, 1, 'Connect to the Community', 'connect', 'Connect to the concrete5 community.', '2013-11-19 07:06:41', '2013-11-19 07:06:41', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(49, 1, 'Get More Themes', 'themes', 'Download themes from concrete5.org.', '2013-11-19 07:06:43', '2013-11-19 07:06:43', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(50, 1, 'Get More Add-Ons', 'add-ons', 'Download add-ons from concrete5.org.', '2013-11-19 07:06:44', '2013-11-19 07:06:44', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(51, 1, 'System & Settings', 'system', 'Secure and setup your site.', '2013-11-19 07:06:45', '2013-11-19 07:06:45', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(52, 1, 'Basics', 'basics', 'Basic information about your website.', '2013-11-19 07:06:45', '2013-11-19 07:06:45', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(53, 1, 'Site Name', 'site_name', '', '2013-11-19 07:06:46', '2013-11-19 07:06:46', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(54, 1, 'Bookmark Icons', 'icons', 'Bookmark icon and mobile home screen icon setup.', '2013-11-19 07:06:46', '2013-11-19 07:06:46', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(55, 1, 'Rich Text Editor', 'editor', '', '2013-11-19 07:06:46', '2013-11-19 07:06:46', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(56, 1, 'Languages', 'multilingual', '', '2013-11-19 07:06:47', '2013-11-19 07:06:47', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(57, 1, 'Time Zone', 'timezone', '', '2013-11-19 07:06:48', '2013-11-19 07:06:48', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(58, 1, 'Interface Preferences', 'interface', '', '2013-11-19 07:06:50', '2013-11-19 07:06:50', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(59, 1, 'SEO & Statistics', 'seo', 'Enable pretty URLs, statistics and tracking codes.', '2013-11-19 07:06:50', '2013-11-19 07:06:50', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(60, 1, 'Pretty URLs', 'urls', '', '2013-11-19 07:06:51', '2013-11-19 07:06:51', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(61, 1, 'Bulk SEO Updater', 'bulk_seo_tool', '', '2013-11-19 07:06:52', '2013-11-19 07:06:52', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(62, 1, 'Tracking Codes', 'tracking_codes', '', '2013-11-19 07:06:54', '2013-11-19 07:06:54', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(63, 1, 'Excluded URL Word List', 'excluded', '', '2013-11-19 07:06:55', '2013-11-19 07:06:55', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(64, 1, 'Statistics', 'statistics', '', '2013-11-19 07:06:57', '2013-11-19 07:06:57', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(65, 1, 'Search Index', 'search_index', '', '2013-11-19 07:06:58', '2013-11-19 07:06:58', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(66, 1, 'Optimization', 'optimization', 'Keep your site running well.', '2013-11-19 07:07:01', '2013-11-19 07:07:01', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(67, 1, 'Cache & Speed Settings', 'cache', '', '2013-11-19 07:07:02', '2013-11-19 07:07:02', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(68, 1, 'Clear Cache', 'clear_cache', '', '2013-11-19 07:07:03', '2013-11-19 07:07:03', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(69, 1, 'Automated Jobs', 'jobs', '', '2013-11-19 07:07:03', '2013-11-19 07:07:03', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(70, 1, 'Permissions & Access', 'permissions', 'Control who sees and edits your site.', '2013-11-19 07:07:04', '2013-11-19 07:07:04', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(71, 1, 'Site Access', 'site', '', '2013-11-19 07:07:04', '2013-11-19 07:07:04', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(72, 1, 'File Manager Permissions', 'files', '', '2013-11-19 07:07:05', '2013-11-19 07:07:05', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(73, 1, 'Allowed File Types', 'file_types', '', '2013-11-19 07:07:05', '2013-11-19 07:07:05', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(74, 1, 'Task Permissions', 'tasks', '', '2013-11-19 07:07:06', '2013-11-19 07:07:06', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(75, 1, 'User Permissions', 'users', '', '2013-11-19 07:07:06', '2013-11-19 07:07:06', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(76, 1, 'Advanced Permissions', 'advanced', '', '2013-11-19 07:07:07', '2013-11-19 07:07:07', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(77, 1, 'IP Blacklist', 'ip_blacklist', '', '2013-11-19 07:07:07', '2013-11-19 07:07:07', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(78, 1, 'Captcha Setup', 'captcha', '', '2013-11-19 07:07:09', '2013-11-19 07:07:09', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(79, 1, 'Spam Control', 'antispam', '', '2013-11-19 07:07:09', '2013-11-19 07:07:09', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(80, 1, 'Maintenance Mode', 'maintenance_mode', '', '2013-11-19 07:07:11', '2013-11-19 07:07:11', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(81, 1, 'Login & Registration', 'registration', 'Change login behaviors and setup public profiles.', '2013-11-19 07:07:15', '2013-11-19 07:07:15', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(82, 1, 'Login Destination', 'postlogin', '', '2013-11-19 07:07:17', '2013-11-19 07:07:17', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(83, 1, 'Public Profiles', 'profiles', '', '2013-11-19 07:07:18', '2013-11-19 07:07:18', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(84, 1, 'Public Registration', 'public_registration', '', '2013-11-19 07:07:19', '2013-11-19 07:07:19', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(85, 1, 'Email', 'mail', 'Control how your site send and processes mail.', '2013-11-19 07:07:21', '2013-11-19 07:07:21', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(86, 1, 'SMTP Method', 'method', '', '2013-11-19 07:07:23', '2013-11-19 07:07:23', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(87, 1, 'Email Importers', 'importers', '', '2013-11-19 07:07:24', '2013-11-19 07:07:24', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(88, 1, 'Attributes', 'attributes', 'Setup attributes for pages, users, files and more.', '2013-11-19 07:07:26', '2013-11-19 07:07:26', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(89, 1, 'Sets', 'sets', 'Group attributes into sets for easier organization', '2013-11-19 07:07:29', '2013-11-19 07:07:29', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(90, 1, 'Types', 'types', 'Choose which attribute types are available for different items.', '2013-11-19 07:07:30', '2013-11-19 07:07:30', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(91, 1, 'Environment', 'environment', 'Advanced settings for web developers.', '2013-11-19 07:07:31', '2013-11-19 07:07:31', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(92, 1, 'Environment Information', 'info', '', '2013-11-19 07:07:33', '2013-11-19 07:07:33', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(93, 1, 'Debug Settings', 'debug', '', '2013-11-19 07:07:34', '2013-11-19 07:07:34', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(94, 1, 'Logging Settings', 'logging', '', '2013-11-19 07:07:36', '2013-11-19 07:07:36', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(95, 1, 'File Storage Locations', 'file_storage_locations', '', '2013-11-19 07:07:37', '2013-11-19 07:07:37', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(96, 1, 'Proxy Server', 'proxy', '', '2013-11-19 07:07:43', '2013-11-19 07:07:43', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(97, 1, 'Backup & Restore', 'backup_restore', 'Backup or restore your website.', '2013-11-19 07:07:47', '2013-11-19 07:07:47', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(98, 1, 'Backup Database', 'backup', '', '2013-11-19 07:07:52', '2013-11-19 07:07:52', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(99, 1, 'Update concrete5', 'update', '', '2013-11-19 07:07:53', '2013-11-19 07:07:53', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(100, 1, 'Database XML', 'database', '', '2013-11-19 07:07:54', '2013-11-19 07:07:54', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(101, 1, 'Composer', 'composer', '', '2013-11-19 07:07:55', '2013-11-19 07:07:55', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(102, 1, '', NULL, NULL, '2013-11-19 07:07:56', '2013-11-19 07:07:56', 'Initial Version', 1, 0, NULL, NULL, 0, 1, NULL),
(103, 1, '', NULL, NULL, '2013-11-19 07:07:56', '2013-11-19 07:07:56', 'Initial Version', 1, 0, NULL, NULL, 0, 2, NULL),
(104, 1, '', NULL, NULL, '2013-11-19 07:07:56', '2013-11-19 07:07:56', 'Initial Version', 1, 0, NULL, NULL, 0, 3, NULL),
(105, 1, 'Customize Dashboard Home', 'home', '', '2013-11-19 07:07:57', '2013-11-19 07:07:57', 'Initial Version', 1, 0, 1, NULL, 5, 2, NULL),
(106, 1, 'Welcome to concrete5', 'welcome', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '2013-11-19 07:07:57', '2013-11-19 07:07:57', 'Initial Version', 1, 0, 1, NULL, 5, 3, NULL),
(107, 1, 'Drafts', '!drafts', '', '2013-11-19 07:08:58', '2013-11-19 07:08:58', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(108, 1, 'Trash', '!trash', '', '2013-11-19 07:08:59', '2013-11-19 07:08:59', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(109, 1, 'Stacks', '!stacks', '', '2013-11-19 07:09:01', '2013-11-19 07:09:01', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(110, 1, 'Login', 'login', '', '2013-11-19 07:09:02', '2013-11-19 07:09:02', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(111, 1, 'Register', 'register', '', '2013-11-19 07:09:08', '2013-11-19 07:09:08', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(112, 1, 'Profile', 'profile', '', '2013-11-19 07:09:10', '2013-11-19 07:09:10', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(113, 1, 'Edit', 'edit', '', '2013-11-19 07:09:12', '2013-11-19 07:09:12', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(114, 1, 'Avatar', 'avatar', '', '2013-11-19 07:09:14', '2013-11-19 07:09:14', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(115, 1, 'Messages', 'messages', '', '2013-11-19 07:09:16', '2013-11-19 07:09:16', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(116, 1, 'Friends', 'friends', '', '2013-11-19 07:09:19', '2013-11-19 07:09:19', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(117, 1, 'Page Not Found', 'page_not_found', '', '2013-11-19 07:09:20', '2013-11-19 07:09:20', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(118, 1, 'Page Forbidden', 'page_forbidden', '', '2013-11-19 07:09:21', '2013-11-19 07:09:21', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(119, 1, 'Download File', 'download_file', '', '2013-11-19 07:09:21', '2013-11-19 07:09:21', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(120, 1, 'Members', 'members', '', '2013-11-19 07:09:22', '2013-11-19 07:09:22', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(121, 1, '', NULL, NULL, '2013-11-19 07:09:24', '2013-11-19 07:09:24', 'Initial Version', 1, 0, NULL, NULL, 0, 4, NULL),
(122, 1, '', NULL, NULL, '2013-11-19 07:43:33', '2013-11-19 07:43:33', 'Initial Version', 1, 0, NULL, NULL, 0, 5, NULL),
(123, 1, 'Fusszeile', 'fusszeile', NULL, '2013-11-19 11:09:43', '2013-11-19 11:09:43', 'Initial Version', 0, 0, 1, NULL, 5, 1, NULL),
(123, 2, 'Fusszeile', 'fusszeile', NULL, '2013-11-19 11:09:43', '2013-11-19 11:11:48', 'Neue Version 2', 1, 0, 1, 1, 5, 1, NULL),
(124, 1, 'Über uns', 'ueberuns', '', '2013-11-19 11:35:00', '2013-11-19 11:35:43', 'Initial Version', 0, 0, 1, 1, 5, 5, NULL),
(124, 2, 'Über uns', 'ueberuns', '', '2013-11-19 11:35:00', '2013-11-19 11:36:05', 'Neue Version 2', 0, 0, 1, 1, 5, 5, NULL),
(124, 3, 'Über uns', 'ueberuns', '', '2013-11-19 11:35:00', '2013-11-19 11:40:10', 'Version 3', 0, 0, 1, 1, 5, 5, NULL),
(124, 4, 'Über uns', 'ueberuns', '', '2013-11-19 11:35:00', '2013-12-11 08:27:14', 'Version 4', 0, 0, 1, 1, 5, 5, NULL),
(124, 5, 'Über uns', 'ueberuns', '', '2013-11-19 11:35:00', '2013-12-11 10:52:27', 'Version 5', 0, 0, 1, 1, 5, 5, NULL),
(124, 6, 'Über uns', 'ueberuns', '', '2013-11-19 11:35:00', '2013-12-11 10:54:30', 'Version 6', 1, 0, 1, 1, 5, 5, NULL),
(125, 1, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-11-19 11:36:17', 'Initial Version', 0, 0, 1, 1, 5, 5, NULL),
(125, 2, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-11-19 11:40:26', 'Version 2', 0, 0, 1, 1, 5, 5, NULL),
(125, 3, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 08:42:21', 'Version 3', 0, 0, 1, 1, 5, 5, NULL),
(125, 4, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 08:48:12', 'Version 4', 0, 0, 1, 1, 5, 5, NULL),
(125, 5, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 09:50:28', 'Version 5', 0, 0, 1, 1, 5, 5, NULL),
(125, 6, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 09:52:03', 'Version 6', 0, 0, 1, 1, 5, 5, NULL),
(125, 7, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 09:56:33', 'Version 7', 0, 0, 1, 1, 5, 5, NULL),
(125, 8, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 09:58:08', 'Version 8', 0, 0, 1, 1, 5, 5, NULL),
(125, 9, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:00:59', 'Version 9', 0, 0, 1, NULL, 5, 5, NULL),
(125, 10, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:02:27', 'Version 10', 0, 0, 1, 1, 5, 5, NULL),
(125, 11, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:03:08', 'Version 11', 0, 0, 1, 1, 5, 5, NULL),
(125, 12, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:03:51', 'Version 12', 0, 0, 1, 1, 5, 5, NULL),
(125, 13, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:04:40', 'Version 13', 0, 0, 1, 1, 5, 5, NULL),
(125, 14, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:05:27', 'Version 14', 0, 0, 1, 1, 5, 5, NULL),
(125, 15, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:06:10', 'Version 15', 0, 0, 1, 1, 5, 5, NULL),
(125, 16, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:07:29', 'Version 16', 0, 0, 1, 1, 5, 5, NULL),
(125, 17, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:08:53', 'Version 17', 0, 0, 1, 1, 5, 5, NULL),
(125, 18, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:09:28', 'Version 18', 0, 0, 1, 1, 5, 5, NULL),
(125, 19, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:10:24', 'Version 19', 0, 0, 1, 1, 5, 5, NULL),
(125, 20, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:12:39', 'Version 20', 0, 0, 1, 1, 5, 5, NULL),
(125, 21, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:13:08', 'Version 21', 0, 0, 1, 1, 5, 5, NULL),
(125, 22, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:15:16', 'Version 22', 0, 0, 1, 1, 5, 5, NULL),
(125, 23, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:26:48', 'Version 23', 0, 0, 1, 1, 5, 5, NULL),
(125, 24, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:27:59', 'Version 24', 0, 0, 1, 1, 5, 5, NULL),
(125, 25, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:28:47', 'Version 25', 0, 0, 1, 1, 5, 5, NULL),
(125, 26, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:30:12', 'Version 26', 0, 0, 1, 1, 5, 5, NULL),
(125, 27, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:31:47', 'Version 27', 0, 0, 1, 1, 5, 5, NULL),
(125, 28, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:38:09', 'Version 28', 0, 0, 1, 1, 5, 5, NULL),
(125, 29, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:38:40', 'Version 29', 0, 0, 1, 1, 5, 5, NULL),
(125, 30, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:39:24', 'Version 30', 0, 0, 1, 1, 5, 5, NULL),
(125, 31, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:44:48', 'Version 31', 0, 0, 1, 1, 5, 5, NULL),
(125, 32, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:46:00', 'Version 32', 0, 0, 1, 1, 5, 5, NULL),
(125, 33, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:47:08', 'Version 33', 0, 0, 1, 1, 5, 5, NULL),
(125, 34, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:48:38', 'Version 34', 0, 0, 1, 1, 5, 5, NULL),
(125, 35, 'Produktion', 'produktion', '', '2013-11-19 11:36:00', '2013-12-11 10:49:43', 'Version 35', 1, 0, 1, 1, 5, 5, NULL),
(126, 1, 'Kontakt', 'kontakt', '', '2013-11-19 11:36:00', '2013-11-19 11:36:44', 'Initial Version', 0, 0, 1, 1, 5, 5, NULL),
(126, 2, 'Kontakt', 'kontakt', '', '2013-11-19 11:36:00', '2013-11-19 11:40:39', 'Version 2', 0, 0, 1, 1, 5, 5, NULL),
(126, 3, 'Kontakt', 'kontakt', '', '2013-11-19 11:36:00', '2013-12-11 08:54:25', 'Version 3', 0, 0, 1, 1, 5, 5, NULL),
(126, 4, 'Kontakt', 'kontakt', '', '2013-11-19 11:36:00', '2013-12-11 08:56:29', 'Version 4', 1, 0, 1, 1, 5, 5, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ComposerContentLayout`
--

CREATE TABLE IF NOT EXISTS `ComposerContentLayout` (
`cclID` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ComposerDrafts`
--

CREATE TABLE IF NOT EXISTS `ComposerDrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ComposerTypes`
--

CREATE TABLE IF NOT EXISTS `ComposerTypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Config`
--

CREATE TABLE IF NOT EXISTS `Config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Config`
--

INSERT INTO `Config` (`cfKey`, `timestamp`, `cfValue`, `uID`, `pkgID`) VALUES
('ACCESS_ENTITY_UPDATED', '2013-11-27 09:06:37', '1385546797', 0, 0),
('ANTISPAM_LOG_SPAM', '2013-11-19 06:09:23', '1', 0, 0),
('APP_VERSION_LATEST', '2013-12-11 07:03:38', '5.6.2.1', 0, 0),
('DO_PAGE_REINDEX_CHECK', '2013-12-11 09:54:37', '0', 0, 0),
('ENABLE_BLOCK_CACHE', '2013-11-19 06:09:24', '1', 0, 0),
('ENABLE_LOG_EMAILS', '2013-11-19 06:09:23', '1', 0, 0),
('ENABLE_LOG_ERRORS', '2013-11-19 06:09:23', '1', 0, 0),
('ENABLE_MARKETPLACE_SUPPORT', '2013-11-19 06:09:23', '1', 0, 0),
('ENABLE_OVERRIDE_CACHE', '2013-11-19 06:09:24', '1', 0, 0),
('FULL_PAGE_CACHE_GLOBAL', '2013-11-19 06:09:23', '0', 0, 0),
('NEWSFLOW_LAST_VIEWED', '2013-12-11 08:03:36', '1386749016', 1, 0),
('SEEN_INTRODUCTION', '2013-11-19 06:10:36', '1', 0, 0),
('SITE', '2013-11-19 06:09:28', 'Sulmag AG - Maschinenbau', 0, 0),
('SITE_APP_VERSION', '2013-11-19 06:09:28', '5.6.1.2.de', 0, 0),
('SITE_DEBUG_LEVEL', '2013-11-19 06:09:23', '1', 0, 0),
('SITE_INSTALLED_APP_VERSION', '2013-11-19 06:09:28', '5.6.1.2.de', 0, 0),
('SITE_LOCALE', '2013-11-19 06:09:27', 'de_DE', 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CustomStylePresets`
--

CREATE TABLE IF NOT EXISTS `CustomStylePresets` (
`cspID` int(10) unsigned NOT NULL,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `CustomStyleRules`
--

CREATE TABLE IF NOT EXISTS `CustomStyleRules` (
`csrID` int(10) unsigned NOT NULL,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `DownloadStatistics`
--

CREATE TABLE IF NOT EXISTS `DownloadStatistics` (
`dsID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FileAttributeValues`
--

CREATE TABLE IF NOT EXISTS `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `FileAttributeValues`
--

INSERT INTO `FileAttributeValues` (`fID`, `fvID`, `akID`, `avID`) VALUES
(4, 1, 12, 130),
(4, 1, 13, 131),
(5, 1, 12, 132),
(5, 1, 13, 133),
(6, 1, 12, 134),
(6, 1, 13, 135),
(7, 1, 12, 136),
(7, 1, 13, 137),
(8, 1, 12, 138),
(8, 1, 13, 139),
(9, 1, 12, 140),
(9, 1, 13, 141);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FilePermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FilePermissionFileTypes`
--

CREATE TABLE IF NOT EXISTS `FilePermissionFileTypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FilePermissions`
--

CREATE TABLE IF NOT EXISTS `FilePermissions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `canRead` int(4) NOT NULL DEFAULT '0',
  `canWrite` int(4) NOT NULL DEFAULT '0',
  `canAdmin` int(4) NOT NULL DEFAULT '0',
  `canSearch` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Files`
--

CREATE TABLE IF NOT EXISTS `Files` (
`fID` int(10) unsigned NOT NULL,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Files`
--

INSERT INTO `Files` (`fID`, `fDateAdded`, `uID`, `fslID`, `ocID`, `fOverrideSetPermissions`, `fPassword`) VALUES
(4, '2013-12-11 09:38:24', 1, 0, 1, 0, NULL),
(5, '2013-12-11 09:38:27', 1, 0, 1, 0, NULL),
(6, '2013-12-11 09:38:29', 1, 0, 1, 0, NULL),
(7, '2013-12-11 09:38:32', 1, 0, 1, 0, NULL),
(8, '2013-12-11 09:38:37', 1, 0, 1, 0, NULL),
(9, '2013-12-11 09:38:41', 1, 0, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FileSearchIndexAttributes`
--

CREATE TABLE IF NOT EXISTS `FileSearchIndexAttributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `FileSearchIndexAttributes`
--

INSERT INTO `FileSearchIndexAttributes` (`fID`, `ak_width`, `ak_height`) VALUES
(1, 1600.0000, 268.0000),
(2, 1600.0000, 268.0000),
(3, 1600.0000, 268.0000),
(4, 3500.0000, 955.0000),
(5, 3500.0000, 955.0000),
(6, 3500.0000, 955.0000),
(7, 3500.0000, 955.0000),
(8, 3500.0000, 955.0000),
(9, 3500.0000, 955.0000);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FileSetFiles`
--

CREATE TABLE IF NOT EXISTS `FileSetFiles` (
`fsfID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `FileSetFiles`
--

INSERT INTO `FileSetFiles` (`fsfID`, `fID`, `fsID`, `timestamp`, `fsDisplayOrder`) VALUES
(6, 8, 2, '2013-12-11 10:29:31', 0),
(7, 7, 2, '2013-12-11 10:29:41', 1),
(8, 6, 2, '2013-12-11 10:29:47', 2),
(9, 5, 2, '2013-12-11 10:29:53', 3),
(10, 4, 2, '2013-12-11 10:29:58', 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FileSetPermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `FileSetPermissionAssignments`
--

INSERT INTO `FileSetPermissionAssignments` (`fsID`, `paID`, `pkID`) VALUES
(0, 36, 34),
(0, 37, 35),
(0, 38, 36),
(0, 39, 37),
(0, 40, 38),
(0, 41, 39),
(0, 42, 41),
(0, 43, 40),
(0, 44, 42);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FileSetPermissionFileTypeAccessList`
--

CREATE TABLE IF NOT EXISTS `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FileSetPermissionFileTypeAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `FileSetPermissionFileTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FileSets`
--

CREATE TABLE IF NOT EXISTS `FileSets` (
`fsID` int(10) unsigned NOT NULL,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `FileSets`
--

INSERT INTO `FileSets` (`fsID`, `fsName`, `uID`, `fsType`, `fsOverrideGlobalPermissions`) VALUES
(1, 'Home', 1, 1, 0),
(2, 'produktion', 1, 1, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FileSetSavedSearches`
--

CREATE TABLE IF NOT EXISTS `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FileStorageLocations`
--

CREATE TABLE IF NOT EXISTS `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FileVersionLog`
--

CREATE TABLE IF NOT EXISTS `FileVersionLog` (
`fvlID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `FileVersionLog`
--

INSERT INTO `FileVersionLog` (`fvlID`, `fID`, `fvID`, `fvUpdateTypeID`, `fvUpdateTypeAttributeID`) VALUES
(13, 4, 1, 5, 12),
(14, 4, 1, 5, 13),
(15, 5, 1, 5, 12),
(16, 5, 1, 5, 13),
(17, 6, 1, 5, 12),
(18, 6, 1, 5, 13),
(19, 7, 1, 5, 12),
(20, 7, 1, 5, 13),
(21, 8, 1, 5, 12),
(22, 8, 1, 5, 13),
(23, 9, 1, 5, 12),
(24, 9, 1, 5, 13);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `FileVersions`
--

CREATE TABLE IF NOT EXISTS `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) NOT NULL,
  `fvPrefix` varchar(12) DEFAULT NULL,
  `fvGenericType` int(3) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(20) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) DEFAULT NULL,
  `fvDescription` text,
  `fvTags` varchar(255) DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasThumbnail1` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail2` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail3` int(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `FileVersions`
--

INSERT INTO `FileVersions` (`fID`, `fvID`, `fvFilename`, `fvPrefix`, `fvGenericType`, `fvSize`, `fvTitle`, `fvDescription`, `fvTags`, `fvIsApproved`, `fvDateAdded`, `fvApproverUID`, `fvAuthorUID`, `fvActivateDatetime`, `fvHasThumbnail1`, `fvHasThumbnail2`, `fvHasThumbnail3`, `fvExtension`, `fvType`) VALUES
(4, 1, '1sulmag.jpg', '561386754704', 1, 322590, '1sulmag.jpg', '', '', 1, '2013-12-11 09:38:24', 1, 1, '2013-12-11 09:38:24', 1, 1, 0, 'jpg', 1),
(5, 1, '2sulmag.jpg', '811386754707', 1, 396887, '2sulmag.jpg', '', '', 1, '2013-12-11 09:38:27', 1, 1, '2013-12-11 09:38:27', 1, 1, 0, 'jpg', 1),
(6, 1, '3sulmag.jpg', '121386754709', 1, 340087, '3sulmag.jpg', '', '', 1, '2013-12-11 09:38:29', 1, 1, '2013-12-11 09:38:29', 1, 1, 0, 'jpg', 1),
(7, 1, '4sulmag.jpg', '371386754712', 1, 355835, '4sulmag.jpg', '', '', 1, '2013-12-11 09:38:32', 1, 1, '2013-12-11 09:38:32', 1, 1, 0, 'jpg', 1),
(8, 1, '5sulmag.jpg', '441386754717', 1, 281703, '5sulmag.jpg', '', '', 1, '2013-12-11 09:38:38', 1, 1, '2013-12-11 09:38:38', 1, 1, 0, 'jpg', 1),
(9, 1, '6sulmag.jpg', '501386754721', 1, 277068, '6sulmag.jpg', '', '', 1, '2013-12-11 09:38:41', 1, 1, '2013-12-11 09:38:41', 1, 1, 0, 'jpg', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Groups`
--

CREATE TABLE IF NOT EXISTS `Groups` (
`gID` int(10) unsigned NOT NULL,
  `gName` varchar(128) NOT NULL,
  `gDescription` varchar(255) NOT NULL,
  `gUserExpirationIsEnabled` int(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Groups`
--

INSERT INTO `Groups` (`gID`, `gName`, `gDescription`, `gUserExpirationIsEnabled`, `gUserExpirationMethod`, `gUserExpirationSetDateTime`, `gUserExpirationInterval`, `gUserExpirationAction`) VALUES
(1, 'Guest', 'The guest group represents unregistered visitors to your site.', 0, NULL, NULL, 0, NULL),
(2, 'Registered Users', 'The registered users group represents all user accounts.', 0, NULL, NULL, 0, NULL),
(3, 'Administrators', '', 0, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `GroupSetGroups`
--

CREATE TABLE IF NOT EXISTS `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `GroupSets`
--

CREATE TABLE IF NOT EXISTS `GroupSets` (
`gsID` int(10) unsigned NOT NULL,
  `gsName` varchar(255) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Jobs`
--

CREATE TABLE IF NOT EXISTS `Jobs` (
`jID` int(10) unsigned NOT NULL,
  `jName` varchar(100) NOT NULL,
  `jDescription` varchar(255) NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` varchar(255) DEFAULT NULL,
  `jLastStatusCode` smallint(4) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) NOT NULL,
  `jNotUninstallable` smallint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Jobs`
--

INSERT INTO `Jobs` (`jID`, `jName`, `jDescription`, `jDateInstalled`, `jDateLastRun`, `pkgID`, `jLastStatusText`, `jLastStatusCode`, `jStatus`, `jHandle`, `jNotUninstallable`) VALUES
(1, 'Index Search Engine', 'Index the site to allow searching to work quickly and accurately.', '2013-11-19 07:05:27', NULL, 0, NULL, 0, 'ENABLED', 'index_search', 1),
(2, 'Generate the sitemap.xml file', 'Generate the sitemap.xml file that search engines use to crawl your site.', '2013-11-19 07:05:27', NULL, 0, NULL, 0, 'ENABLED', 'generate_sitemap', 0),
(3, 'Process Email Posts', 'Polls an email account and grabs private messages/postings that are sent there..', '2013-11-19 07:05:27', NULL, 0, NULL, 0, 'ENABLED', 'process_email', 0),
(4, 'Remove Old Page Versions', 'Removes all except the 10 most recent page versions for each page.', '2013-11-19 07:05:27', NULL, 0, NULL, 0, 'ENABLED', 'remove_old_page_versions', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `JobsLog`
--

CREATE TABLE IF NOT EXISTS `JobsLog` (
`jlID` int(10) unsigned NOT NULL,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` varchar(255) NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlError` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `LayoutPresets`
--

CREATE TABLE IF NOT EXISTS `LayoutPresets` (
`lpID` int(10) unsigned NOT NULL,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Layouts`
--

CREATE TABLE IF NOT EXISTS `Layouts` (
`layoutID` int(10) unsigned NOT NULL,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Logs`
--

CREATE TABLE IF NOT EXISTS `Logs` (
`logID` int(10) unsigned NOT NULL,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logText` longtext,
  `logUserID` int(10) unsigned DEFAULT NULL,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `MailImporters`
--

CREATE TABLE IF NOT EXISTS `MailImporters` (
`miID` int(10) unsigned NOT NULL,
  `miHandle` varchar(64) NOT NULL,
  `miServer` varchar(255) DEFAULT NULL,
  `miUsername` varchar(255) DEFAULT NULL,
  `miPassword` varchar(255) DEFAULT NULL,
  `miEncryption` varchar(32) DEFAULT NULL,
  `miIsEnabled` int(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) DEFAULT 'POP'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `MailImporters`
--

INSERT INTO `MailImporters` (`miID`, `miHandle`, `miServer`, `miUsername`, `miPassword`, `miEncryption`, `miIsEnabled`, `miEmail`, `miPort`, `pkgID`, `miConnectionMethod`) VALUES
(1, 'private_message', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 'POP');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `MailValidationHashes`
--

CREATE TABLE IF NOT EXISTS `MailValidationHashes` (
`mvhID` int(10) unsigned NOT NULL,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Packages`
--

CREATE TABLE IF NOT EXISTS `Packages` (
`pkgID` int(10) unsigned NOT NULL,
  `pkgName` varchar(255) NOT NULL,
  `pkgHandle` varchar(64) NOT NULL,
  `pkgDescription` text,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PagePaths`
--

CREATE TABLE IF NOT EXISTS `PagePaths` (
`ppID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `PagePaths`
--

INSERT INTO `PagePaths` (`ppID`, `cID`, `cPath`, `ppIsCanonical`) VALUES
(1, 2, '/dashboard', '1'),
(2, 3, '/dashboard/composer', '1'),
(3, 4, '/dashboard/composer/write', '1'),
(4, 5, '/dashboard/composer/drafts', '1'),
(5, 6, '/dashboard/sitemap', '1'),
(6, 7, '/dashboard/sitemap/full', '1'),
(7, 8, '/dashboard/sitemap/explore', '1'),
(8, 9, '/dashboard/sitemap/search', '1'),
(9, 10, '/dashboard/files', '1'),
(10, 11, '/dashboard/files/search', '1'),
(11, 12, '/dashboard/files/attributes', '1'),
(12, 13, '/dashboard/files/sets', '1'),
(13, 14, '/dashboard/files/add_set', '1'),
(14, 15, '/dashboard/users', '1'),
(15, 16, '/dashboard/users/search', '1'),
(16, 17, '/dashboard/users/groups', '1'),
(17, 18, '/dashboard/users/attributes', '1'),
(18, 19, '/dashboard/users/add', '1'),
(19, 20, '/dashboard/users/add_group', '1'),
(20, 21, '/dashboard/users/group_sets', '1'),
(21, 22, '/dashboard/reports', '1'),
(22, 23, '/dashboard/reports/statistics', '1'),
(23, 24, '/dashboard/reports/forms', '1'),
(24, 25, '/dashboard/reports/surveys', '1'),
(25, 26, '/dashboard/reports/logs', '1'),
(26, 27, '/dashboard/pages', '1'),
(27, 28, '/dashboard/pages/themes', '1'),
(28, 29, '/dashboard/pages/themes/add', '1'),
(29, 30, '/dashboard/pages/themes/inspect', '1'),
(30, 31, '/dashboard/pages/themes/customize', '1'),
(31, 32, '/dashboard/pages/types', '1'),
(32, 33, '/dashboard/pages/types/add', '1'),
(33, 34, '/dashboard/pages/attributes', '1'),
(34, 35, '/dashboard/pages/single', '1'),
(35, 36, '/dashboard/workflow', '1'),
(36, 37, '/dashboard/workflow/list', '1'),
(37, 38, '/dashboard/workflow/me', '1'),
(38, 39, '/dashboard/blocks', '1'),
(39, 40, '/dashboard/blocks/stacks', '1'),
(40, 41, '/dashboard/blocks/permissions', '1'),
(41, 42, '/dashboard/blocks/stacks/list', '1'),
(42, 43, '/dashboard/blocks/types', '1'),
(43, 44, '/dashboard/extend', '1'),
(44, 45, '/dashboard/news', '1'),
(45, 46, '/dashboard/extend/install', '1'),
(46, 47, '/dashboard/extend/update', '1'),
(47, 48, '/dashboard/extend/connect', '1'),
(48, 49, '/dashboard/extend/themes', '1'),
(49, 50, '/dashboard/extend/add-ons', '1'),
(50, 51, '/dashboard/system', '1'),
(51, 52, '/dashboard/system/basics', '1'),
(52, 53, '/dashboard/system/basics/site_name', '1'),
(53, 54, '/dashboard/system/basics/icons', '1'),
(54, 55, '/dashboard/system/basics/editor', '1'),
(55, 56, '/dashboard/system/basics/multilingual', '1'),
(56, 57, '/dashboard/system/basics/timezone', '1'),
(57, 58, '/dashboard/system/basics/interface', '1'),
(58, 59, '/dashboard/system/seo', '1'),
(59, 60, '/dashboard/system/seo/urls', '1'),
(60, 61, '/dashboard/system/seo/bulk_seo_tool', '1'),
(61, 62, '/dashboard/system/seo/tracking_codes', '1'),
(62, 63, '/dashboard/system/seo/excluded', '1'),
(63, 64, '/dashboard/system/seo/statistics', '1'),
(64, 65, '/dashboard/system/seo/search_index', '1'),
(65, 66, '/dashboard/system/optimization', '1'),
(66, 67, '/dashboard/system/optimization/cache', '1'),
(67, 68, '/dashboard/system/optimization/clear_cache', '1'),
(68, 69, '/dashboard/system/optimization/jobs', '1'),
(69, 70, '/dashboard/system/permissions', '1'),
(70, 71, '/dashboard/system/permissions/site', '1'),
(71, 72, '/dashboard/system/permissions/files', '1'),
(72, 73, '/dashboard/system/permissions/file_types', '1'),
(73, 74, '/dashboard/system/permissions/tasks', '1'),
(74, 75, '/dashboard/system/permissions/users', '1'),
(75, 76, '/dashboard/system/permissions/advanced', '1'),
(76, 77, '/dashboard/system/permissions/ip_blacklist', '1'),
(77, 78, '/dashboard/system/permissions/captcha', '1'),
(78, 79, '/dashboard/system/permissions/antispam', '1'),
(79, 80, '/dashboard/system/permissions/maintenance_mode', '1'),
(80, 81, '/dashboard/system/registration', '1'),
(81, 82, '/dashboard/system/registration/postlogin', '1'),
(82, 83, '/dashboard/system/registration/profiles', '1'),
(83, 84, '/dashboard/system/registration/public_registration', '1'),
(84, 85, '/dashboard/system/mail', '1'),
(85, 86, '/dashboard/system/mail/method', '1'),
(86, 87, '/dashboard/system/mail/importers', '1'),
(87, 88, '/dashboard/system/attributes', '1'),
(88, 89, '/dashboard/system/attributes/sets', '1'),
(89, 90, '/dashboard/system/attributes/types', '1'),
(90, 91, '/dashboard/system/environment', '1'),
(91, 92, '/dashboard/system/environment/info', '1'),
(92, 93, '/dashboard/system/environment/debug', '1'),
(93, 94, '/dashboard/system/environment/logging', '1'),
(94, 95, '/dashboard/system/environment/file_storage_locations', '1'),
(95, 96, '/dashboard/system/environment/proxy', '1'),
(96, 97, '/dashboard/system/backup_restore', '1'),
(97, 98, '/dashboard/system/backup_restore/backup', '1'),
(98, 99, '/dashboard/system/backup_restore/update', '1'),
(99, 100, '/dashboard/system/backup_restore/database', '1'),
(100, 101, '/dashboard/pages/types/composer', '1'),
(101, 105, '/dashboard/home', '1'),
(102, 106, '/dashboard/welcome', '1'),
(103, 107, '/!drafts', '1'),
(104, 108, '/!trash', '1'),
(105, 109, '/!stacks', '1'),
(106, 110, '/login', '1'),
(107, 111, '/register', '1'),
(108, 112, '/profile', '1'),
(109, 113, '/profile/edit', '1'),
(110, 114, '/profile/avatar', '1'),
(111, 115, '/profile/messages', '1'),
(112, 116, '/profile/friends', '1'),
(113, 117, '/page_not_found', '1'),
(114, 118, '/page_forbidden', '1'),
(115, 119, '/download_file', '1'),
(116, 120, '/members', '1'),
(118, 123, '/!stacks/fusszeile', '1'),
(130, 126, '/kontakt', '1'),
(161, 125, '/produktion', '1'),
(163, 124, '/ueberuns', '1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PagePermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `PagePermissionAssignments`
--

INSERT INTO `PagePermissionAssignments` (`cID`, `pkID`, `paID`) VALUES
(1, 1, 45),
(1, 2, 46),
(1, 3, 47),
(1, 4, 48),
(1, 5, 49),
(1, 6, 50),
(1, 7, 51),
(1, 8, 52),
(1, 9, 53),
(1, 10, 54),
(1, 11, 55),
(1, 12, 56),
(1, 13, 57),
(1, 14, 58),
(1, 15, 59),
(2, 1, 18),
(2, 2, 19),
(2, 3, 24),
(2, 4, 20),
(2, 5, 21),
(2, 6, 26),
(2, 7, 28),
(2, 8, 30),
(2, 9, 27),
(2, 10, 31),
(2, 11, 32),
(2, 12, 22),
(2, 13, 25),
(2, 14, 23),
(2, 15, 29),
(42, 1, 33),
(110, 1, 34),
(111, 1, 35);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PagePermissionPageTypeAccessList`
--

CREATE TABLE IF NOT EXISTS `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PagePermissionPageTypeAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PagePermissionPropertyAccessList`
--

CREATE TABLE IF NOT EXISTS `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` int(1) unsigned DEFAULT '0',
  `publicDateTime` int(1) unsigned DEFAULT '0',
  `uID` int(1) unsigned DEFAULT '0',
  `description` int(1) unsigned DEFAULT '0',
  `paths` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PagePermissionPropertyAttributeAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PagePermissionThemeAccessList`
--

CREATE TABLE IF NOT EXISTS `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PagePermissionThemeAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Pages`
--

CREATE TABLE IF NOT EXISTS `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` int(1) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` varchar(255) DEFAULT NULL,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` int(4) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Pages`
--

INSERT INTO `Pages` (`cID`, `cIsTemplate`, `uID`, `cIsCheckedOut`, `cCheckedOutUID`, `cCheckedOutDatetime`, `cCheckedOutDatetimeLastEdit`, `cOverrideTemplatePermissions`, `cInheritPermissionsFromCID`, `cInheritPermissionsFrom`, `cFilename`, `cPointerID`, `cPointerExternalLink`, `cPointerExternalLinkNewWindow`, `cIsActive`, `cChildren`, `cDisplayOrder`, `cParentID`, `pkgID`, `cCacheFullPageContent`, `cCacheFullPageContentOverrideLifetime`, `cCacheFullPageContentLifetimeCustom`, `cIsSystemPage`) VALUES
(1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'OVERRIDE', NULL, 0, NULL, 0, 1, 14, 0, 0, 0, -1, '0', 0, 0),
(2, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'OVERRIDE', '/dashboard/view.php', 0, NULL, 0, 1, 13, 0, 0, 0, -1, '0', 0, 1),
(3, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/view.php', 0, NULL, 0, 1, 2, 0, 2, 0, -1, '0', 0, 1),
(4, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/write.php', 0, NULL, 0, 1, 0, 0, 3, 0, -1, '0', 0, 1),
(5, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/drafts.php', 0, NULL, 0, 1, 0, 1, 3, 0, -1, '0', 0, 1),
(6, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/view.php', 0, NULL, 0, 1, 3, 1, 2, 0, -1, '0', 0, 1),
(7, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/full.php', 0, NULL, 0, 1, 0, 0, 6, 0, -1, '0', 0, 1),
(8, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/explore.php', 0, NULL, 0, 1, 0, 1, 6, 0, -1, '0', 0, 1),
(9, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/search.php', 0, NULL, 0, 1, 0, 2, 6, 0, -1, '0', 0, 1),
(10, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/view.php', 0, NULL, 0, 1, 4, 2, 2, 0, -1, '0', 0, 1),
(11, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/search.php', 0, NULL, 0, 1, 0, 0, 10, 0, -1, '0', 0, 1),
(12, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/attributes.php', 0, NULL, 0, 1, 0, 1, 10, 0, -1, '0', 0, 1),
(13, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/sets.php', 0, NULL, 0, 1, 0, 2, 10, 0, -1, '0', 0, 1),
(14, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/add_set.php', 0, NULL, 0, 1, 0, 3, 10, 0, -1, '0', 0, 1),
(15, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/view.php', 0, NULL, 0, 1, 6, 3, 2, 0, -1, '0', 0, 1),
(16, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/search.php', 0, NULL, 0, 1, 0, 0, 15, 0, -1, '0', 0, 1),
(17, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups.php', 0, NULL, 0, 1, 0, 1, 15, 0, -1, '0', 0, 1),
(18, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/attributes.php', 0, NULL, 0, 1, 0, 2, 15, 0, -1, '0', 0, 1),
(19, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add.php', 0, NULL, 0, 1, 0, 3, 15, 0, -1, '0', 0, 1),
(20, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add_group.php', 0, NULL, 0, 1, 0, 4, 15, 0, -1, '0', 0, 1),
(21, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/group_sets.php', 0, NULL, 0, 1, 0, 5, 15, 0, -1, '0', 0, 1),
(22, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports.php', 0, NULL, 0, 1, 4, 4, 2, 0, -1, '0', 0, 1),
(23, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/statistics.php', 0, NULL, 0, 1, 0, 0, 22, 0, -1, '0', 0, 1),
(24, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/forms.php', 0, NULL, 0, 1, 0, 1, 22, 0, -1, '0', 0, 1),
(25, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/surveys.php', 0, NULL, 0, 1, 0, 2, 22, 0, -1, '0', 0, 1),
(26, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/logs.php', 0, NULL, 0, 1, 0, 3, 22, 0, -1, '0', 0, 1),
(27, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/view.php', 0, NULL, 0, 1, 4, 5, 2, 0, -1, '0', 0, 1),
(28, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/view.php', 0, NULL, 0, 1, 3, 0, 27, 0, -1, '0', 0, 1),
(29, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/add.php', 0, NULL, 0, 1, 0, 0, 28, 0, -1, '0', 0, 1),
(30, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/inspect.php', 0, NULL, 0, 1, 0, 1, 28, 0, -1, '0', 0, 1),
(31, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/customize.php', 0, NULL, 0, 1, 0, 2, 28, 0, -1, '0', 0, 1),
(32, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/view.php', 0, NULL, 0, 1, 2, 1, 27, 0, -1, '0', 0, 1),
(33, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/add.php', 0, NULL, 0, 1, 0, 0, 32, 0, -1, '0', 0, 1),
(34, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/attributes.php', 0, NULL, 0, 1, 0, 2, 27, 0, -1, '0', 0, 1),
(35, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/single.php', 0, NULL, 0, 1, 0, 3, 27, 0, -1, '0', 0, 1),
(36, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/view.php', 0, NULL, 0, 1, 2, 6, 2, 0, -1, '0', 0, 1),
(37, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/list.php', 0, NULL, 0, 1, 0, 0, 36, 0, -1, '0', 0, 1),
(38, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/me.php', 0, NULL, 0, 1, 0, 1, 36, 0, -1, '0', 0, 1),
(39, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/view.php', 0, NULL, 0, 1, 3, 7, 2, 0, -1, '0', 0, 1),
(40, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/view.php', 0, NULL, 0, 1, 1, 0, 39, 0, -1, '0', 0, 1),
(41, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/permissions.php', 0, NULL, 0, 1, 0, 1, 39, 0, -1, '0', 0, 1),
(42, 0, 1, 0, NULL, NULL, NULL, 1, 42, 'OVERRIDE', '/dashboard/blocks/stacks/list/view.php', 0, NULL, 0, 1, 0, 0, 40, 0, -1, '0', 0, 1),
(43, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/types/view.php', 0, NULL, 0, 1, 0, 2, 39, 0, -1, '0', 0, 1),
(44, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/view.php', 0, NULL, 0, 1, 5, 8, 2, 0, -1, '0', 0, 1),
(45, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/news.php', 0, NULL, 0, 1, 0, 9, 2, 0, -1, '0', 0, 1),
(46, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/install.php', 0, NULL, 0, 1, 0, 0, 44, 0, -1, '0', 0, 1),
(47, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/update.php', 0, NULL, 0, 1, 0, 1, 44, 0, -1, '0', 0, 1),
(48, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/connect.php', 0, NULL, 0, 1, 0, 2, 44, 0, -1, '0', 0, 1),
(49, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/themes.php', 0, NULL, 0, 1, 0, 3, 44, 0, -1, '0', 0, 1),
(50, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/add-ons.php', 0, NULL, 0, 1, 0, 4, 44, 0, -1, '0', 0, 1),
(51, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/view.php', 0, NULL, 0, 1, 9, 10, 2, 0, -1, '0', 0, 1),
(52, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/view.php', 0, NULL, 0, 1, 6, 0, 51, 0, -1, '0', 0, 1),
(53, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/site_name.php', 0, NULL, 0, 1, 0, 0, 52, 0, -1, '0', 0, 1),
(54, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/icons.php', 0, NULL, 0, 1, 0, 1, 52, 0, -1, '0', 0, 1),
(55, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/editor.php', 0, NULL, 0, 1, 0, 2, 52, 0, -1, '0', 0, 1),
(56, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/multilingual/view.php', 0, NULL, 0, 1, 0, 3, 52, 0, -1, '0', 0, 1),
(57, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/timezone.php', 0, NULL, 0, 1, 0, 4, 52, 0, -1, '0', 0, 1),
(58, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/interface.php', 0, NULL, 0, 1, 0, 5, 52, 0, -1, '0', 0, 1),
(59, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/view.php', 0, NULL, 0, 1, 6, 1, 51, 0, -1, '0', 0, 1),
(60, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/urls.php', 0, NULL, 0, 1, 0, 0, 59, 0, -1, '0', 0, 1),
(61, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/bulk_seo_tool.php', 0, NULL, 0, 1, 0, 1, 59, 0, -1, '0', 0, 1),
(62, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/tracking_codes.php', 0, NULL, 0, 1, 0, 2, 59, 0, -1, '0', 0, 1),
(63, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/excluded.php', 0, NULL, 0, 1, 0, 3, 59, 0, -1, '0', 0, 1),
(64, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/statistics.php', 0, NULL, 0, 1, 0, 4, 59, 0, -1, '0', 0, 1),
(65, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/search_index.php', 0, NULL, 0, 1, 0, 5, 59, 0, -1, '0', 0, 1),
(66, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/view.php', 0, NULL, 0, 1, 3, 2, 51, 0, -1, '0', 0, 1),
(67, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/cache.php', 0, NULL, 0, 1, 0, 0, 66, 0, -1, '0', 0, 1),
(68, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/clear_cache.php', 0, NULL, 0, 1, 0, 1, 66, 0, -1, '0', 0, 1),
(69, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/jobs.php', 0, NULL, 0, 1, 0, 2, 66, 0, -1, '0', 0, 1),
(70, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/view.php', 0, NULL, 0, 1, 10, 3, 51, 0, -1, '0', 0, 1),
(71, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/site.php', 0, NULL, 0, 1, 0, 0, 70, 0, -1, '0', 0, 1),
(72, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/files.php', 0, NULL, 0, 1, 0, 1, 70, 0, -1, '0', 0, 1),
(73, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/file_types.php', 0, NULL, 0, 1, 0, 2, 70, 0, -1, '0', 0, 1),
(74, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/tasks.php', 0, NULL, 0, 1, 0, 3, 70, 0, -1, '0', 0, 1),
(75, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/users.php', 0, NULL, 0, 1, 0, 4, 70, 0, -1, '0', 0, 1),
(76, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/advanced.php', 0, NULL, 0, 1, 0, 5, 70, 0, -1, '0', 0, 1),
(77, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/ip_blacklist.php', 0, NULL, 0, 1, 0, 6, 70, 0, -1, '0', 0, 1),
(78, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/captcha.php', 0, NULL, 0, 1, 0, 7, 70, 0, -1, '0', 0, 1),
(79, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/antispam.php', 0, NULL, 0, 1, 0, 8, 70, 0, -1, '0', 0, 1),
(80, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/maintenance_mode.php', 0, NULL, 0, 1, 0, 9, 70, 0, -1, '0', 0, 1),
(81, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/view.php', 0, NULL, 0, 1, 3, 4, 51, 0, -1, '0', 0, 1),
(82, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/postlogin.php', 0, NULL, 0, 1, 0, 0, 81, 0, -1, '0', 0, 1),
(83, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/profiles.php', 0, NULL, 0, 1, 0, 1, 81, 0, -1, '0', 0, 1),
(84, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/public_registration.php', 0, NULL, 0, 1, 0, 2, 81, 0, -1, '0', 0, 1),
(85, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/view.php', 0, NULL, 0, 1, 2, 5, 51, 0, -1, '0', 0, 1),
(86, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method.php', 0, NULL, 0, 1, 0, 0, 85, 0, -1, '0', 0, 1),
(87, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/importers.php', 0, NULL, 0, 1, 0, 1, 85, 0, -1, '0', 0, 1),
(88, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/view.php', 0, NULL, 0, 1, 2, 6, 51, 0, -1, '0', 0, 1),
(89, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/sets.php', 0, NULL, 0, 1, 0, 0, 88, 0, -1, '0', 0, 1),
(90, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/types.php', 0, NULL, 0, 1, 0, 1, 88, 0, -1, '0', 0, 1),
(91, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/view.php', 0, NULL, 0, 1, 5, 7, 51, 0, -1, '0', 0, 1),
(92, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/info.php', 0, NULL, 0, 1, 0, 0, 91, 0, -1, '0', 0, 1),
(93, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/debug.php', 0, NULL, 0, 1, 0, 1, 91, 0, -1, '0', 0, 1),
(94, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/logging.php', 0, NULL, 0, 1, 0, 2, 91, 0, -1, '0', 0, 1),
(95, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/file_storage_locations.php', 0, NULL, 0, 1, 0, 3, 91, 0, -1, '0', 0, 1),
(96, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/proxy.php', 0, NULL, 0, 1, 0, 4, 91, 0, -1, '0', 0, 1),
(97, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/view.php', 0, NULL, 0, 1, 3, 8, 51, 0, -1, '0', 0, 1),
(98, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/backup.php', 0, NULL, 0, 1, 0, 0, 97, 0, -1, '0', 0, 1),
(99, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/update.php', 0, NULL, 0, 1, 0, 1, 97, 0, -1, '0', 0, 1),
(100, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/database.php', 0, NULL, 0, 1, 0, 2, 97, 0, -1, '0', 0, 1),
(101, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/composer.php', 0, NULL, 0, 1, 0, 1, 32, 0, -1, '0', 0, 1),
(102, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(103, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(104, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(105, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 11, 2, 0, -1, '0', 0, 1),
(106, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 12, 2, 0, -1, '0', 0, 1),
(107, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!drafts/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(108, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!trash/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(109, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!stacks/view.php', 0, NULL, 0, 1, 1, 0, 0, 0, -1, '0', 0, 1),
(110, 0, 1, 0, NULL, NULL, NULL, 1, 110, 'OVERRIDE', '/login.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(111, 0, 1, 0, NULL, NULL, NULL, 1, 111, 'OVERRIDE', '/register.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(112, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/view.php', 0, NULL, 0, 1, 4, 0, 1, 0, -1, '0', 0, 1),
(113, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/edit.php', 0, NULL, 0, 1, 0, 0, 112, 0, -1, '0', 0, 1),
(114, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/avatar.php', 0, NULL, 0, 1, 0, 1, 112, 0, -1, '0', 0, 1),
(115, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/messages.php', 0, NULL, 0, 1, 0, 2, 112, 0, -1, '0', 0, 1),
(116, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/friends.php', 0, NULL, 0, 1, 0, 3, 112, 0, -1, '0', 0, 1),
(117, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_not_found.php', 0, NULL, 0, 1, 0, 1, 0, 0, -1, '0', 0, 1),
(118, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_forbidden.php', 0, NULL, 0, 1, 0, 1, 0, 0, -1, '0', 0, 1),
(119, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/download_file.php', 0, NULL, 0, 1, 0, 1, 1, 0, -1, '0', 0, 1),
(120, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members.php', 0, NULL, 0, 1, 0, 2, 1, 0, -1, '0', 0, 1),
(121, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(122, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(123, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 109, 0, -1, '0', 0, 1),
(124, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 1, 0, -1, '0', 0, 0),
(125, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 1, 0, -1, '0', 0, 0),
(126, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 1, 0, -1, '0', 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PageSearchIndex`
--

CREATE TABLE IF NOT EXISTS `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `cName` varchar(255) DEFAULT NULL,
  `cDescription` text,
  `cPath` text,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) unsigned DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `PageSearchIndex`
--

INSERT INTO `PageSearchIndex` (`cID`, `content`, `cName`, `cDescription`, `cPath`, `cDatePublic`, `cDateLastIndexed`, `cDateLastSitemapped`, `cRequiresReindex`) VALUES
(3, '', 'Composer', 'Write for your site.', '/dashboard/composer', '2013-11-19 07:05:36', '2013-11-19 07:07:59', NULL, 0),
(4, '', 'Write', '', '/dashboard/composer/write', '2013-11-19 07:05:36', '2013-11-19 07:07:59', NULL, 0),
(5, '', 'Drafts', '', '/dashboard/composer/drafts', '2013-11-19 07:05:36', '2013-11-19 07:08:00', NULL, 0),
(6, '', 'Sitemap', 'Whole world at a glance.', '/dashboard/sitemap', '2013-11-19 07:05:37', '2013-11-19 07:08:00', NULL, 0),
(7, '', 'Full Sitemap', '', '/dashboard/sitemap/full', '2013-11-19 07:05:37', '2013-11-19 07:08:01', NULL, 0),
(8, '', 'Flat View', '', '/dashboard/sitemap/explore', '2013-11-19 07:05:38', '2013-11-19 07:08:02', NULL, 0),
(9, '', 'Page Search', '', '/dashboard/sitemap/search', '2013-11-19 07:05:38', '2013-11-19 07:08:03', NULL, 0),
(11, '', 'File Manager', '', '/dashboard/files/search', '2013-11-19 07:05:39', '2013-11-19 07:08:04', NULL, 0),
(12, '', 'Attributes', '', '/dashboard/files/attributes', '2013-11-19 07:05:40', '2013-11-19 07:08:06', NULL, 0),
(13, '', 'File Sets', '', '/dashboard/files/sets', '2013-11-19 07:05:41', '2013-11-19 07:08:08', NULL, 0),
(14, '', 'Add File Set', '', '/dashboard/files/add_set', '2013-11-19 07:05:41', '2013-11-19 07:08:10', NULL, 0),
(15, '', 'Members', 'Add and manage the user accounts and groups on your website.', '/dashboard/users', '2013-11-19 07:05:42', '2013-11-19 07:08:11', NULL, 0),
(16, '', 'Search Users', '', '/dashboard/users/search', '2013-11-19 07:05:44', '2013-11-19 07:08:12', NULL, 0),
(17, '', 'User Groups', '', '/dashboard/users/groups', '2013-11-19 07:05:47', '2013-11-19 07:08:13', NULL, 0),
(18, '', 'Attributes', '', '/dashboard/users/attributes', '2013-11-19 07:05:49', '2013-11-19 07:08:14', NULL, 0),
(19, '', 'Add User', '', '/dashboard/users/add', '2013-11-19 07:05:50', '2013-11-19 07:08:14', NULL, 0),
(20, '', 'Add Group', '', '/dashboard/users/add_group', '2013-11-19 07:05:52', '2013-11-19 07:08:15', NULL, 0),
(21, '', 'Group Sets', '', '/dashboard/users/group_sets', '2013-11-19 07:05:53', '2013-11-19 07:08:16', NULL, 0),
(22, '', 'Reports', 'Get data from forms and logs.', '/dashboard/reports', '2013-11-19 07:05:55', '2013-11-19 07:08:16', NULL, 0),
(23, '', 'Statistics', 'View your site activity.', '/dashboard/reports/statistics', '2013-11-19 07:05:57', '2013-11-19 07:08:17', NULL, 0),
(24, '', 'Form Results', 'Get submission data.', '/dashboard/reports/forms', '2013-11-19 07:05:58', '2013-11-19 07:08:18', NULL, 0),
(25, '', 'Surveys', '', '/dashboard/reports/surveys', '2013-11-19 07:06:01', '2013-11-19 07:08:18', NULL, 0),
(26, '', 'Logs', '', '/dashboard/reports/logs', '2013-11-19 07:06:02', '2013-11-19 07:08:19', NULL, 0),
(28, '', 'Themes', 'Reskin your site.', '/dashboard/pages/themes', '2013-11-19 07:06:06', '2013-11-19 07:08:19', NULL, 0),
(29, '', 'Add', '', '/dashboard/pages/themes/add', '2013-11-19 07:06:07', '2013-11-19 07:08:19', NULL, 0),
(30, '', 'Inspect', '', '/dashboard/pages/themes/inspect', '2013-11-19 07:06:08', '2013-11-19 07:08:20', NULL, 0),
(31, '', 'Customize', '', '/dashboard/pages/themes/customize', '2013-11-19 07:06:10', '2013-11-19 07:08:20', NULL, 0),
(32, '', 'Page Types', 'What goes in your site.', '/dashboard/pages/types', '2013-11-19 07:06:14', '2013-11-19 07:08:20', NULL, 0),
(34, '', 'Attributes', '', '/dashboard/pages/attributes', '2013-11-19 07:06:19', '2013-11-19 07:08:21', NULL, 0),
(35, '', 'Single Pages', '', '/dashboard/pages/single', '2013-11-19 07:06:22', '2013-11-19 07:08:22', NULL, 0),
(36, '', 'Workflow', '', '/dashboard/workflow', '2013-11-19 07:06:23', '2013-11-19 07:08:22', NULL, 0),
(37, '', 'Workflow List', '', '/dashboard/workflow/list', '2013-11-19 07:06:25', '2013-11-19 07:08:23', NULL, 0),
(38, '', 'Waiting for Me', '', '/dashboard/workflow/me', '2013-11-19 07:06:26', '2013-11-19 07:08:23', NULL, 0),
(40, '', 'Stacks', 'Share content across your site.', '/dashboard/blocks/stacks', '2013-11-19 07:06:28', '2013-11-19 07:08:24', NULL, 0),
(41, '', 'Block & Stack Permissions', 'Control who can add blocks and stacks on your site.', '/dashboard/blocks/permissions', '2013-11-19 07:06:29', '2013-11-19 07:08:24', NULL, 0),
(42, '', 'Stack List', '', '/dashboard/blocks/stacks/list', '2013-11-19 07:06:30', '2013-11-19 07:08:25', NULL, 0),
(43, '', 'Block Types', 'Manage the installed block types in your site.', '/dashboard/blocks/types', '2013-11-19 07:06:32', '2013-11-19 07:08:26', NULL, 0),
(44, '', 'Extend concrete5', 'Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.', '/dashboard/extend', '2013-11-19 07:06:33', '2013-11-19 07:08:28', NULL, 0),
(45, '', 'Dashboard', '', '/dashboard/news', '2013-11-19 07:06:34', '2013-11-19 07:08:29', NULL, 0),
(46, '', 'Add Functionality', 'Install add-ons & themes.', '/dashboard/extend/install', '2013-11-19 07:06:38', '2013-11-19 07:08:29', NULL, 0),
(47, '', 'Update Add-Ons', 'Update your installed packages.', '/dashboard/extend/update', '2013-11-19 07:06:39', '2013-11-19 07:08:30', NULL, 0),
(48, '', 'Connect to the Community', 'Connect to the concrete5 community.', '/dashboard/extend/connect', '2013-11-19 07:06:41', '2013-11-19 07:08:30', NULL, 0),
(49, '', 'Get More Themes', 'Download themes from concrete5.org.', '/dashboard/extend/themes', '2013-11-19 07:06:43', '2013-11-19 07:08:30', NULL, 0),
(50, '', 'Get More Add-Ons', 'Download add-ons from concrete5.org.', '/dashboard/extend/add-ons', '2013-11-19 07:06:44', '2013-11-19 07:08:30', NULL, 0),
(51, '', 'System & Settings', 'Secure and setup your site.', '/dashboard/system', '2013-11-19 07:06:45', '2013-11-19 07:08:31', NULL, 0),
(53, '', 'Site Name', '', '/dashboard/system/basics/site_name', '2013-11-19 07:06:46', '2013-11-19 07:08:31', NULL, 0),
(54, '', 'Bookmark Icons', 'Bookmark icon and mobile home screen icon setup.', '/dashboard/system/basics/icons', '2013-11-19 07:06:46', '2013-11-19 07:08:31', NULL, 0),
(55, '', 'Rich Text Editor', '', '/dashboard/system/basics/editor', '2013-11-19 07:06:46', '2013-11-19 07:08:31', NULL, 0),
(56, '', 'Languages', '', '/dashboard/system/basics/multilingual', '2013-11-19 07:06:47', '2013-11-19 07:08:31', NULL, 0),
(57, '', 'Time Zone', '', '/dashboard/system/basics/timezone', '2013-11-19 07:06:48', '2013-11-19 07:08:32', NULL, 0),
(58, '', 'Interface Preferences', '', '/dashboard/system/basics/interface', '2013-11-19 07:06:50', '2013-11-19 07:08:32', NULL, 0),
(60, '', 'Pretty URLs', '', '/dashboard/system/seo/urls', '2013-11-19 07:06:51', '2013-11-19 07:08:32', NULL, 0),
(61, '', 'Bulk SEO Updater', '', '/dashboard/system/seo/bulk_seo_tool', '2013-11-19 07:06:52', '2013-11-19 07:08:32', NULL, 0),
(62, '', 'Tracking Codes', '', '/dashboard/system/seo/tracking_codes', '2013-11-19 07:06:54', '2013-11-19 07:08:32', NULL, 0),
(63, '', 'Excluded URL Word List', '', '/dashboard/system/seo/excluded', '2013-11-19 07:06:55', '2013-11-19 07:08:32', NULL, 0),
(64, '', 'Statistics', '', '/dashboard/system/seo/statistics', '2013-11-19 07:06:57', '2013-11-19 07:08:33', NULL, 0),
(65, '', 'Search Index', '', '/dashboard/system/seo/search_index', '2013-11-19 07:06:58', '2013-11-19 07:08:33', NULL, 0),
(67, '', 'Cache & Speed Settings', '', '/dashboard/system/optimization/cache', '2013-11-19 07:07:02', '2013-11-19 07:08:33', NULL, 0),
(68, '', 'Clear Cache', '', '/dashboard/system/optimization/clear_cache', '2013-11-19 07:07:03', '2013-11-19 07:08:33', NULL, 0),
(69, '', 'Automated Jobs', '', '/dashboard/system/optimization/jobs', '2013-11-19 07:07:03', '2013-11-19 07:08:33', NULL, 0),
(71, '', 'Site Access', '', '/dashboard/system/permissions/site', '2013-11-19 07:07:04', '2013-11-19 07:08:33', NULL, 0),
(72, '', 'File Manager Permissions', '', '/dashboard/system/permissions/files', '2013-11-19 07:07:05', '2013-11-19 07:08:34', NULL, 0),
(73, '', 'Allowed File Types', '', '/dashboard/system/permissions/file_types', '2013-11-19 07:07:05', '2013-11-19 07:08:34', NULL, 0),
(74, '', 'Task Permissions', '', '/dashboard/system/permissions/tasks', '2013-11-19 07:07:06', '2013-11-19 07:08:34', NULL, 0),
(77, '', 'IP Blacklist', '', '/dashboard/system/permissions/ip_blacklist', '2013-11-19 07:07:07', '2013-11-19 07:08:34', NULL, 0),
(78, '', 'Captcha Setup', '', '/dashboard/system/permissions/captcha', '2013-11-19 07:07:09', '2013-11-19 07:08:34', NULL, 0),
(79, '', 'Spam Control', '', '/dashboard/system/permissions/antispam', '2013-11-19 07:07:09', '2013-11-19 07:08:35', NULL, 0),
(80, '', 'Maintenance Mode', '', '/dashboard/system/permissions/maintenance_mode', '2013-11-19 07:07:11', '2013-11-19 07:08:35', NULL, 0),
(82, '', 'Login Destination', '', '/dashboard/system/registration/postlogin', '2013-11-19 07:07:17', '2013-11-19 07:08:35', NULL, 0),
(83, '', 'Public Profiles', '', '/dashboard/system/registration/profiles', '2013-11-19 07:07:18', '2013-11-19 07:08:36', NULL, 0),
(84, '', 'Public Registration', '', '/dashboard/system/registration/public_registration', '2013-11-19 07:07:19', '2013-11-19 07:08:36', NULL, 0),
(85, '', 'Email', 'Control how your site send and processes mail.', '/dashboard/system/mail', '2013-11-19 07:07:21', '2013-11-19 07:08:36', NULL, 0),
(86, '', 'SMTP Method', '', '/dashboard/system/mail/method', '2013-11-19 07:07:23', '2013-11-19 07:08:37', NULL, 0),
(87, '', 'Email Importers', '', '/dashboard/system/mail/importers', '2013-11-19 07:07:24', '2013-11-19 07:08:37', NULL, 0),
(88, '', 'Attributes', 'Setup attributes for pages, users, files and more.', '/dashboard/system/attributes', '2013-11-19 07:07:26', '2013-11-19 07:08:37', NULL, 0),
(89, '', 'Sets', 'Group attributes into sets for easier organization', '/dashboard/system/attributes/sets', '2013-11-19 07:07:29', '2013-11-19 07:08:38', NULL, 0),
(90, '', 'Types', 'Choose which attribute types are available for different items.', '/dashboard/system/attributes/types', '2013-11-19 07:07:30', '2013-11-19 07:08:38', NULL, 0),
(91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(92, '', 'Environment Information', '', '/dashboard/system/environment/info', '2013-11-19 07:07:33', '2013-11-19 07:08:39', NULL, 0),
(93, '', 'Debug Settings', '', '/dashboard/system/environment/debug', '2013-11-19 07:07:34', '2013-11-19 07:08:41', NULL, 0),
(94, '', 'Logging Settings', '', '/dashboard/system/environment/logging', '2013-11-19 07:07:36', '2013-11-19 07:08:41', NULL, 0),
(95, '', 'File Storage Locations', '', '/dashboard/system/environment/file_storage_locations', '2013-11-19 07:07:37', '2013-11-19 07:08:42', NULL, 0),
(96, '', 'Proxy Server', '', '/dashboard/system/environment/proxy', '2013-11-19 07:07:43', '2013-11-19 07:08:42', NULL, 0),
(97, '', 'Backup & Restore', 'Backup or restore your website.', '/dashboard/system/backup_restore', '2013-11-19 07:07:47', '2013-11-19 07:08:43', NULL, 0),
(99, '', 'Update concrete5', '', '/dashboard/system/backup_restore/update', '2013-11-19 07:07:53', '2013-11-19 07:08:43', NULL, 0),
(100, '', 'Database XML', '', '/dashboard/system/backup_restore/database', '2013-11-19 07:07:54', '2013-11-19 07:08:44', NULL, 0),
(106, '	Welcome to concrete5.\n						It''s easy to edit content and add pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor''s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer''s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer''s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive''s Guide \n						  ', 'Welcome to concrete5', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '/dashboard/welcome', '2013-11-19 07:07:57', '2013-11-19 07:08:50', NULL, 0),
(105, '', 'Customize Dashboard Home', '', '/dashboard/home', '2013-11-19 07:07:57', '2013-11-19 07:08:58', NULL, 0),
(1, 'Willkommen bei der SULMAG Maschinenbau AG\r\n Dienstleistungen rund um die Metallbearbeitung. Wir produzieren Maschinenbauteile ganz nach Ihren Wünschen. Wir bearbeiten alle Materialien in "fast" allen Grössen. Drehen, fräsen, hobeln, bohren, schweissen, etc. und dies alles aus einer Hand. \r\n Unsere Spezialitäten: \r\n\r\nKleinserien\r\nEinzelteile\r\nPrototypen\r\n\r\n Finden Sie mehr heraus über uns und unsere Produktion auf den nächsten Seiten.  ', 'Home', '', NULL, '2013-11-19 07:04:48', '2013-12-11 09:49:03', NULL, 0),
(123, ' SULMAG Maschinenbau AG • Bahnhofstrasse 4 • 9536 Schwerzenbach • Tel. +41 (0)71 923 21 23 • info@sulmag.ch  ', 'Fusszeile', NULL, '/!stacks/fusszeile', '2013-11-19 11:09:43', '2013-11-19 11:11:53', NULL, 0),
(124, 'Über Uns\r\n Die Sulmag Maschinenbau AG in Schwarzenbach versteht sich als Zulieferfirma der Energie-, Maschinenbau-, Lebensmittel-, Verpackungs-, Fahrzeug-, Entsorgungs-, sowie der Bauindustrie. Die Kernkompetenzen liegen in der spanabhebenden Bearbeitung von grossvolumigen Werkstücken. Mit einem flexiblem und motivierten Team von Fachleuten sind wir in der Lage, auch kurzfristig Ihre Wünsche zu erfüllen. \r\n 1968    Gründungsjahr als Maschinenbau Sulgen AG in Sulgen. 1972    Umzug der Firma nach Schwarzenbach und Namensänderung in Sulmag Maschinenbau AG. \r\n Geschäftsführer:              Hr. A. Shala Stv. Geschäftsführer:       Hr. W. Brändle \r\n Öffnungszeiten: Bürozeiten, Mo. bis Do.:  07:30 bis 11:30; 13:30 bis 17:00 Bürozeiten, Fr.:                07:30 bis 11:30; 13:30 bis 16:30 Spedition, Mo. bis Do.:    07:00 bis 12:00; 13:00 bis 17:00 Spedition, Fr.:                  07:00 bis 12:00; 13:00 bis 16:30  ', 'Über uns', '', '/ueberuns', '2013-11-19 11:35:00', '2013-12-11 10:54:37', NULL, 0),
(125, 'Produktion\r\n Wir bieten Ihnendie Möglichkeit, Stangenmaterialien bis Ø 220mm, 260 x 150mm auf unseren  Bandsägeautomaten zuzuschneiden. Bis 4000mm Länge sind wir in der Lage, diese auch zu richten  (bis 16t Richtkraft). \r\n\r\nHobeln: Hobelmaschine Waldrich Coburg Wir hobeln Ihre Werkstücke auch in Übergrössen. Max. zu bearbeitende Fläche L=5000mm, B=1640mm, H=1200mm\r\nDrehen: Spitzenweite normal: 4000 mm, Spitzenweite ausgezogen: 6000 mm, Spitzenhöhe: 500 mm, Durchgang über Bett: 1000 mm, Durchgang über Schlitten: 740 mm, Durchgang in Kröpfung: Ø 1500 mm / L=2000mm, Durchlass Hauptspindel: Ø 100 mm,Durchlass Hauptspindel: Ø 120 mm, Spitzenweite: 3000 mm\r\nFräsen:   Vertikalfräsen: Fläche: 350 x 1250 mm, Quer: 250 mm, Längs: 850 mm, Horizontalbohrwerk: Fläche: 1240 x 1240 mm, Quer:1570 mm, Vertikal: 1100 mm\r\nBohren:  Horizontal: WZ-Aufnahme: ISO 50, Fläche: 1240 x 1240 mm, Quer: 1570 mm, Vertikal: 1100 mm, Vertikal: WZ-Aufnahme: MK 5, Fläche: 1250 x 1400 mm, Quer: 1450 mm, Längs: 1200 mm\r\nSchleifen: Flachschleifarbeiten können wir anbieten auf unserer; Diskusschleifmaschine "Stefor" 300 x 1000 mm Kleine Maschinen sind bei uns im Einsatz für das nachschleifen eigenen Werkzeuge\r\n ', 'Produktion', '', '/produktion', '2013-11-19 11:36:00', '2013-12-11 10:52:19', NULL, 0),
(126, 'Kontakt\r\n SULMAG AG Maschinenbau  Bahnhofstrasse 4  9536 Schwarzenbach \r\n Telefon: +41 71 923 21 23  Fax: +41 71 923 21 94 \r\n Email: info@sulmag.ch  Karte ', 'Kontakt', '', '/kontakt', '2013-11-19 11:36:00', '2013-12-11 08:57:13', NULL, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PageStatistics`
--

CREATE TABLE IF NOT EXISTS `PageStatistics` (
`pstID` bigint(20) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=1240 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `PageStatistics`
--

INSERT INTO `PageStatistics` (`pstID`, `cID`, `date`, `timestamp`, `uID`) VALUES
(1, 1, '2013-11-19', '2013-11-19 07:10:36', 1),
(2, 106, '2013-11-19', '2013-11-19 07:10:37', 1),
(3, 2, '2013-11-19', '2013-11-19 07:43:11', 1),
(4, 32, '2013-11-19', '2013-11-19 07:43:14', 1),
(5, 28, '2013-11-19', '2013-11-19 07:43:20', 1),
(6, 28, '2013-11-19', '2013-11-19 07:43:25', 1),
(7, 30, '2013-11-19', '2013-11-19 07:43:25', 1),
(8, 30, '2013-11-19', '2013-11-19 07:43:32', 1),
(9, 27, '2013-11-19', '2013-11-19 07:43:38', 1),
(10, 28, '2013-11-19', '2013-11-19 07:43:38', 1),
(11, 28, '2013-11-19', '2013-11-19 07:43:41', 1),
(12, 28, '2013-11-19', '2013-11-19 07:43:43', 1),
(13, 28, '2013-11-19', '2013-11-19 07:43:44', 1),
(14, 28, '2013-11-19', '2013-11-19 07:43:46', 1),
(15, 28, '2013-11-19', '2013-11-19 07:43:48', 1),
(16, 28, '2013-11-19', '2013-11-19 07:43:51', 1),
(17, 7, '2013-11-19', '2013-11-19 07:43:57', 1),
(18, 1, '2013-11-19', '2013-11-19 07:44:47', 1),
(19, 2, '2013-11-19', '2013-11-19 07:50:06', 1),
(20, 7, '2013-11-19', '2013-11-19 07:50:07', 1),
(21, 1, '2013-11-19', '2013-11-19 07:57:17', 1),
(22, 1, '2013-11-19', '2013-11-19 07:58:05', 1),
(23, 1, '2013-11-19', '2013-11-19 07:59:46', 1),
(24, 1, '2013-11-19', '2013-11-19 08:00:44', 1),
(25, 1, '2013-11-19', '2013-11-19 08:00:45', 1),
(26, 1, '2013-11-19', '2013-11-19 08:00:46', 1),
(27, 1, '2013-11-19', '2013-11-19 08:00:46', 1),
(28, 1, '2013-11-19', '2013-11-19 08:00:57', 1),
(29, 1, '2013-11-19', '2013-11-19 08:01:20', 1),
(30, 1, '2013-11-19', '2013-11-19 08:01:22', 1),
(31, 1, '2013-11-19', '2013-11-19 08:01:45', 1),
(32, 1, '2013-11-19', '2013-11-19 08:01:46', 1),
(33, 1, '2013-11-19', '2013-11-19 08:01:47', 1),
(34, 1, '2013-11-19', '2013-11-19 08:01:47', 1),
(35, 1, '2013-11-19', '2013-11-19 08:01:47', 1),
(36, 1, '2013-11-19', '2013-11-19 08:01:48', 1),
(37, 1, '2013-11-19', '2013-11-19 08:01:49', 1),
(38, 1, '2013-11-19', '2013-11-19 08:01:49', 1),
(39, 1, '2013-11-19', '2013-11-19 08:02:33', 1),
(40, 1, '2013-11-19', '2013-11-19 08:02:34', 1),
(41, 1, '2013-11-19', '2013-11-19 08:02:35', 1),
(42, 1, '2013-11-19', '2013-11-19 08:03:02', 1),
(43, 1, '2013-11-19', '2013-11-19 08:03:04', 1),
(44, 1, '2013-11-19', '2013-11-19 08:03:29', 1),
(45, 1, '2013-11-19', '2013-11-19 08:53:12', 1),
(46, 1, '2013-11-19', '2013-11-19 08:53:13', 1),
(47, 1, '2013-11-19', '2013-11-19 08:53:14', 1),
(48, 1, '2013-11-19', '2013-11-19 08:53:14', 1),
(49, 1, '2013-11-19', '2013-11-19 08:53:15', 1),
(50, 1, '2013-11-19', '2013-11-19 08:53:15', 1),
(51, 1, '2013-11-19', '2013-11-19 08:53:16', 1),
(52, 1, '2013-11-19', '2013-11-19 08:53:16', 1),
(53, 1, '2013-11-19', '2013-11-19 08:55:30', 1),
(54, 1, '2013-11-19', '2013-11-19 08:55:58', 1),
(55, 1, '2013-11-19', '2013-11-19 08:55:59', 1),
(56, 1, '2013-11-19', '2013-11-19 08:56:00', 1),
(57, 1, '2013-11-19', '2013-11-19 08:56:00', 1),
(58, 1, '2013-11-19', '2013-11-19 08:56:01', 1),
(59, 1, '2013-11-19', '2013-11-19 08:56:01', 1),
(60, 1, '2013-11-19', '2013-11-19 08:56:01', 1),
(61, 1, '2013-11-19', '2013-11-19 08:56:01', 1),
(62, 1, '2013-11-19', '2013-11-19 08:56:02', 1),
(63, 1, '2013-11-19', '2013-11-19 08:56:12', 1),
(64, 1, '2013-11-19', '2013-11-19 08:56:13', 1),
(65, 1, '2013-11-19', '2013-11-19 08:56:22', 1),
(66, 1, '2013-11-19', '2013-11-19 08:56:52', 1),
(67, 1, '2013-11-19', '2013-11-19 08:57:23', 1),
(68, 1, '2013-11-19', '2013-11-19 08:57:46', 1),
(69, 1, '2013-11-19', '2013-11-19 08:58:12', 1),
(70, 1, '2013-11-19', '2013-11-19 08:58:32', 1),
(71, 1, '2013-11-19', '2013-11-19 08:59:01', 1),
(72, 1, '2013-11-19', '2013-11-19 08:59:55', 1),
(73, 1, '2013-11-19', '2013-11-19 09:00:03', 1),
(74, 1, '2013-11-19', '2013-11-19 09:00:16', 1),
(75, 1, '2013-11-19', '2013-11-19 09:00:28', 1),
(76, 1, '2013-11-19', '2013-11-19 09:00:42', 1),
(77, 1, '2013-11-19', '2013-11-19 09:00:53', 1),
(78, 1, '2013-11-19', '2013-11-19 09:01:28', 1),
(79, 1, '2013-11-19', '2013-11-19 09:01:30', 1),
(80, 1, '2013-11-19', '2013-11-19 09:23:44', 1),
(81, 1, '2013-11-19', '2013-11-19 09:23:45', 1),
(82, 1, '2013-11-19', '2013-11-19 09:23:56', 1),
(83, 1, '2013-11-19', '2013-11-19 09:24:14', 1),
(84, 1, '2013-11-19', '2013-11-19 09:25:58', 1),
(85, 1, '2013-11-19', '2013-11-19 09:26:12', 1),
(86, 1, '2013-11-19', '2013-11-19 09:26:24', 1),
(87, 1, '2013-11-19', '2013-11-19 09:26:25', 1),
(88, 1, '2013-11-19', '2013-11-19 09:26:25', 1),
(89, 1, '2013-11-19', '2013-11-19 09:26:33', 1),
(90, 1, '2013-11-19', '2013-11-19 09:27:53', 1),
(91, 1, '2013-11-19', '2013-11-19 09:33:50', 1),
(92, 1, '2013-11-19', '2013-11-19 09:34:34', 1),
(93, 1, '2013-11-19', '2013-11-19 09:34:35', 1),
(94, 1, '2013-11-19', '2013-11-19 09:34:35', 1),
(95, 1, '2013-11-19', '2013-11-19 09:34:47', 1),
(96, 1, '2013-11-19', '2013-11-19 09:34:48', 1),
(97, 1, '2013-11-19', '2013-11-19 09:34:49', 1),
(98, 1, '2013-11-19', '2013-11-19 09:34:49', 1),
(99, 1, '2013-11-19', '2013-11-19 09:34:49', 1),
(100, 1, '2013-11-19', '2013-11-19 09:34:49', 1),
(101, 1, '2013-11-19', '2013-11-19 09:34:49', 1),
(102, 1, '2013-11-19', '2013-11-19 09:34:50', 1),
(103, 1, '2013-11-19', '2013-11-19 09:35:28', 1),
(104, 1, '2013-11-19', '2013-11-19 09:35:29', 1),
(105, 1, '2013-11-19', '2013-11-19 09:35:46', 1),
(106, 1, '2013-11-19', '2013-11-19 09:35:47', 1),
(107, 1, '2013-11-19', '2013-11-19 09:35:47', 1),
(108, 1, '2013-11-19', '2013-11-19 09:35:48', 1),
(109, 1, '2013-11-19', '2013-11-19 09:36:06', 1),
(110, 1, '2013-11-19', '2013-11-19 09:43:02', 1),
(111, 1, '2013-11-19', '2013-11-19 09:43:15', 1),
(112, 1, '2013-11-19', '2013-11-19 09:43:38', 1),
(113, 1, '2013-11-19', '2013-11-19 09:43:49', 1),
(114, 1, '2013-11-19', '2013-11-19 09:43:54', 1),
(115, 1, '2013-11-19', '2013-11-19 09:49:24', 1),
(116, 1, '2013-11-19', '2013-11-19 09:49:25', 1),
(117, 1, '2013-11-19', '2013-11-19 09:49:45', 1),
(118, 1, '2013-11-19', '2013-11-19 09:50:07', 1),
(119, 1, '2013-11-19', '2013-11-19 09:50:13', 1),
(120, 1, '2013-11-19', '2013-11-19 09:50:28', 1),
(121, 1, '2013-11-19', '2013-11-19 09:50:50', 1),
(122, 1, '2013-11-19', '2013-11-19 09:50:51', 1),
(123, 1, '2013-11-19', '2013-11-19 09:50:51', 1),
(124, 1, '2013-11-19', '2013-11-19 09:50:52', 1),
(125, 1, '2013-11-19', '2013-11-19 09:50:52', 1),
(126, 1, '2013-11-19', '2013-11-19 09:50:53', 1),
(127, 1, '2013-11-19', '2013-11-19 09:51:06', 1),
(128, 1, '2013-11-19', '2013-11-19 09:51:06', 1),
(129, 1, '2013-11-19', '2013-11-19 09:51:07', 1),
(130, 1, '2013-11-19', '2013-11-19 09:51:07', 1),
(131, 1, '2013-11-19', '2013-11-19 09:51:07', 1),
(132, 1, '2013-11-19', '2013-11-19 09:51:17', 1),
(133, 1, '2013-11-19', '2013-11-19 09:51:18', 1),
(134, 1, '2013-11-19', '2013-11-19 09:51:19', 1),
(135, 1, '2013-11-19', '2013-11-19 09:51:19', 1),
(136, 1, '2013-11-19', '2013-11-19 09:51:19', 1),
(137, 1, '2013-11-19', '2013-11-19 09:51:20', 1),
(138, 1, '2013-11-19', '2013-11-19 09:51:31', 1),
(139, 1, '2013-11-19', '2013-11-19 09:51:32', 1),
(140, 1, '2013-11-19', '2013-11-19 09:51:32', 1),
(141, 1, '2013-11-19', '2013-11-19 09:51:33', 1),
(142, 1, '2013-11-19', '2013-11-19 09:51:33', 1),
(143, 1, '2013-11-19', '2013-11-19 09:51:33', 1),
(144, 1, '2013-11-19', '2013-11-19 09:52:02', 1),
(145, 1, '2013-11-19', '2013-11-19 09:52:03', 1),
(146, 1, '2013-11-19', '2013-11-19 09:52:12', 1),
(147, 1, '2013-11-19', '2013-11-19 09:52:13', 1),
(148, 1, '2013-11-19', '2013-11-19 09:52:13', 1),
(149, 1, '2013-11-19', '2013-11-19 09:52:13', 1),
(150, 1, '2013-11-19', '2013-11-19 09:52:14', 1),
(151, 1, '2013-11-19', '2013-11-19 09:52:14', 1),
(152, 1, '2013-11-19', '2013-11-19 09:52:14', 1),
(153, 1, '2013-11-19', '2013-11-19 09:52:15', 1),
(154, 1, '2013-11-19', '2013-11-19 09:52:16', 1),
(155, 1, '2013-11-19', '2013-11-19 09:52:36', 1),
(156, 1, '2013-11-19', '2013-11-19 09:52:37', 1),
(157, 1, '2013-11-19', '2013-11-19 09:52:45', 1),
(158, 1, '2013-11-19', '2013-11-19 09:52:46', 1),
(159, 1, '2013-11-19', '2013-11-19 09:52:46', 1),
(160, 1, '2013-11-19', '2013-11-19 09:53:07', 1),
(161, 1, '2013-11-19', '2013-11-19 09:53:19', 1),
(162, 1, '2013-11-19', '2013-11-19 09:53:31', 1),
(163, 1, '2013-11-19', '2013-11-19 09:53:41', 1),
(164, 1, '2013-11-19', '2013-11-19 09:53:42', 1),
(165, 1, '2013-11-19', '2013-11-19 09:53:49', 1),
(166, 1, '2013-11-19', '2013-11-19 09:53:49', 1),
(167, 1, '2013-11-19', '2013-11-19 09:53:49', 1),
(168, 1, '2013-11-19', '2013-11-19 09:53:50', 1),
(169, 1, '2013-11-19', '2013-11-19 09:53:57', 1),
(170, 1, '2013-11-19', '2013-11-19 09:53:58', 1),
(171, 1, '2013-11-19', '2013-11-19 09:53:59', 1),
(172, 1, '2013-11-19', '2013-11-19 09:53:59', 1),
(173, 1, '2013-11-19', '2013-11-19 09:53:59', 1),
(174, 1, '2013-11-19', '2013-11-19 09:54:00', 1),
(175, 1, '2013-11-19', '2013-11-19 09:54:00', 1),
(176, 1, '2013-11-19', '2013-11-19 09:54:00', 1),
(177, 1, '2013-11-19', '2013-11-19 09:54:00', 1),
(178, 1, '2013-11-19', '2013-11-19 09:54:01', 1),
(179, 1, '2013-11-19', '2013-11-19 09:54:06', 1),
(180, 1, '2013-11-19', '2013-11-19 09:54:07', 1),
(181, 1, '2013-11-19', '2013-11-19 09:54:17', 1),
(182, 1, '2013-11-19', '2013-11-19 09:54:18', 1),
(183, 1, '2013-11-19', '2013-11-19 09:54:32', 1),
(184, 1, '2013-11-19', '2013-11-19 09:54:39', 1),
(185, 1, '2013-11-19', '2013-11-19 09:55:05', 1),
(186, 1, '2013-11-19', '2013-11-19 09:55:12', 1),
(187, 1, '2013-11-19', '2013-11-19 09:55:19', 1),
(188, 1, '2013-11-19', '2013-11-19 09:55:26', 1),
(189, 1, '2013-11-19', '2013-11-19 09:55:37', 1),
(190, 1, '2013-11-19', '2013-11-19 09:55:45', 1),
(191, 1, '2013-11-19', '2013-11-19 09:55:57', 1),
(192, 1, '2013-11-19', '2013-11-19 09:56:04', 1),
(193, 1, '2013-11-19', '2013-11-19 09:56:05', 1),
(194, 1, '2013-11-19', '2013-11-19 09:56:05', 1),
(195, 1, '2013-11-19', '2013-11-19 09:56:06', 1),
(196, 1, '2013-11-19', '2013-11-19 09:56:06', 1),
(197, 1, '2013-11-19', '2013-11-19 09:56:06', 1),
(198, 1, '2013-11-19', '2013-11-19 09:56:16', 1),
(199, 1, '2013-11-19', '2013-11-19 09:56:28', 1),
(200, 1, '2013-11-19', '2013-11-19 09:56:36', 1),
(201, 1, '2013-11-19', '2013-11-19 09:57:52', 1),
(202, 1, '2013-11-19', '2013-11-19 09:58:08', 1),
(203, 1, '2013-11-19', '2013-11-19 09:58:20', 1),
(204, 1, '2013-11-19', '2013-11-19 09:58:31', 1),
(205, 1, '2013-11-19', '2013-11-19 09:58:51', 1),
(206, 1, '2013-11-19', '2013-11-19 09:58:51', 1),
(207, 1, '2013-11-19', '2013-11-19 09:59:02', 1),
(208, 1, '2013-11-19', '2013-11-19 09:59:03', 1),
(209, 1, '2013-11-19', '2013-11-19 09:59:13', 1),
(210, 1, '2013-11-19', '2013-11-19 09:59:13', 1),
(211, 1, '2013-11-19', '2013-11-19 09:59:13', 1),
(212, 1, '2013-11-19', '2013-11-19 10:11:30', 1),
(213, 1, '2013-11-19', '2013-11-19 10:11:45', 1),
(214, 1, '2013-11-19', '2013-11-19 10:14:18', 1),
(215, 1, '2013-11-19', '2013-11-19 10:14:35', 1),
(216, 1, '2013-11-19', '2013-11-19 10:16:53', 1),
(217, 1, '2013-11-19', '2013-11-19 10:16:56', 1),
(218, 1, '2013-11-19', '2013-11-19 10:19:05', 1),
(219, 1, '2013-11-19', '2013-11-19 10:20:25', 1),
(220, 1, '2013-11-19', '2013-11-19 10:20:26', 1),
(221, 1, '2013-11-19', '2013-11-19 10:20:26', 1),
(222, 1, '2013-11-19', '2013-11-19 10:20:27', 1),
(223, 1, '2013-11-19', '2013-11-19 10:20:27', 1),
(224, 1, '2013-11-19', '2013-11-19 10:20:27', 1),
(225, 1, '2013-11-19', '2013-11-19 10:28:51', 1),
(226, 1, '2013-11-19', '2013-11-19 10:29:23', 1),
(227, 1, '2013-11-19', '2013-11-19 10:29:36', 1),
(228, 1, '2013-11-19', '2013-11-19 10:29:38', 1),
(229, 1, '2013-11-19', '2013-11-19 10:29:57', 1),
(230, 1, '2013-11-19', '2013-11-19 10:30:27', 1),
(231, 1, '2013-11-19', '2013-11-19 10:30:46', 1),
(232, 1, '2013-11-19', '2013-11-19 10:30:48', 1),
(233, 1, '2013-11-19', '2013-11-19 10:30:49', 1),
(234, 1, '2013-11-19', '2013-11-19 10:30:50', 1),
(235, 1, '2013-11-19', '2013-11-19 10:32:35', 1),
(236, 1, '2013-11-19', '2013-11-19 10:32:38', 1),
(237, 1, '2013-11-19', '2013-11-19 10:33:50', 1),
(238, 1, '2013-11-19', '2013-11-19 10:33:51', 1),
(239, 1, '2013-11-19', '2013-11-19 10:33:51', 1),
(240, 1, '2013-11-19', '2013-11-19 10:33:51', 1),
(241, 1, '2013-11-19', '2013-11-19 10:33:52', 1),
(242, 1, '2013-11-19', '2013-11-19 10:33:53', 1),
(243, 1, '2013-11-19', '2013-11-19 10:34:05', 0),
(244, 1, '2013-11-19', '2013-11-19 10:34:24', 0),
(245, 1, '2013-11-19', '2013-11-19 10:34:24', 0),
(246, 1, '2013-11-19', '2013-11-19 10:34:25', 0),
(247, 1, '2013-11-19', '2013-11-19 10:34:25', 0),
(248, 1, '2013-11-19', '2013-11-19 10:34:25', 0),
(249, 1, '2013-11-19', '2013-11-19 10:36:20', 1),
(250, 1, '2013-11-19', '2013-11-19 10:36:21', 1),
(251, 1, '2013-11-19', '2013-11-19 10:36:22', 1),
(252, 1, '2013-11-19', '2013-11-19 10:36:22', 1),
(253, 1, '2013-11-19', '2013-11-19 10:36:23', 1),
(254, 1, '2013-11-19', '2013-11-19 10:36:23', 1),
(255, 1, '2013-11-19', '2013-11-19 10:36:24', 1),
(256, 1, '2013-11-19', '2013-11-19 10:36:24', 1),
(257, 1, '2013-11-19', '2013-11-19 10:36:25', 1),
(258, 1, '2013-11-19', '2013-11-19 10:36:25', 1),
(259, 1, '2013-11-19', '2013-11-19 10:36:37', 1),
(260, 1, '2013-11-19', '2013-11-19 10:36:51', 1),
(261, 1, '2013-11-19', '2013-11-19 10:37:38', 1),
(262, 1, '2013-11-19', '2013-11-19 10:37:44', 1),
(263, 1, '2013-11-19', '2013-11-19 10:37:45', 1),
(264, 1, '2013-11-19', '2013-11-19 10:38:31', 1),
(265, 1, '2013-11-19', '2013-11-19 10:38:48', 1),
(266, 1, '2013-11-19', '2013-11-19 10:38:51', 1),
(267, 1, '2013-11-19', '2013-11-19 10:38:53', 1),
(268, 1, '2013-11-19', '2013-11-19 10:38:59', 1),
(269, 1, '2013-11-19', '2013-11-19 10:38:59', 1),
(270, 1, '2013-11-19', '2013-11-19 10:39:03', 1),
(271, 1, '2013-11-19', '2013-11-19 10:39:17', 1),
(272, 1, '2013-11-19', '2013-11-19 10:40:06', 1),
(273, 1, '2013-11-19', '2013-11-19 10:40:24', 1),
(274, 1, '2013-11-19', '2013-11-19 10:40:25', 1),
(275, 1, '2013-11-19', '2013-11-19 10:40:26', 1),
(276, 1, '2013-11-19', '2013-11-19 10:41:19', 1),
(277, 1, '2013-11-19', '2013-11-19 10:41:21', 1),
(278, 1, '2013-11-19', '2013-11-19 10:41:28', 1),
(279, 1, '2013-11-19', '2013-11-19 10:41:29', 1),
(280, 1, '2013-11-19', '2013-11-19 10:41:34', 1),
(281, 1, '2013-11-19', '2013-11-19 10:41:39', 1),
(282, 1, '2013-11-19', '2013-11-19 10:43:52', 1),
(283, 1, '2013-11-19', '2013-11-19 10:43:53', 1),
(284, 1, '2013-11-19', '2013-11-19 10:43:54', 1),
(285, 1, '2013-11-19', '2013-11-19 10:43:54', 1),
(286, 1, '2013-11-19', '2013-11-19 10:43:55', 1),
(287, 1, '2013-11-19', '2013-11-19 10:43:55', 1),
(288, 1, '2013-11-19', '2013-11-19 10:43:56', 1),
(289, 1, '2013-11-19', '2013-11-19 10:43:57', 1),
(290, 1, '2013-11-19', '2013-11-19 10:43:57', 1),
(291, 1, '2013-11-19', '2013-11-19 10:43:58', 1),
(292, 1, '2013-11-19', '2013-11-19 10:43:58', 1),
(293, 1, '2013-11-19', '2013-11-19 10:43:58', 1),
(294, 1, '2013-11-19', '2013-11-19 10:43:59', 1),
(295, 1, '2013-11-19', '2013-11-19 10:43:59', 1),
(296, 1, '2013-11-19', '2013-11-19 10:44:52', 1),
(297, 1, '2013-11-19', '2013-11-19 10:44:59', 1),
(298, 1, '2013-11-19', '2013-11-19 10:45:01', 1),
(299, 1, '2013-11-19', '2013-11-19 10:45:01', 1),
(300, 1, '2013-11-19', '2013-11-19 10:45:01', 1),
(301, 1, '2013-11-19', '2013-11-19 10:45:02', 1),
(302, 1, '2013-11-19', '2013-11-19 10:45:02', 1),
(303, 1, '2013-11-19', '2013-11-19 10:45:02', 1),
(304, 1, '2013-11-19', '2013-11-19 10:45:02', 1),
(305, 1, '2013-11-19', '2013-11-19 10:45:03', 1),
(306, 1, '2013-11-19', '2013-11-19 10:45:04', 1),
(307, 1, '2013-11-19', '2013-11-19 10:45:05', 1),
(308, 1, '2013-11-19', '2013-11-19 10:45:05', 1),
(309, 1, '2013-11-19', '2013-11-19 10:45:26', 1),
(310, 1, '2013-11-19', '2013-11-19 10:47:28', 1),
(311, 1, '2013-11-19', '2013-11-19 10:47:31', 1),
(312, 1, '2013-11-19', '2013-11-19 10:47:32', 1),
(313, 1, '2013-11-19', '2013-11-19 10:47:33', 1),
(314, 1, '2013-11-19', '2013-11-19 10:47:33', 1),
(315, 1, '2013-11-19', '2013-11-19 10:47:34', 1),
(316, 1, '2013-11-19', '2013-11-19 10:47:34', 1),
(317, 1, '2013-11-19', '2013-11-19 10:47:35', 1),
(318, 1, '2013-11-19', '2013-11-19 10:47:35', 1),
(319, 1, '2013-11-19', '2013-11-19 10:47:42', 1),
(320, 1, '2013-11-19', '2013-11-19 10:48:06', 1),
(321, 1, '2013-11-19', '2013-11-19 10:49:11', 1),
(322, 1, '2013-11-19', '2013-11-19 10:49:16', 1),
(323, 1, '2013-11-19', '2013-11-19 10:49:17', 1),
(324, 1, '2013-11-19', '2013-11-19 10:49:39', 1),
(325, 1, '2013-11-19', '2013-11-19 10:49:50', 1),
(326, 1, '2013-11-19', '2013-11-19 10:50:19', 1),
(327, 1, '2013-11-19', '2013-11-19 10:51:00', 1),
(328, 1, '2013-11-19', '2013-11-19 10:51:11', 1),
(329, 1, '2013-11-19', '2013-11-19 10:51:26', 1),
(330, 1, '2013-11-19', '2013-11-19 10:51:39', 1),
(331, 1, '2013-11-19', '2013-11-19 10:51:46', 0),
(332, 1, '2013-11-19', '2013-11-19 10:55:38', 1),
(333, 1, '2013-11-19', '2013-11-19 11:00:00', 1),
(334, 1, '2013-11-19', '2013-11-19 11:00:37', 1),
(335, 1, '2013-11-19', '2013-11-19 11:00:37', 1),
(336, 1, '2013-11-19', '2013-11-19 11:07:07', 1),
(337, 1, '2013-11-19', '2013-11-19 11:07:23', 1),
(338, 1, '2013-11-19', '2013-11-19 11:07:48', 1),
(339, 1, '2013-11-19', '2013-11-19 11:08:04', 1),
(340, 1, '2013-11-19', '2013-11-19 11:08:28', 1),
(341, 1, '2013-11-19', '2013-11-19 11:08:30', 1),
(342, 1, '2013-11-19', '2013-11-19 11:08:47', 1),
(343, 1, '2013-11-19', '2013-11-19 11:09:25', 1),
(344, 2, '2013-11-19', '2013-11-19 11:09:28', 1),
(345, 40, '2013-11-19', '2013-11-19 11:09:32', 1),
(346, 40, '2013-11-19', '2013-11-19 11:09:43', 1),
(347, 40, '2013-11-19', '2013-11-19 11:09:43', 1),
(348, 40, '2013-11-19', '2013-11-19 11:09:45', 1),
(349, 123, '2013-11-19', '2013-11-19 11:11:52', 1),
(350, 40, '2013-11-19', '2013-11-19 11:11:52', 1),
(351, 1, '2013-11-19', '2013-11-19 11:11:55', 1),
(352, 1, '2013-11-19', '2013-11-19 11:11:58', 1),
(353, 1, '2013-11-19', '2013-11-19 11:12:14', 1),
(354, 1, '2013-11-19', '2013-11-19 11:12:51', 1),
(355, 1, '2013-11-19', '2013-11-19 11:12:59', 1),
(356, 1, '2013-11-19', '2013-11-19 11:13:23', 1),
(357, 1, '2013-11-19', '2013-11-19 11:13:24', 1),
(358, 1, '2013-11-19', '2013-11-19 11:13:25', 1),
(359, 1, '2013-11-19', '2013-11-19 11:13:25', 1),
(360, 1, '2013-11-19', '2013-11-19 11:13:25', 1),
(361, 1, '2013-11-19', '2013-11-19 11:13:26', 1),
(362, 1, '2013-11-19', '2013-11-19 11:13:26', 1),
(363, 1, '2013-11-19', '2013-11-19 11:13:26', 1),
(364, 1, '2013-11-19', '2013-11-19 11:13:27', 1),
(365, 1, '2013-11-19', '2013-11-19 11:13:27', 1),
(366, 1, '2013-11-19', '2013-11-19 11:13:27', 1),
(367, 1, '2013-11-19', '2013-11-19 11:13:27', 1),
(368, 1, '2013-11-19', '2013-11-19 11:13:48', 1),
(369, 1, '2013-11-19', '2013-11-19 11:13:56', 1),
(370, 1, '2013-11-19', '2013-11-19 11:13:57', 1),
(371, 1, '2013-11-19', '2013-11-19 11:13:57', 1),
(372, 1, '2013-11-19', '2013-11-19 11:13:58', 1),
(373, 1, '2013-11-19', '2013-11-19 11:14:11', 1),
(374, 1, '2013-11-19', '2013-11-19 11:14:29', 1),
(375, 1, '2013-11-19', '2013-11-19 11:14:55', 1),
(376, 1, '2013-11-19', '2013-11-19 11:15:01', 1),
(377, 1, '2013-11-19', '2013-11-19 11:15:19', 1),
(378, 1, '2013-11-19', '2013-11-19 11:15:40', 1),
(379, 1, '2013-11-19', '2013-11-19 11:15:48', 1),
(380, 1, '2013-11-19', '2013-11-19 11:16:01', 1),
(381, 1, '2013-11-19', '2013-11-19 11:16:09', 1),
(382, 1, '2013-11-19', '2013-11-19 11:16:20', 1),
(383, 1, '2013-11-19', '2013-11-19 11:17:13', 1),
(384, 1, '2013-11-19', '2013-11-19 11:17:20', 1),
(385, 1, '2013-11-19', '2013-11-19 11:17:30', 1),
(386, 1, '2013-11-19', '2013-11-19 11:18:08', 1),
(387, 1, '2013-11-19', '2013-11-19 11:19:25', 1),
(388, 1, '2013-11-19', '2013-11-19 11:21:58', 1),
(389, 1, '2013-11-19', '2013-11-19 11:22:04', 1),
(390, 1, '2013-11-19', '2013-11-19 11:24:18', 1),
(391, 1, '2013-11-19', '2013-11-19 11:29:40', 1),
(392, 1, '2013-11-19', '2013-11-19 11:31:52', 1),
(393, 1, '2013-11-19', '2013-11-19 11:32:14', 1),
(394, 1, '2013-11-19', '2013-11-19 11:32:36', 1),
(395, 1, '2013-11-19', '2013-11-19 11:32:52', 1),
(396, 1, '2013-11-19', '2013-11-19 11:32:52', 1),
(397, 1, '2013-11-19', '2013-11-19 11:33:30', 1),
(398, 1, '2013-11-19', '2013-11-19 11:34:25', 1),
(399, 1, '2013-11-19', '2013-11-19 11:34:26', 1),
(400, 1, '2013-11-19', '2013-11-19 11:34:27', 1),
(401, 1, '2013-11-19', '2013-11-19 11:34:27', 1),
(402, 1, '2013-11-19', '2013-11-19 11:34:47', 1),
(403, 1, '2013-11-19', '2013-11-19 11:35:09', 1),
(404, 1, '2013-11-19', '2013-11-19 11:35:12', 1),
(405, 1, '2013-11-19', '2013-11-19 11:35:16', 1),
(406, 1, '2013-11-19', '2013-11-19 11:35:20', 1),
(407, 7, '2013-11-19', '2013-11-19 11:35:24', 1),
(408, 6, '2013-11-19', '2013-11-19 11:35:44', 1),
(409, 7, '2013-11-19', '2013-11-19 11:35:45', 1),
(410, 6, '2013-11-19', '2013-11-19 11:36:20', 1),
(411, 7, '2013-11-19', '2013-11-19 11:36:20', 1),
(412, 6, '2013-11-19', '2013-11-19 11:36:44', 1),
(413, 7, '2013-11-19', '2013-11-19 11:36:44', 1),
(414, 1, '2013-11-19', '2013-11-19 11:37:05', 1),
(415, 1, '2013-11-19', '2013-11-19 11:37:07', 1),
(416, 1, '2013-11-19', '2013-11-19 11:37:07', 1),
(417, 1, '2013-11-19', '2013-11-19 11:37:07', 1),
(418, 124, '2013-11-19', '2013-11-19 11:37:09', 1),
(419, 124, '2013-11-19', '2013-11-19 11:37:11', 1),
(420, 124, '2013-11-19', '2013-11-19 11:37:21', 1),
(421, 1, '2013-11-19', '2013-11-19 11:37:23', 1),
(422, 1, '2013-11-19', '2013-11-19 11:37:26', 1),
(423, 1, '2013-11-19', '2013-11-19 11:39:49', 1),
(424, 124, '2013-11-19', '2013-11-19 11:39:51', 1),
(425, 125, '2013-11-19', '2013-11-19 11:39:52', 1),
(426, 126, '2013-11-19', '2013-11-19 11:39:53', 1),
(427, 125, '2013-11-19', '2013-11-19 11:39:54', 1),
(428, 124, '2013-11-19', '2013-11-19 11:39:55', 1),
(429, 124, '2013-11-19', '2013-11-19 11:39:57', 1),
(430, 125, '2013-11-19', '2013-11-19 11:39:58', 1),
(431, 124, '2013-11-19', '2013-11-19 11:39:59', 1),
(432, 124, '2013-11-19', '2013-11-19 11:40:02', 1),
(433, 124, '2013-11-19', '2013-11-19 11:40:04', 1),
(434, 124, '2013-11-19', '2013-11-19 11:40:05', 1),
(435, 124, '2013-11-19', '2013-11-19 11:40:14', 1),
(436, 125, '2013-11-19', '2013-11-19 11:40:15', 1),
(437, 125, '2013-11-19', '2013-11-19 11:40:17', 1),
(438, 125, '2013-11-19', '2013-11-19 11:40:31', 1),
(439, 126, '2013-11-19', '2013-11-19 11:40:33', 1),
(440, 126, '2013-11-19', '2013-11-19 11:40:35', 1),
(441, 126, '2013-11-19', '2013-11-19 11:40:45', 1),
(442, 125, '2013-11-19', '2013-11-19 11:40:46', 1),
(443, 124, '2013-11-19', '2013-11-19 11:40:47', 1),
(444, 126, '2013-11-19', '2013-11-19 11:40:48', 1),
(445, 126, '2013-11-19', '2013-11-19 11:41:09', 1),
(446, 126, '2013-11-19', '2013-11-19 11:43:04', 1),
(447, 126, '2013-11-19', '2013-11-19 11:43:46', 1),
(448, 1, '2013-11-19', '2013-11-19 11:43:48', 1),
(449, 1, '2013-11-19', '2013-11-19 11:43:50', 1),
(450, 1, '2013-11-19', '2013-11-19 11:44:20', 1),
(451, 125, '2013-11-19', '2013-11-19 11:44:24', 1),
(452, 126, '2013-11-19', '2013-11-19 11:44:27', 1),
(453, 124, '2013-11-19', '2013-11-19 11:44:28', 1),
(454, 1, '2013-11-19', '2013-11-19 11:44:30', 1),
(455, 1, '2013-11-19', '2013-11-19 11:45:29', 1),
(456, 1, '2013-11-19', '2013-11-19 11:47:19', 1),
(457, 1, '2013-11-19', '2013-11-19 11:48:01', 1),
(458, 1, '2013-11-19', '2013-11-19 11:48:07', 1),
(459, 1, '2013-11-19', '2013-11-19 11:51:17', 0),
(460, 125, '2013-11-19', '2013-11-19 11:51:24', 0),
(461, 124, '2013-11-19', '2013-11-19 11:51:26', 0),
(462, 126, '2013-11-19', '2013-11-19 11:51:28', 0),
(463, 1, '2013-11-19', '2013-11-19 11:52:07', 0),
(464, 126, '2013-11-19', '2013-11-19 11:53:21', 0),
(465, 1, '2013-11-19', '2013-11-19 11:53:25', 0),
(466, 1, '2013-11-19', '2013-11-19 11:55:30', 0),
(467, 126, '2013-11-19', '2013-11-19 11:55:32', 0),
(468, 125, '2013-11-19', '2013-11-19 11:55:34', 0),
(469, 124, '2013-11-19', '2013-11-19 11:55:35', 0),
(470, 1, '2013-11-19', '2013-11-19 11:55:36', 0),
(471, 1, '2013-11-19', '2013-11-19 11:55:46', 0),
(472, 126, '2013-11-19', '2013-11-19 11:55:48', 0),
(473, 125, '2013-11-19', '2013-11-19 11:55:48', 0),
(474, 124, '2013-11-19', '2013-11-19 11:55:49', 0),
(475, 1, '2013-11-19', '2013-11-19 11:55:50', 0),
(476, 1, '2013-11-19', '2013-11-19 11:55:59', 0),
(477, 1, '2013-11-19', '2013-11-19 11:56:54', 0),
(478, 1, '2013-11-19', '2013-11-19 11:58:07', 1),
(479, 1, '2013-11-19', '2013-11-19 11:58:08', 1),
(480, 126, '2013-11-19', '2013-11-19 11:58:10', 1),
(481, 1, '2013-11-19', '2013-11-19 11:58:11', 1),
(482, 1, '2013-11-19', '2013-11-19 12:32:27', 1),
(483, 1, '2013-11-19', '2013-11-19 12:36:31', 1),
(484, 1, '2013-11-19', '2013-11-19 12:37:28', 1),
(485, 1, '2013-11-19', '2013-11-19 12:37:29', 1),
(486, 1, '2013-11-19', '2013-11-19 12:37:30', 1),
(487, 1, '2013-11-19', '2013-11-19 12:37:31', 1),
(488, 1, '2013-11-19', '2013-11-19 12:37:32', 1),
(489, 1, '2013-11-19', '2013-11-19 12:37:32', 1),
(490, 1, '2013-11-19', '2013-11-19 12:37:32', 1),
(491, 1, '2013-11-19', '2013-11-19 12:37:33', 1),
(492, 1, '2013-11-19', '2013-11-19 12:37:33', 1),
(493, 1, '2013-11-19', '2013-11-19 12:37:42', 1),
(494, 1, '2013-11-19', '2013-11-19 12:37:56', 1),
(495, 1, '2013-11-19', '2013-11-19 12:37:58', 1),
(496, 1, '2013-11-19', '2013-11-19 12:38:13', 1),
(497, 1, '2013-11-19', '2013-11-19 12:38:24', 1),
(498, 1, '2013-11-19', '2013-11-19 12:38:34', 1),
(499, 1, '2013-11-19', '2013-11-19 12:38:40', 1),
(500, 1, '2013-11-19', '2013-11-19 12:38:46', 1),
(501, 1, '2013-11-19', '2013-11-19 12:39:18', 1),
(502, 1, '2013-11-19', '2013-11-19 12:39:37', 1),
(503, 1, '2013-11-19', '2013-11-19 12:39:42', 1),
(504, 1, '2013-11-19', '2013-11-19 12:40:38', 1),
(505, 1, '2013-11-19', '2013-11-19 12:41:02', 1),
(506, 1, '2013-11-19', '2013-11-19 12:41:03', 1),
(507, 1, '2013-11-19', '2013-11-19 12:44:18', 1),
(508, 1, '2013-11-19', '2013-11-19 12:44:20', 1),
(509, 1, '2013-11-19', '2013-11-19 12:44:21', 1),
(510, 1, '2013-11-19', '2013-11-19 12:44:22', 1),
(511, 1, '2013-11-19', '2013-11-19 12:44:44', 1),
(512, 1, '2013-11-19', '2013-11-19 12:45:36', 1),
(513, 1, '2013-11-19', '2013-11-19 12:45:44', 1),
(514, 1, '2013-11-19', '2013-11-19 12:45:45', 1),
(515, 1, '2013-11-19', '2013-11-19 12:46:29', 1),
(516, 1, '2013-11-19', '2013-11-19 12:46:58', 1),
(517, 125, '2013-11-19', '2013-11-19 12:47:14', 1),
(518, 124, '2013-11-19', '2013-11-19 12:47:16', 1),
(519, 126, '2013-11-19', '2013-11-19 12:47:19', 1),
(520, 125, '2013-11-19', '2013-11-19 12:47:20', 1),
(521, 125, '2013-11-19', '2013-11-19 12:47:43', 1),
(522, 126, '2013-11-19', '2013-11-19 12:47:44', 1),
(523, 125, '2013-11-19', '2013-11-19 12:47:46', 1),
(524, 124, '2013-11-19', '2013-11-19 12:47:47', 1),
(525, 124, '2013-11-19', '2013-11-19 12:48:25', 1),
(526, 124, '2013-11-19', '2013-11-19 12:48:26', 1),
(527, 124, '2013-11-19', '2013-11-19 12:48:27', 1),
(528, 124, '2013-11-19', '2013-11-19 12:48:28', 1),
(529, 125, '2013-11-19', '2013-11-19 12:48:29', 1),
(530, 126, '2013-11-19', '2013-11-19 12:48:31', 1),
(531, 125, '2013-11-19', '2013-11-19 12:48:32', 1),
(532, 124, '2013-11-19', '2013-11-19 12:48:33', 1),
(533, 1, '2013-11-19', '2013-11-19 12:48:34', 1),
(534, 1, '2013-11-19', '2013-11-19 12:48:59', 1),
(535, 1, '2013-11-19', '2013-11-19 12:49:00', 1),
(536, 1, '2013-11-19', '2013-11-19 12:49:00', 1),
(537, 126, '2013-11-19', '2013-11-19 12:49:01', 1),
(538, 125, '2013-11-19', '2013-11-19 12:49:02', 1),
(539, 126, '2013-11-19', '2013-11-19 12:51:52', 1),
(540, 1, '2013-11-19', '2013-11-19 12:51:54', 1),
(541, 1, '2013-11-19', '2013-11-19 13:06:12', 1),
(542, 1, '2013-11-19', '2013-11-19 13:07:46', 1),
(543, 1, '2013-11-19', '2013-11-19 13:08:00', 1),
(544, 1, '2013-11-19', '2013-11-19 13:08:00', 1),
(545, 1, '2013-11-19', '2013-11-19 13:08:00', 1),
(546, 1, '2013-11-19', '2013-11-19 13:08:00', 1),
(547, 1, '2013-11-19', '2013-11-19 13:08:22', 1),
(548, 1, '2013-11-19', '2013-11-19 13:08:48', 1),
(549, 1, '2013-11-19', '2013-11-19 13:08:48', 1),
(550, 1, '2013-11-19', '2013-11-19 13:08:49', 1),
(551, 1, '2013-11-19', '2013-11-19 13:09:01', 1),
(552, 1, '2013-11-19', '2013-11-19 13:09:02', 1),
(553, 1, '2013-11-19', '2013-11-19 13:09:02', 1),
(554, 1, '2013-11-19', '2013-11-19 13:09:23', 1),
(555, 1, '2013-11-19', '2013-11-19 13:09:23', 1),
(556, 1, '2013-11-19', '2013-11-19 13:09:41', 1),
(557, 1, '2013-11-19', '2013-11-19 13:09:47', 1),
(558, 1, '2013-11-19', '2013-11-19 13:09:47', 1),
(559, 1, '2013-11-19', '2013-11-19 13:09:47', 1),
(560, 1, '2013-11-19', '2013-11-19 13:10:13', 1),
(561, 1, '2013-11-19', '2013-11-19 13:10:24', 1),
(562, 1, '2013-11-19', '2013-11-19 13:10:25', 1),
(563, 1, '2013-11-19', '2013-11-19 13:10:25', 1),
(564, 1, '2013-11-19', '2013-11-19 13:10:35', 1),
(565, 1, '2013-11-19', '2013-11-19 13:12:23', 1),
(566, 1, '2013-11-19', '2013-11-19 13:12:36', 1),
(567, 1, '2013-11-19', '2013-11-19 13:13:33', 1),
(568, 1, '2013-11-19', '2013-11-19 13:14:15', 1),
(569, 1, '2013-11-19', '2013-11-19 13:14:44', 1),
(570, 1, '2013-11-19', '2013-11-19 13:15:14', 1),
(571, 1, '2013-11-19', '2013-11-19 13:15:50', 1),
(572, 1, '2013-11-19', '2013-11-19 13:16:06', 1),
(573, 1, '2013-11-19', '2013-11-19 13:16:07', 1),
(574, 1, '2013-11-19', '2013-11-19 13:16:07', 1),
(575, 1, '2013-11-19', '2013-11-19 13:16:16', 1),
(576, 1, '2013-11-19', '2013-11-19 13:28:08', 1),
(577, 1, '2013-11-19', '2013-11-19 13:28:09', 1),
(578, 1, '2013-11-19', '2013-11-19 13:28:10', 1),
(579, 1, '2013-11-19', '2013-11-19 13:28:11', 1),
(580, 1, '2013-11-19', '2013-11-19 13:28:25', 1),
(581, 1, '2013-11-19', '2013-11-19 13:28:26', 1),
(582, 1, '2013-11-19', '2013-11-19 13:28:54', 1),
(583, 1, '2013-11-19', '2013-11-19 13:28:55', 1),
(584, 1, '2013-11-19', '2013-11-19 13:28:55', 1),
(585, 1, '2013-11-19', '2013-11-19 13:29:53', 1),
(586, 1, '2013-11-19', '2013-11-19 13:33:08', 1),
(587, 1, '2013-11-19', '2013-11-19 13:34:34', 1),
(588, 1, '2013-11-19', '2013-11-19 13:35:13', 1),
(589, 1, '2013-11-19', '2013-11-19 13:35:24', 1),
(590, 1, '2013-11-19', '2013-11-19 13:35:36', 1),
(591, 1, '2013-11-19', '2013-11-19 13:35:39', 1),
(592, 1, '2013-11-19', '2013-11-19 13:35:40', 1),
(593, 1, '2013-11-19', '2013-11-19 13:35:47', 1),
(594, 1, '2013-11-19', '2013-11-19 13:39:28', 1),
(595, 1, '2013-11-19', '2013-11-19 13:40:59', 1),
(596, 1, '2013-11-19', '2013-11-19 13:43:31', 1),
(597, 1, '2013-11-19', '2013-11-19 13:43:49', 1),
(598, 1, '2013-11-19', '2013-11-19 13:43:58', 1),
(599, 1, '2013-11-19', '2013-11-19 13:43:59', 1),
(600, 1, '2013-11-19', '2013-11-19 13:45:18', 1),
(601, 1, '2013-11-19', '2013-11-19 13:45:41', 1),
(602, 1, '2013-11-19', '2013-11-19 13:45:48', 1),
(603, 1, '2013-11-19', '2013-11-19 13:46:09', 1),
(604, 1, '2013-11-19', '2013-11-19 13:46:23', 1),
(605, 1, '2013-11-19', '2013-11-19 13:46:45', 1),
(606, 1, '2013-11-19', '2013-11-19 13:46:45', 1),
(607, 1, '2013-11-19', '2013-11-19 13:46:46', 1),
(608, 1, '2013-11-19', '2013-11-19 13:47:03', 1),
(609, 1, '2013-11-19', '2013-11-19 13:47:09', 1),
(610, 1, '2013-11-19', '2013-11-19 13:48:00', 1),
(611, 1, '2013-11-19', '2013-11-19 13:49:34', 1),
(612, 124, '2013-11-19', '2013-11-19 13:49:38', 1),
(613, 125, '2013-11-19', '2013-11-19 13:49:39', 1),
(614, 126, '2013-11-19', '2013-11-19 13:49:41', 1),
(615, 1, '2013-11-19', '2013-11-19 13:49:42', 1),
(616, 1, '2013-11-19', '2013-11-19 13:50:13', 1),
(617, 1, '2013-11-19', '2013-11-19 14:07:59', 0),
(618, 125, '2013-11-19', '2013-11-19 14:08:04', 0),
(619, 126, '2013-11-19', '2013-11-19 14:08:05', 0),
(620, 124, '2013-11-19', '2013-11-19 14:08:06', 0),
(621, 1, '2013-11-19', '2013-11-19 14:08:07', 0),
(622, 125, '2013-11-19', '2013-11-19 14:08:23', 0),
(623, 126, '2013-11-19', '2013-11-19 14:08:25', 0),
(624, 124, '2013-11-19', '2013-11-19 14:08:26', 0),
(625, 124, '2013-11-19', '2013-11-19 14:08:29', 0),
(626, 1, '2013-11-20', '2013-11-20 07:14:28', 0),
(627, 124, '2013-11-20', '2013-11-20 07:16:07', 0),
(628, 126, '2013-11-20', '2013-11-20 07:16:12', 0),
(629, 124, '2013-11-20', '2013-11-20 07:16:15', 0),
(630, 1, '2013-11-20', '2013-11-20 07:55:56', 0),
(631, 125, '2013-11-20', '2013-11-20 07:56:03', 0),
(632, 124, '2013-11-20', '2013-11-20 07:56:04', 0),
(633, 126, '2013-11-20', '2013-11-20 07:56:06', 0),
(634, 125, '2013-11-20', '2013-11-20 07:56:08', 0),
(635, 124, '2013-11-20', '2013-11-20 07:56:11', 0),
(636, 1, '2013-11-20', '2013-11-20 07:56:23', 0),
(637, 125, '2013-11-20', '2013-11-20 08:07:12', 0),
(638, 124, '2013-11-20', '2013-11-20 08:07:14', 0),
(639, 124, '2013-11-20', '2013-11-20 08:07:15', 0),
(640, 124, '2013-11-20', '2013-11-20 08:07:17', 0),
(641, 1, '2013-11-24', '2013-11-24 22:42:36', 0),
(642, 125, '2013-11-24', '2013-11-24 22:42:52', 0),
(643, 126, '2013-11-24', '2013-11-24 22:42:53', 0),
(644, 124, '2013-11-24', '2013-11-24 22:42:55', 0),
(645, 1, '2013-11-25', '2013-11-25 08:21:55', 0),
(646, 125, '2013-11-25', '2013-11-25 08:25:51', 0),
(647, 124, '2013-11-25', '2013-11-25 08:25:52', 0),
(648, 1, '2013-11-25', '2013-11-25 08:25:54', 0),
(649, 1, '2013-11-25', '2013-11-25 08:40:35', 0),
(650, 1, '2013-11-25', '2013-11-25 08:40:36', 0),
(651, 1, '2013-11-25', '2013-11-25 08:40:43', 0),
(652, 1, '2013-11-25', '2013-11-25 08:40:46', 0),
(653, 1, '2013-11-25', '2013-11-25 08:40:56', 0),
(654, 1, '2013-11-25', '2013-11-25 08:41:02', 0),
(655, 1, '2013-11-25', '2013-11-25 08:41:04', 0),
(656, 1, '2013-11-25', '2013-11-25 08:41:05', 0),
(657, 1, '2013-11-25', '2013-11-25 08:41:06', 0),
(658, 1, '2013-11-25', '2013-11-25 08:41:07', 0),
(659, 1, '2013-11-25', '2013-11-25 08:41:07', 0),
(660, 125, '2013-11-25', '2013-11-25 08:41:17', 0),
(661, 1, '2013-11-25', '2013-11-25 08:41:20', 0),
(662, 1, '2013-11-25', '2013-11-25 08:41:39', 0),
(663, 1, '2013-11-25', '2013-11-25 08:42:30', 0),
(664, 125, '2013-11-25', '2013-11-25 13:02:57', 0),
(665, 1, '2013-11-25', '2013-11-25 13:02:59', 0),
(666, 1, '2013-11-25', '2013-11-25 13:48:20', 0),
(667, 124, '2013-11-25', '2013-11-25 13:48:28', 0),
(668, 125, '2013-11-25', '2013-11-25 13:48:31', 0),
(669, 126, '2013-11-25', '2013-11-25 13:48:34', 0),
(670, 125, '2013-11-25', '2013-11-25 13:48:36', 0),
(671, 125, '2013-11-25', '2013-11-25 13:48:41', 0),
(672, 124, '2013-11-25', '2013-11-25 13:48:45', 0),
(673, 126, '2013-11-25', '2013-11-25 13:48:47', 0),
(674, 125, '2013-11-25', '2013-11-25 13:48:50', 0),
(675, 125, '2013-11-25', '2013-11-25 13:48:51', 0),
(676, 1, '2013-11-25', '2013-11-25 13:49:15', 0),
(677, 1, '2013-11-25', '2013-11-25 13:52:13', 0),
(678, 1, '2013-11-25', '2013-11-25 13:55:05', 0),
(679, 125, '2013-11-25', '2013-11-25 13:55:05', 0),
(680, 126, '2013-11-25', '2013-11-25 13:55:08', 0),
(681, 125, '2013-11-25', '2013-11-25 13:55:18', 0),
(682, 1, '2013-11-25', '2013-11-25 14:30:24', 0),
(683, 1, '2013-11-25', '2013-11-25 14:44:38', 0),
(684, 1, '2013-11-25', '2013-11-25 14:46:51', 0),
(685, 1, '2013-11-25', '2013-11-25 14:47:41', 0),
(686, 126, '2013-11-25', '2013-11-25 14:47:47', 0),
(687, 124, '2013-11-25', '2013-11-25 14:47:57', 0),
(688, 125, '2013-11-25', '2013-11-25 14:48:00', 0),
(689, 126, '2013-11-25', '2013-11-25 14:48:02', 0),
(690, 1, '2013-11-25', '2013-11-25 18:32:17', 0),
(691, 1, '2013-11-26', '2013-11-26 09:58:10', 0),
(692, 1, '2013-11-26', '2013-11-26 11:13:23', 0),
(693, 1, '2013-11-27', '2013-11-27 08:52:51', 0),
(694, 1, '2013-11-27', '2013-11-27 08:55:02', 0),
(695, 1, '2013-11-27', '2013-11-27 09:33:16', 0),
(696, 1, '2013-11-27', '2013-11-27 09:34:08', 0),
(697, 1, '2013-11-27', '2013-11-27 09:38:49', 0),
(698, 1, '2013-11-27', '2013-11-27 09:39:16', 0),
(699, 1, '2013-11-27', '2013-11-27 09:39:34', 0),
(700, 1, '2013-11-27', '2013-11-27 09:39:53', 0),
(701, 1, '2013-11-27', '2013-11-27 09:40:46', 0),
(702, 1, '2013-11-27', '2013-11-27 09:41:04', 0),
(703, 1, '2013-11-27', '2013-11-27 09:41:12', 0),
(704, 1, '2013-11-27', '2013-11-27 09:41:24', 0),
(705, 1, '2013-11-27', '2013-11-27 09:41:25', 0),
(706, 1, '2013-11-27', '2013-11-27 09:41:31', 0),
(707, 1, '2013-11-27', '2013-11-27 09:41:32', 0),
(708, 1, '2013-11-27', '2013-11-27 09:41:32', 0),
(709, 1, '2013-11-27', '2013-11-27 09:41:43', 0),
(710, 1, '2013-11-27', '2013-11-27 09:43:03', 0),
(711, 1, '2013-11-27', '2013-11-27 09:43:04', 0),
(712, 1, '2013-11-27', '2013-11-27 09:43:04', 0),
(713, 1, '2013-11-27', '2013-11-27 09:43:04', 0),
(714, 1, '2013-11-27', '2013-11-27 09:43:05', 0),
(715, 1, '2013-11-27', '2013-11-27 09:43:05', 0),
(716, 1, '2013-11-27', '2013-11-27 09:50:06', 0),
(717, 1, '2013-11-27', '2013-11-27 09:50:07', 0),
(718, 1, '2013-11-27', '2013-11-27 09:50:28', 0),
(719, 1, '2013-11-27', '2013-11-27 09:50:30', 0),
(720, 1, '2013-11-27', '2013-11-27 09:50:38', 0),
(721, 1, '2013-11-27', '2013-11-27 09:50:39', 0),
(722, 1, '2013-11-27', '2013-11-27 09:50:48', 0),
(723, 1, '2013-11-27', '2013-11-27 09:50:51', 0),
(724, 1, '2013-11-27', '2013-11-27 09:50:51', 0),
(725, 1, '2013-11-27', '2013-11-27 09:51:00', 0),
(726, 1, '2013-11-27', '2013-11-27 09:51:09', 0),
(727, 1, '2013-11-27', '2013-11-27 09:51:31', 0),
(728, 1, '2013-11-27', '2013-11-27 09:51:39', 0),
(729, 1, '2013-11-27', '2013-11-27 09:51:51', 0),
(730, 1, '2013-11-27', '2013-11-27 09:51:54', 0),
(731, 1, '2013-11-27', '2013-11-27 09:52:07', 0),
(732, 1, '2013-11-27', '2013-11-27 09:53:14', 0),
(733, 1, '2013-11-27', '2013-11-27 09:53:25', 0),
(734, 1, '2013-11-27', '2013-11-27 09:53:49', 0),
(735, 1, '2013-11-27', '2013-11-27 09:53:59', 0),
(736, 1, '2013-11-27', '2013-11-27 09:54:45', 0),
(737, 1, '2013-11-27', '2013-11-27 09:54:58', 0),
(738, 1, '2013-11-27', '2013-11-27 09:55:25', 0),
(739, 125, '2013-11-27', '2013-11-27 09:55:55', 0),
(740, 110, '2013-11-27', '2013-11-27 09:56:04', 0),
(741, 2, '2013-11-27', '2013-11-27 09:56:04', 1),
(742, 105, '2013-11-27', '2013-11-27 09:56:05', 1),
(743, 1, '2013-11-27', '2013-11-27 09:56:15', 1),
(744, 1, '2013-11-27', '2013-11-27 10:02:02', 1),
(745, 1, '2013-11-27', '2013-11-27 10:02:32', 1),
(746, 2, '2013-11-27', '2013-11-27 10:02:36', 1),
(747, 11, '2013-11-27', '2013-11-27 10:02:37', 1),
(748, 1, '2013-11-27', '2013-11-27 10:07:00', 1),
(749, 1, '2013-11-27', '2013-11-27 10:07:03', 1),
(750, 1, '2013-11-27', '2013-11-27 10:07:47', 1),
(751, 2, '2013-11-27', '2013-11-27 10:08:44', 1),
(752, 11, '2013-11-27', '2013-11-27 10:08:46', 1),
(753, 1, '2013-11-27', '2013-11-27 10:09:08', 1),
(754, 1, '2013-11-27', '2013-11-27 10:09:11', 1),
(755, 1, '2013-11-27', '2013-11-27 10:09:11', 1),
(756, 2, '2013-11-27', '2013-11-27 10:09:19', 1),
(757, 11, '2013-11-27', '2013-11-27 10:09:20', 1),
(758, 1, '2013-11-27', '2013-11-27 10:09:53', 1),
(759, 2, '2013-11-27', '2013-11-27 10:09:57', 1),
(760, 51, '2013-11-27', '2013-11-27 10:09:59', 1),
(761, 68, '2013-11-27', '2013-11-27 10:10:01', 1),
(762, 68, '2013-11-27', '2013-11-27 10:10:02', 1),
(763, 68, '2013-11-27', '2013-11-27 10:10:03', 1),
(764, 1, '2013-11-27', '2013-11-27 10:10:04', 1),
(765, 2, '2013-11-27', '2013-11-27 10:15:02', 1),
(766, 11, '2013-11-27', '2013-11-27 10:15:04', 1),
(767, 1, '2013-11-27', '2013-11-27 10:15:25', 1),
(768, 1, '2013-11-27', '2013-11-27 10:15:50', 1),
(769, 51, '2013-11-27', '2013-11-27 10:16:04', 1),
(770, 68, '2013-11-27', '2013-11-27 10:16:07', 1),
(771, 68, '2013-11-27', '2013-11-27 10:16:08', 1),
(772, 68, '2013-11-27', '2013-11-27 10:16:09', 1),
(773, 1, '2013-11-27', '2013-11-27 10:16:11', 1),
(774, 11, '2013-11-27', '2013-11-27 10:17:09', 1),
(775, 51, '2013-11-27', '2013-11-27 10:17:28', 1),
(776, 68, '2013-11-27', '2013-11-27 10:17:31', 1),
(777, 68, '2013-11-27', '2013-11-27 10:17:32', 1),
(778, 68, '2013-11-27', '2013-11-27 10:17:32', 1),
(779, 1, '2013-11-27', '2013-11-27 10:17:34', 1),
(780, 1, '2013-11-27', '2013-11-27 10:18:56', 1),
(781, 1, '2013-11-27', '2013-11-27 10:19:04', 1),
(782, 1, '2013-11-27', '2013-11-27 10:30:49', 1),
(783, 1, '2013-11-27', '2013-11-27 10:31:12', 1),
(784, 1, '2013-11-27', '2013-11-27 10:32:17', 1),
(785, 1, '2013-11-27', '2013-11-27 10:32:19', 1),
(786, 1, '2013-11-27', '2013-11-27 10:32:59', 1),
(787, 1, '2013-11-27', '2013-11-27 10:33:11', 1),
(788, 1, '2013-11-27', '2013-11-27 10:33:49', 1),
(789, 1, '2013-11-27', '2013-11-27 10:33:53', 1),
(790, 1, '2013-11-27', '2013-11-27 10:33:54', 1),
(791, 1, '2013-11-27', '2013-11-27 10:33:54', 1),
(792, 1, '2013-11-27', '2013-11-27 10:34:27', 1),
(793, 1, '2013-11-27', '2013-11-27 10:34:35', 1),
(794, 1, '2013-11-27', '2013-11-27 10:49:57', 1),
(795, 1, '2013-11-27', '2013-11-27 10:50:11', 1),
(796, 1, '2013-11-27', '2013-11-27 10:50:13', 1),
(797, 1, '2013-11-27', '2013-11-27 10:50:30', 1),
(798, 1, '2013-11-27', '2013-11-27 10:50:32', 1),
(799, 1, '2013-11-27', '2013-11-27 10:51:08', 1),
(800, 1, '2013-11-27', '2013-11-27 10:51:27', 1),
(801, 1, '2013-11-28', '2013-11-28 07:27:17', 0),
(802, 1, '2013-11-28', '2013-11-28 07:30:28', 0),
(803, 125, '2013-11-28', '2013-11-28 07:31:06', 0),
(804, 1, '2013-11-28', '2013-11-28 07:31:08', 0),
(805, 126, '2013-11-28', '2013-11-28 07:31:11', 0),
(806, 125, '2013-11-28', '2013-11-28 07:31:12', 0),
(807, 124, '2013-11-28', '2013-11-28 07:31:13', 0),
(808, 124, '2013-11-28', '2013-11-28 07:31:15', 0),
(809, 125, '2013-11-28', '2013-11-28 07:31:16', 0),
(810, 126, '2013-11-28', '2013-11-28 07:31:17', 0),
(811, 1, '2013-11-28', '2013-11-28 07:31:22', 0),
(812, 1, '2013-11-28', '2013-11-28 07:31:25', 0),
(813, 1, '2013-11-28', '2013-11-28 08:20:07', 0),
(814, 1, '2013-11-28', '2013-11-28 10:21:08', 0),
(815, 1, '2013-11-29', '2013-11-29 07:24:58', 0),
(816, 110, '2013-11-29', '2013-11-29 07:25:51', 0),
(817, 2, '2013-11-29', '2013-11-29 07:25:52', 1),
(818, 105, '2013-11-29', '2013-11-29 07:25:52', 1),
(819, 1, '2013-11-29', '2013-11-29 07:26:08', 1),
(820, 1, '2013-11-29', '2013-11-29 07:26:11', 1),
(821, 1, '2013-11-29', '2013-11-29 07:26:26', 1),
(822, 1, '2013-11-29', '2013-11-29 07:26:30', 1),
(823, 1, '2013-11-29', '2013-11-29 07:26:33', 1),
(824, 1, '2013-11-29', '2013-11-29 07:26:43', 1),
(825, 1, '2013-11-29', '2013-11-29 07:30:08', 1),
(826, 1, '2013-11-29', '2013-11-29 07:30:13', 1),
(827, 1, '2013-11-29', '2013-11-29 07:30:15', 1),
(828, 1, '2013-11-29', '2013-11-29 07:30:15', 1),
(829, 1, '2013-11-29', '2013-11-29 07:30:16', 1),
(830, 1, '2013-11-29', '2013-11-29 07:30:46', 1),
(831, 1, '2013-11-29', '2013-11-29 07:30:51', 1),
(832, 1, '2013-11-29', '2013-11-29 07:30:52', 1),
(833, 1, '2013-11-29', '2013-11-29 07:30:53', 1),
(834, 1, '2013-11-29', '2013-11-29 07:30:53', 1),
(835, 1, '2013-11-29', '2013-11-29 07:30:53', 1),
(836, 1, '2013-11-29', '2013-11-29 07:30:57', 1),
(837, 1, '2013-11-29', '2013-11-29 07:33:07', 1),
(838, 1, '2013-11-29', '2013-11-29 07:33:11', 1),
(839, 1, '2013-11-29', '2013-11-29 07:33:38', 1),
(840, 1, '2013-11-29', '2013-11-29 07:33:52', 1),
(841, 1, '2013-11-29', '2013-11-29 07:33:54', 1),
(842, 1, '2013-11-29', '2013-11-29 07:34:01', 1),
(843, 1, '2013-11-29', '2013-11-29 07:34:13', 1),
(844, 1, '2013-11-29', '2013-11-29 07:34:13', 1),
(845, 1, '2013-11-29', '2013-11-29 07:34:13', 1),
(846, 1, '2013-11-29', '2013-11-29 07:34:14', 1),
(847, 1, '2013-11-29', '2013-11-29 07:34:14', 1),
(848, 1, '2013-11-29', '2013-11-29 07:34:14', 1),
(849, 1, '2013-11-29', '2013-11-29 07:34:20', 1),
(850, 1, '2013-11-29', '2013-11-29 07:34:29', 1),
(851, 1, '2013-11-29', '2013-11-29 07:34:41', 1),
(852, 1, '2013-11-29', '2013-11-29 07:34:44', 1),
(853, 1, '2013-11-29', '2013-11-29 07:35:34', 1),
(854, 1, '2013-11-29', '2013-11-29 07:35:35', 1),
(855, 1, '2013-11-29', '2013-11-29 07:35:36', 1),
(856, 1, '2013-11-29', '2013-11-29 07:35:36', 1),
(857, 1, '2013-11-29', '2013-11-29 07:35:40', 1),
(858, 1, '2013-11-29', '2013-11-29 07:35:43', 1),
(859, 1, '2013-11-29', '2013-11-29 07:36:01', 1),
(860, 1, '2013-11-29', '2013-11-29 07:36:13', 1),
(861, 1, '2013-11-29', '2013-11-29 07:36:24', 1),
(862, 1, '2013-11-29', '2013-11-29 07:36:25', 1),
(863, 1, '2013-11-29', '2013-11-29 07:36:26', 1),
(864, 1, '2013-11-29', '2013-11-29 07:36:38', 1),
(865, 1, '2013-11-29', '2013-11-29 07:36:42', 1),
(866, 1, '2013-11-29', '2013-11-29 07:36:45', 1),
(867, 1, '2013-11-29', '2013-11-29 07:36:45', 1),
(868, 1, '2013-11-29', '2013-11-29 07:36:45', 1),
(869, 1, '2013-11-29', '2013-11-29 07:36:49', 1),
(870, 1, '2013-11-29', '2013-11-29 07:37:34', 1),
(871, 1, '2013-11-29', '2013-11-29 07:37:47', 1),
(872, 1, '2013-11-29', '2013-11-29 07:37:59', 1),
(873, 1, '2013-11-29', '2013-11-29 07:38:04', 1),
(874, 1, '2013-11-29', '2013-11-29 07:38:10', 1),
(875, 1, '2013-11-29', '2013-11-29 07:38:22', 1),
(876, 1, '2013-11-29', '2013-11-29 07:38:36', 1),
(877, 1, '2013-11-29', '2013-11-29 07:38:53', 1),
(878, 1, '2013-11-29', '2013-11-29 07:39:51', 1),
(879, 1, '2013-11-29', '2013-11-29 07:40:13', 1),
(880, 110, '2013-11-29', '2013-11-29 07:40:56', 1),
(881, 1, '2013-11-29', '2013-11-29 07:40:56', 0),
(882, 1, '2013-12-02', '2013-12-02 08:48:24', 0),
(883, 1, '2013-12-02', '2013-12-02 21:55:43', 0),
(884, 1, '2013-12-02', '2013-12-02 21:56:30', 0),
(885, 125, '2013-12-02', '2013-12-02 21:57:20', 0),
(886, 1, '2013-12-11', '2013-12-11 08:02:57', 0),
(887, 110, '2013-12-11', '2013-12-11 08:03:35', 0),
(888, 2, '2013-12-11', '2013-12-11 08:03:36', 1),
(889, 105, '2013-12-11', '2013-12-11 08:03:36', 1),
(890, 1, '2013-12-11', '2013-12-11 08:15:53', 1),
(891, 1, '2013-12-11', '2013-12-11 08:18:36', 1),
(892, 1, '2013-12-11', '2013-12-11 08:21:04', 1),
(893, 1, '2013-12-11', '2013-12-11 08:21:11', 1),
(894, 1, '2013-12-11', '2013-12-11 08:22:52', 1),
(895, 1, '2013-12-11', '2013-12-11 08:23:07', 1),
(896, 1, '2013-12-11', '2013-12-11 08:23:39', 1),
(897, 124, '2013-12-11', '2013-12-11 08:23:45', 1),
(898, 124, '2013-12-11', '2013-12-11 08:23:48', 1),
(899, 124, '2013-12-11', '2013-12-11 08:39:14', 1),
(900, 125, '2013-12-11', '2013-12-11 08:39:16', 1),
(901, 125, '2013-12-11', '2013-12-11 08:39:17', 1),
(902, 125, '2013-12-11', '2013-12-11 08:44:49', 1),
(903, 125, '2013-12-11', '2013-12-11 08:45:00', 1),
(904, 125, '2013-12-11', '2013-12-11 08:49:53', 1),
(905, 126, '2013-12-11', '2013-12-11 08:49:55', 1),
(906, 125, '2013-12-11', '2013-12-11 08:49:57', 1),
(907, 124, '2013-12-11', '2013-12-11 08:49:58', 1),
(908, 1, '2013-12-11', '2013-12-11 08:50:10', 1),
(909, 124, '2013-12-11', '2013-12-11 08:50:15', 1),
(910, 125, '2013-12-11', '2013-12-11 08:50:16', 1),
(911, 126, '2013-12-11', '2013-12-11 08:50:21', 1),
(912, 126, '2013-12-11', '2013-12-11 08:50:24', 1),
(913, 126, '2013-12-11', '2013-12-11 08:55:19', 1),
(914, 126, '2013-12-11', '2013-12-11 08:56:22', 1),
(915, 126, '2013-12-11', '2013-12-11 08:57:12', 1),
(916, 124, '2013-12-11', '2013-12-11 08:57:27', 1),
(917, 125, '2013-12-11', '2013-12-11 08:57:28', 1),
(918, 125, '2013-12-11', '2013-12-11 08:57:30', 1),
(919, 124, '2013-12-11', '2013-12-11 08:57:31', 1),
(920, 125, '2013-12-11', '2013-12-11 08:57:33', 1),
(921, 126, '2013-12-11', '2013-12-11 08:57:34', 1),
(922, 125, '2013-12-11', '2013-12-11 08:57:35', 1),
(923, 124, '2013-12-11', '2013-12-11 08:57:37', 1),
(924, 125, '2013-12-11', '2013-12-11 08:57:38', 1),
(925, 126, '2013-12-11', '2013-12-11 08:57:39', 1),
(926, 126, '2013-12-11', '2013-12-11 08:58:00', 1),
(927, 126, '2013-12-11', '2013-12-11 08:58:09', 1),
(928, 1, '2013-12-11', '2013-12-11 08:59:03', 1),
(929, 1, '2013-12-11', '2013-12-11 08:59:14', 1),
(930, 1, '2013-12-11', '2013-12-11 09:01:18', 1),
(931, 1, '2013-12-11', '2013-12-11 09:18:26', 1),
(932, 1, '2013-12-11', '2013-12-11 09:18:38', 1),
(933, 1, '2013-12-11', '2013-12-11 09:37:41', 1),
(934, 1, '2013-12-11', '2013-12-11 09:37:43', 1),
(935, 1, '2013-12-11', '2013-12-11 09:39:42', 1),
(936, 2, '2013-12-11', '2013-12-11 09:39:49', 1),
(937, 11, '2013-12-11', '2013-12-11 09:39:53', 1),
(938, 1, '2013-12-11', '2013-12-11 09:40:47', 1),
(939, 1, '2013-12-11', '2013-12-11 09:40:50', 1),
(940, 1, '2013-12-11', '2013-12-11 09:41:32', 1),
(941, 1, '2013-12-11', '2013-12-11 09:43:05', 1),
(942, 1, '2013-12-11', '2013-12-11 09:43:08', 1),
(943, 1, '2013-12-11', '2013-12-11 09:43:09', 1),
(944, 1, '2013-12-11', '2013-12-11 09:43:09', 1),
(945, 1, '2013-12-11', '2013-12-11 09:43:09', 1),
(946, 1, '2013-12-11', '2013-12-11 09:43:10', 1),
(947, 1, '2013-12-11', '2013-12-11 09:43:12', 1),
(948, 1, '2013-12-11', '2013-12-11 09:43:12', 1),
(949, 1, '2013-12-11', '2013-12-11 09:43:12', 1),
(950, 1, '2013-12-11', '2013-12-11 09:43:13', 1),
(951, 1, '2013-12-11', '2013-12-11 09:43:13', 1),
(952, 1, '2013-12-11', '2013-12-11 09:43:13', 1),
(953, 1, '2013-12-11', '2013-12-11 09:43:27', 1),
(954, 1, '2013-12-11', '2013-12-11 09:45:06', 1),
(955, 1, '2013-12-11', '2013-12-11 09:45:08', 1),
(956, 1, '2013-12-11', '2013-12-11 09:45:59', 1),
(957, 1, '2013-12-11', '2013-12-11 09:46:00', 1),
(958, 1, '2013-12-11', '2013-12-11 09:46:04', 1),
(959, 1, '2013-12-11', '2013-12-11 09:46:05', 1),
(960, 1, '2013-12-11', '2013-12-11 09:46:05', 1),
(961, 1, '2013-12-11', '2013-12-11 09:46:05', 1),
(962, 1, '2013-12-11', '2013-12-11 09:46:05', 1),
(963, 1, '2013-12-11', '2013-12-11 09:46:06', 1),
(964, 1, '2013-12-11', '2013-12-11 09:46:06', 1),
(965, 1, '2013-12-11', '2013-12-11 09:46:06', 1),
(966, 1, '2013-12-11', '2013-12-11 09:47:09', 1),
(967, 1, '2013-12-11', '2013-12-11 09:47:24', 1),
(968, 1, '2013-12-11', '2013-12-11 09:47:37', 1),
(969, 1, '2013-12-11', '2013-12-11 09:47:39', 1),
(970, 1, '2013-12-11', '2013-12-11 09:47:40', 1),
(971, 1, '2013-12-11', '2013-12-11 09:47:40', 1),
(972, 1, '2013-12-11', '2013-12-11 09:48:06', 1),
(973, 1, '2013-12-11', '2013-12-11 09:48:07', 1),
(974, 1, '2013-12-11', '2013-12-11 09:48:07', 1),
(975, 1, '2013-12-11', '2013-12-11 09:48:07', 1),
(976, 1, '2013-12-11', '2013-12-11 09:48:07', 1),
(977, 1, '2013-12-11', '2013-12-11 09:48:09', 1),
(978, 1, '2013-12-11', '2013-12-11 09:48:09', 1),
(979, 1, '2013-12-11', '2013-12-11 09:48:09', 1),
(980, 1, '2013-12-11', '2013-12-11 09:48:16', 1),
(981, 1, '2013-12-11', '2013-12-11 09:48:17', 1),
(982, 1, '2013-12-11', '2013-12-11 09:48:18', 1),
(983, 1, '2013-12-11', '2013-12-11 09:48:19', 1),
(984, 1, '2013-12-11', '2013-12-11 09:48:19', 1),
(985, 1, '2013-12-11', '2013-12-11 09:48:19', 1),
(986, 1, '2013-12-11', '2013-12-11 09:48:28', 1),
(987, 1, '2013-12-11', '2013-12-11 09:49:03', 1),
(988, 125, '2013-12-11', '2013-12-11 09:49:50', 1),
(989, 125, '2013-12-11', '2013-12-11 09:50:11', 1),
(990, 125, '2013-12-11', '2013-12-11 09:50:46', 1),
(991, 125, '2013-12-11', '2013-12-11 09:50:51', 1),
(992, 125, '2013-12-11', '2013-12-11 09:50:54', 1),
(993, 125, '2013-12-11', '2013-12-11 09:50:59', 1),
(994, 125, '2013-12-11', '2013-12-11 09:51:33', 1),
(995, 125, '2013-12-11', '2013-12-11 09:51:35', 1),
(996, 125, '2013-12-11', '2013-12-11 09:51:36', 1),
(997, 125, '2013-12-11', '2013-12-11 09:51:36', 1),
(998, 125, '2013-12-11', '2013-12-11 09:51:38', 1),
(999, 125, '2013-12-11', '2013-12-11 09:51:38', 1),
(1000, 125, '2013-12-11', '2013-12-11 09:51:43', 1),
(1001, 125, '2013-12-11', '2013-12-11 09:51:44', 1),
(1002, 125, '2013-12-11', '2013-12-11 09:51:50', 1),
(1003, 125, '2013-12-11', '2013-12-11 09:51:50', 1),
(1004, 125, '2013-12-11', '2013-12-11 09:51:51', 1),
(1005, 125, '2013-12-11', '2013-12-11 09:51:51', 1),
(1006, 125, '2013-12-11', '2013-12-11 09:51:55', 1),
(1007, 125, '2013-12-11', '2013-12-11 09:52:14', 1),
(1008, 125, '2013-12-11', '2013-12-11 09:52:45', 1),
(1009, 125, '2013-12-11', '2013-12-11 09:52:47', 1),
(1010, 125, '2013-12-11', '2013-12-11 09:54:37', 1),
(1011, 1, '2013-12-11', '2013-12-11 09:54:40', 1),
(1012, 125, '2013-12-11', '2013-12-11 09:54:45', 1),
(1013, 125, '2013-12-11', '2013-12-11 09:55:03', 1),
(1014, 125, '2013-12-11', '2013-12-11 09:55:12', 1),
(1015, 125, '2013-12-11', '2013-12-11 09:55:12', 1),
(1016, 125, '2013-12-11', '2013-12-11 09:55:13', 1),
(1017, 125, '2013-12-11', '2013-12-11 09:55:13', 1),
(1018, 125, '2013-12-11', '2013-12-11 09:55:13', 1),
(1019, 125, '2013-12-11', '2013-12-11 09:56:19', 1),
(1020, 125, '2013-12-11', '2013-12-11 09:56:19', 1),
(1021, 125, '2013-12-11', '2013-12-11 09:56:19', 1),
(1022, 125, '2013-12-11', '2013-12-11 09:56:22', 1),
(1023, 125, '2013-12-11', '2013-12-11 09:56:41', 1),
(1024, 125, '2013-12-11', '2013-12-11 09:57:23', 1),
(1025, 125, '2013-12-11', '2013-12-11 09:57:30', 1),
(1026, 125, '2013-12-11', '2013-12-11 09:57:30', 1),
(1027, 125, '2013-12-11', '2013-12-11 09:57:31', 1),
(1028, 125, '2013-12-11', '2013-12-11 09:57:31', 1),
(1029, 125, '2013-12-11', '2013-12-11 09:57:32', 1),
(1030, 125, '2013-12-11', '2013-12-11 09:57:52', 1),
(1031, 125, '2013-12-11', '2013-12-11 09:57:59', 1),
(1032, 125, '2013-12-11', '2013-12-11 09:58:23', 1);
INSERT INTO `PageStatistics` (`pstID`, `cID`, `date`, `timestamp`, `uID`) VALUES
(1033, 125, '2013-12-11', '2013-12-11 09:58:34', 1),
(1034, 125, '2013-12-11', '2013-12-11 09:58:55', 1),
(1035, 125, '2013-12-11', '2013-12-11 09:58:56', 1),
(1036, 125, '2013-12-11', '2013-12-11 09:58:57', 1),
(1037, 125, '2013-12-11', '2013-12-11 10:00:31', 1),
(1038, 125, '2013-12-11', '2013-12-11 10:00:41', 1),
(1039, 125, '2013-12-11', '2013-12-11 10:00:48', 1),
(1040, 125, '2013-12-11', '2013-12-11 10:00:48', 1),
(1041, 125, '2013-12-11', '2013-12-11 10:00:48', 1),
(1042, 125, '2013-12-11', '2013-12-11 10:00:54', 1),
(1043, 125, '2013-12-11', '2013-12-11 10:01:10', 1),
(1044, 125, '2013-12-11', '2013-12-11 10:01:38', 1),
(1045, 125, '2013-12-11', '2013-12-11 10:02:12', 1),
(1046, 125, '2013-12-11', '2013-12-11 10:02:12', 1),
(1047, 125, '2013-12-11', '2013-12-11 10:02:12', 1),
(1048, 125, '2013-12-11', '2013-12-11 10:02:19', 1),
(1049, 125, '2013-12-11', '2013-12-11 10:02:23', 1),
(1050, 125, '2013-12-11', '2013-12-11 10:02:36', 1),
(1051, 125, '2013-12-11', '2013-12-11 10:03:01', 1),
(1052, 125, '2013-12-11', '2013-12-11 10:03:02', 1),
(1053, 125, '2013-12-11', '2013-12-11 10:03:03', 1),
(1054, 125, '2013-12-11', '2013-12-11 10:03:20', 1),
(1055, 125, '2013-12-11', '2013-12-11 10:03:47', 1),
(1056, 125, '2013-12-11', '2013-12-11 10:04:27', 1),
(1057, 125, '2013-12-11', '2013-12-11 10:04:36', 1),
(1058, 125, '2013-12-11', '2013-12-11 10:04:43', 1),
(1059, 125, '2013-12-11', '2013-12-11 10:05:21', 1),
(1060, 125, '2013-12-11', '2013-12-11 10:05:32', 1),
(1061, 125, '2013-12-11', '2013-12-11 10:06:07', 1),
(1062, 125, '2013-12-11', '2013-12-11 10:06:20', 1),
(1063, 125, '2013-12-11', '2013-12-11 10:07:22', 1),
(1064, 125, '2013-12-11', '2013-12-11 10:07:35', 1),
(1065, 125, '2013-12-11', '2013-12-11 10:08:42', 1),
(1066, 125, '2013-12-11', '2013-12-11 10:08:42', 1),
(1067, 125, '2013-12-11', '2013-12-11 10:08:43', 1),
(1068, 125, '2013-12-11', '2013-12-11 10:08:48', 1),
(1069, 125, '2013-12-11', '2013-12-11 10:09:00', 1),
(1070, 125, '2013-12-11', '2013-12-11 10:09:18', 1),
(1071, 125, '2013-12-11', '2013-12-11 10:09:22', 1),
(1072, 125, '2013-12-11', '2013-12-11 10:09:22', 1),
(1073, 125, '2013-12-11', '2013-12-11 10:09:25', 1),
(1074, 125, '2013-12-11', '2013-12-11 10:09:35', 1),
(1075, 125, '2013-12-11', '2013-12-11 10:10:20', 1),
(1076, 125, '2013-12-11', '2013-12-11 10:10:33', 1),
(1077, 125, '2013-12-11', '2013-12-11 10:10:36', 1),
(1078, 125, '2013-12-11', '2013-12-11 10:12:30', 1),
(1079, 125, '2013-12-11', '2013-12-11 10:12:33', 1),
(1080, 125, '2013-12-11', '2013-12-11 10:12:47', 1),
(1081, 125, '2013-12-11', '2013-12-11 10:12:59', 1),
(1082, 125, '2013-12-11', '2013-12-11 10:13:04', 1),
(1083, 125, '2013-12-11', '2013-12-11 10:13:20', 1),
(1084, 125, '2013-12-11', '2013-12-11 10:15:06', 1),
(1085, 125, '2013-12-11', '2013-12-11 10:15:06', 1),
(1086, 125, '2013-12-11', '2013-12-11 10:15:12', 1),
(1087, 125, '2013-12-11', '2013-12-11 10:15:29', 1),
(1088, 125, '2013-12-11', '2013-12-11 10:16:13', 1),
(1089, 125, '2013-12-11', '2013-12-11 10:16:28', 1),
(1090, 125, '2013-12-11', '2013-12-11 10:16:30', 1),
(1091, 125, '2013-12-11', '2013-12-11 10:16:38', 1),
(1092, 125, '2013-12-11', '2013-12-11 10:16:42', 1),
(1093, 125, '2013-12-11', '2013-12-11 10:16:45', 1),
(1094, 125, '2013-12-11', '2013-12-11 10:17:33', 1),
(1095, 125, '2013-12-11', '2013-12-11 10:19:00', 1),
(1096, 125, '2013-12-11', '2013-12-11 10:19:01', 1),
(1097, 125, '2013-12-11', '2013-12-11 10:20:20', 1),
(1098, 125, '2013-12-11', '2013-12-11 10:20:20', 1),
(1099, 125, '2013-12-11', '2013-12-11 10:20:20', 1),
(1100, 125, '2013-12-11', '2013-12-11 10:22:23', 1),
(1101, 125, '2013-12-11', '2013-12-11 10:22:29', 1),
(1102, 125, '2013-12-11', '2013-12-11 10:22:30', 1),
(1103, 125, '2013-12-11', '2013-12-11 10:25:16', 1),
(1104, 125, '2013-12-11', '2013-12-11 10:25:22', 1),
(1105, 125, '2013-12-11', '2013-12-11 10:25:33', 1),
(1106, 125, '2013-12-11', '2013-12-11 10:26:57', 1),
(1107, 1, '2013-12-11', '2013-12-11 10:27:03', 1),
(1108, 124, '2013-12-11', '2013-12-11 10:27:11', 1),
(1109, 125, '2013-12-11', '2013-12-11 10:27:15', 1),
(1110, 2, '2013-12-11', '2013-12-11 10:27:19', 1),
(1111, 11, '2013-12-11', '2013-12-11 10:27:21', 1),
(1112, 1, '2013-12-11', '2013-12-11 10:27:49', 1),
(1113, 125, '2013-12-11', '2013-12-11 10:27:51', 1),
(1114, 125, '2013-12-11', '2013-12-11 10:27:53', 1),
(1115, 125, '2013-12-11', '2013-12-11 10:28:11', 1),
(1116, 2, '2013-12-11', '2013-12-11 10:28:13', 1),
(1117, 11, '2013-12-11', '2013-12-11 10:28:16', 1),
(1118, 1, '2013-12-11', '2013-12-11 10:28:24', 1),
(1119, 125, '2013-12-11', '2013-12-11 10:28:27', 1),
(1120, 125, '2013-12-11', '2013-12-11 10:28:42', 1),
(1121, 125, '2013-12-11', '2013-12-11 10:29:22', 1),
(1122, 2, '2013-12-11', '2013-12-11 10:29:25', 1),
(1123, 11, '2013-12-11', '2013-12-11 10:29:26', 1),
(1124, 1, '2013-12-11', '2013-12-11 10:30:02', 1),
(1125, 125, '2013-12-11', '2013-12-11 10:30:04', 1),
(1126, 125, '2013-12-11', '2013-12-11 10:30:07', 1),
(1127, 125, '2013-12-11', '2013-12-11 10:30:35', 1),
(1128, 125, '2013-12-11', '2013-12-11 10:31:37', 1),
(1129, 125, '2013-12-11', '2013-12-11 10:31:40', 1),
(1130, 125, '2013-12-11', '2013-12-11 10:31:53', 1),
(1131, 1, '2013-12-11', '2013-12-11 10:31:56', 1),
(1132, 124, '2013-12-11', '2013-12-11 10:32:08', 1),
(1133, 125, '2013-12-11', '2013-12-11 10:32:11', 1),
(1134, 126, '2013-12-11', '2013-12-11 10:32:37', 1),
(1135, 124, '2013-12-11', '2013-12-11 10:32:44', 1),
(1136, 125, '2013-12-11', '2013-12-11 10:32:46', 1),
(1137, 124, '2013-12-11', '2013-12-11 10:32:54', 1),
(1138, 124, '2013-12-11', '2013-12-11 10:33:33', 1),
(1139, 125, '2013-12-11', '2013-12-11 10:33:34', 1),
(1140, 125, '2013-12-11', '2013-12-11 10:35:23', 1),
(1141, 125, '2013-12-11', '2013-12-11 10:37:47', 1),
(1142, 125, '2013-12-11', '2013-12-11 10:37:56', 1),
(1143, 125, '2013-12-11', '2013-12-11 10:38:00', 1),
(1144, 125, '2013-12-11', '2013-12-11 10:38:00', 1),
(1145, 125, '2013-12-11', '2013-12-11 10:38:03', 1),
(1146, 125, '2013-12-11', '2013-12-11 10:38:18', 1),
(1147, 125, '2013-12-11', '2013-12-11 10:38:36', 1),
(1148, 125, '2013-12-11', '2013-12-11 10:39:11', 1),
(1149, 125, '2013-12-11', '2013-12-11 10:39:14', 1),
(1150, 125, '2013-12-11', '2013-12-11 10:39:15', 1),
(1151, 125, '2013-12-11', '2013-12-11 10:39:15', 1),
(1152, 125, '2013-12-11', '2013-12-11 10:39:21', 1),
(1153, 125, '2013-12-11', '2013-12-11 10:39:31', 1),
(1154, 125, '2013-12-11', '2013-12-11 10:43:18', 1),
(1155, 125, '2013-12-11', '2013-12-11 10:44:30', 1),
(1156, 125, '2013-12-11', '2013-12-11 10:44:45', 1),
(1157, 125, '2013-12-11', '2013-12-11 10:45:03', 1),
(1158, 125, '2013-12-11', '2013-12-11 10:45:05', 1),
(1159, 125, '2013-12-11', '2013-12-11 10:45:27', 1),
(1160, 125, '2013-12-11', '2013-12-11 10:45:30', 1),
(1161, 125, '2013-12-11', '2013-12-11 10:45:30', 1),
(1162, 125, '2013-12-11', '2013-12-11 10:45:30', 1),
(1163, 125, '2013-12-11', '2013-12-11 10:45:56', 1),
(1164, 125, '2013-12-11', '2013-12-11 10:46:24', 1),
(1165, 125, '2013-12-11', '2013-12-11 10:47:02', 1),
(1166, 125, '2013-12-11', '2013-12-11 10:47:18', 1),
(1167, 125, '2013-12-11', '2013-12-11 10:48:26', 1),
(1168, 125, '2013-12-11', '2013-12-11 10:48:35', 1),
(1169, 125, '2013-12-11', '2013-12-11 10:48:45', 1),
(1170, 125, '2013-12-11', '2013-12-11 10:49:40', 1),
(1171, 125, '2013-12-11', '2013-12-11 10:49:52', 1),
(1172, 125, '2013-12-11', '2013-12-11 10:50:59', 1),
(1173, 124, '2013-12-11', '2013-12-11 10:51:54', 1),
(1174, 124, '2013-12-11', '2013-12-11 10:51:58', 1),
(1175, 124, '2013-12-11', '2013-12-11 10:52:07', 1),
(1176, 125, '2013-12-11', '2013-12-11 10:52:09', 1),
(1177, 125, '2013-12-11', '2013-12-11 10:52:11', 1),
(1178, 125, '2013-12-11', '2013-12-11 10:52:19', 1),
(1179, 124, '2013-12-11', '2013-12-11 10:52:21', 1),
(1180, 124, '2013-12-11', '2013-12-11 10:52:22', 1),
(1181, 124, '2013-12-11', '2013-12-11 10:52:37', 1),
(1182, 126, '2013-12-11', '2013-12-11 10:54:05', 1),
(1183, 125, '2013-12-11', '2013-12-11 10:54:07', 1),
(1184, 124, '2013-12-11', '2013-12-11 10:54:09', 1),
(1185, 125, '2013-12-11', '2013-12-11 10:54:10', 1),
(1186, 126, '2013-12-11', '2013-12-11 10:54:11', 1),
(1187, 125, '2013-12-11', '2013-12-11 10:54:13', 1),
(1188, 124, '2013-12-11', '2013-12-11 10:54:14', 1),
(1189, 124, '2013-12-11', '2013-12-11 10:54:17', 1),
(1190, 124, '2013-12-11', '2013-12-11 10:54:37', 1),
(1191, 2, '2013-12-11', '2013-12-11 10:54:48', 1),
(1192, 51, '2013-12-11', '2013-12-11 10:55:04', 1),
(1193, 68, '2013-12-11', '2013-12-11 10:55:07', 1),
(1194, 68, '2013-12-11', '2013-12-11 10:55:09', 1),
(1195, 68, '2013-12-11', '2013-12-11 10:55:10', 1),
(1196, 1, '2013-12-11', '2013-12-11 10:55:17', 1),
(1197, 110, '2013-12-11', '2013-12-11 10:58:15', 1),
(1198, 1, '2013-12-11', '2013-12-11 10:58:15', 0),
(1199, 1, '2013-12-11', '2013-12-11 10:58:18', 0),
(1200, 124, '2013-12-11', '2013-12-11 10:58:22', 0),
(1201, 125, '2013-12-11', '2013-12-11 10:58:26', 0),
(1202, 126, '2013-12-11', '2013-12-11 10:58:30', 0),
(1203, 124, '2013-12-11', '2013-12-11 12:23:06', 0),
(1204, 125, '2013-12-11', '2013-12-11 12:23:09', 0),
(1205, 126, '2013-12-11', '2013-12-11 12:23:15', 0),
(1206, 1, '2013-12-11', '2013-12-11 12:44:44', 0),
(1207, 125, '2013-12-11', '2013-12-11 12:44:57', 0),
(1208, 126, '2013-12-11', '2013-12-11 12:45:03', 0),
(1209, 124, '2013-12-11', '2013-12-11 12:45:06', 0),
(1210, 125, '2013-12-11', '2013-12-11 12:45:10', 0),
(1211, 124, '2013-12-11', '2013-12-11 14:10:12', 0),
(1212, 124, '2013-12-11', '2013-12-11 14:10:14', 0),
(1213, 125, '2013-12-11', '2013-12-11 14:10:40', 0),
(1214, 126, '2013-12-11', '2013-12-11 14:10:49', 0),
(1215, 124, '2013-12-11', '2013-12-11 14:10:51', 0),
(1216, 1, '2013-12-12', '2013-12-12 12:34:58', 0),
(1217, 124, '2013-12-12', '2013-12-12 12:35:05', 0),
(1218, 125, '2013-12-12', '2013-12-12 12:35:13', 0),
(1219, 126, '2013-12-12', '2013-12-12 12:35:19', 0),
(1220, 125, '2013-12-12', '2013-12-12 12:35:20', 0),
(1221, 124, '2013-12-12', '2013-12-12 13:19:45', 0),
(1222, 1, '2013-12-12', '2013-12-12 13:19:47', 0),
(1223, 125, '2013-12-12', '2013-12-12 13:19:49', 0),
(1224, 126, '2013-12-12', '2013-12-12 13:19:51', 0),
(1225, 125, '2013-12-12', '2013-12-12 13:19:56', 0),
(1226, 124, '2013-12-12', '2013-12-12 13:19:57', 0),
(1227, 124, '2013-12-12', '2013-12-12 14:43:49', 0),
(1228, 125, '2013-12-12', '2013-12-12 14:43:52', 0),
(1229, 126, '2013-12-12', '2013-12-12 14:43:55', 0),
(1230, 125, '2013-12-12', '2013-12-12 14:44:18', 0),
(1231, 124, '2013-12-12', '2013-12-12 14:44:18', 0),
(1232, 124, '2013-12-12', '2013-12-12 14:44:26', 0),
(1233, 124, '2013-12-12', '2013-12-12 14:44:38', 0),
(1234, 1, '2013-12-13', '2013-12-13 13:32:00', 0),
(1235, 1, '2013-12-17', '2013-12-17 12:51:30', 0),
(1236, 126, '2013-12-17', '2013-12-17 12:51:42', 0),
(1237, 125, '2013-12-17', '2013-12-17 12:51:46', 0),
(1238, 1, '2014-04-10', '2014-04-10 06:46:14', 0),
(1239, 1, '2014-04-10', '2014-04-10 06:46:29', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PageThemes`
--

CREATE TABLE IF NOT EXISTS `PageThemes` (
`ptID` int(10) unsigned NOT NULL,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `PageThemes`
--

INSERT INTO `PageThemes` (`ptID`, `ptHandle`, `ptName`, `ptDescription`, `pkgID`) VALUES
(5, 'sulmag', 'SULMAG AG Theme', 'SULMAG AG Template Design', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PageThemeStyles`
--

CREATE TABLE IF NOT EXISTS `PageThemeStyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PageTypeAttributes`
--

CREATE TABLE IF NOT EXISTS `PageTypeAttributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PageTypes`
--

CREATE TABLE IF NOT EXISTS `PageTypes` (
`ctID` int(10) unsigned NOT NULL,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `PageTypes`
--

INSERT INTO `PageTypes` (`ctID`, `ctHandle`, `ctIcon`, `ctName`, `ctIsInternal`, `pkgID`) VALUES
(1, 'core_stack', 'main.png', 'Stack', 1, 0),
(2, 'dashboard_primary_five', 'main.png', 'Dashboard Primary + Five', 1, 0),
(3, 'dashboard_header_four_col', 'main.png', 'Dashboard Header + Four Column', 1, 0),
(4, 'right_sidebar', 'right_sidebar.png', 'Right Sidebar', 0, 0),
(5, 'content', 'main.png', 'Content', 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PageWorkflowProgress`
--

CREATE TABLE IF NOT EXISTS `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PermissionAccess`
--

CREATE TABLE IF NOT EXISTS `PermissionAccess` (
`paID` int(10) unsigned NOT NULL,
  `paIsInUse` int(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `PermissionAccess`
--

INSERT INTO `PermissionAccess` (`paID`, `paIsInUse`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PermissionAccessEntities`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessEntities` (
`peID` int(10) unsigned NOT NULL,
  `petID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `PermissionAccessEntities`
--

INSERT INTO `PermissionAccessEntities` (`peID`, `petID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 5),
(5, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PermissionAccessEntityGroups`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityGroups` (
`pegID` int(10) unsigned NOT NULL,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `PermissionAccessEntityGroups`
--

INSERT INTO `PermissionAccessEntityGroups` (`pegID`, `peID`, `gID`) VALUES
(1, 1, 3),
(2, 2, 1),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PermissionAccessEntityGroupSets`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PermissionAccessEntityTypeCategories`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `PermissionAccessEntityTypeCategories`
--

INSERT INTO `PermissionAccessEntityTypeCategories` (`petID`, `pkCategoryID`) VALUES
(1, 1),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(2, 1),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(3, 1),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(4, 1),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(5, 1),
(6, 6),
(6, 7);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PermissionAccessEntityTypes`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityTypes` (
`petID` int(10) unsigned NOT NULL,
  `petHandle` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `PermissionAccessEntityTypes`
--

INSERT INTO `PermissionAccessEntityTypes` (`petID`, `petHandle`, `petName`, `pkgID`) VALUES
(1, 'group', 'Group', 0),
(2, 'user', 'User', 0),
(3, 'group_set', 'Group Set', 0),
(4, 'group_combination', 'Group Combination', 0),
(5, 'page_owner', 'Page Owner', 0),
(6, 'file_uploader', 'File Uploader', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PermissionAccessEntityUsers`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PermissionAccessList`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `PermissionAccessList`
--

INSERT INTO `PermissionAccessList` (`paID`, `peID`, `pdID`, `accessType`) VALUES
(1, 1, 0, 10),
(2, 1, 0, 10),
(3, 1, 0, 10),
(4, 1, 0, 10),
(5, 1, 0, 10),
(6, 1, 0, 10),
(7, 1, 0, 10),
(8, 1, 0, 10),
(9, 1, 0, 10),
(10, 1, 0, 10),
(11, 1, 0, 10),
(12, 1, 0, 10),
(13, 1, 0, 10),
(14, 1, 0, 10),
(15, 1, 0, 10),
(16, 1, 0, 10),
(17, 1, 0, 10),
(18, 1, 0, 10),
(19, 1, 0, 10),
(20, 1, 0, 10),
(21, 1, 0, 10),
(22, 1, 0, 10),
(23, 1, 0, 10),
(24, 1, 0, 10),
(25, 1, 0, 10),
(26, 1, 0, 10),
(27, 1, 0, 10),
(28, 1, 0, 10),
(29, 1, 0, 10),
(30, 1, 0, 10),
(31, 1, 0, 10),
(32, 1, 0, 10),
(33, 2, 0, 10),
(34, 2, 0, 10),
(34, 3, 0, 10),
(35, 2, 0, 10),
(36, 1, 0, 10),
(36, 2, 0, 10),
(37, 1, 0, 10),
(38, 1, 0, 10),
(39, 1, 0, 10),
(40, 1, 0, 10),
(41, 1, 0, 10),
(42, 1, 0, 10),
(43, 1, 0, 10),
(44, 1, 0, 10),
(45, 2, 0, 10),
(46, 1, 0, 10),
(47, 1, 0, 10),
(48, 1, 0, 10),
(49, 1, 0, 10),
(50, 1, 0, 10),
(51, 1, 0, 10),
(52, 1, 0, 10),
(53, 1, 0, 10),
(54, 1, 0, 10),
(55, 1, 0, 10),
(56, 1, 0, 10),
(57, 1, 0, 10),
(58, 1, 0, 10),
(59, 1, 0, 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PermissionAccessWorkflows`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `PermissionAssignments`
--

INSERT INTO `PermissionAssignments` (`paID`, `pkID`) VALUES
(1, 16),
(2, 17),
(3, 54),
(4, 55),
(5, 56),
(6, 57),
(7, 59),
(8, 60),
(9, 61),
(10, 62),
(11, 63),
(12, 65),
(13, 66),
(14, 67),
(15, 68),
(16, 69),
(17, 70);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PermissionDurationObjects`
--

CREATE TABLE IF NOT EXISTS `PermissionDurationObjects` (
`pdID` int(10) unsigned NOT NULL,
  `pdObject` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PermissionKeyCategories`
--

CREATE TABLE IF NOT EXISTS `PermissionKeyCategories` (
`pkCategoryID` int(10) unsigned NOT NULL,
  `pkCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `PermissionKeyCategories`
--

INSERT INTO `PermissionKeyCategories` (`pkCategoryID`, `pkCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'single_page', NULL),
(3, 'stack', NULL),
(4, 'composer_page', NULL),
(5, 'user', NULL),
(6, 'file_set', NULL),
(7, 'file', NULL),
(8, 'area', NULL),
(9, 'block_type', NULL),
(10, 'block', NULL),
(11, 'admin', NULL),
(12, 'sitemap', NULL),
(13, 'marketplace_newsflow', NULL),
(14, 'basic_workflow', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PermissionKeys`
--

CREATE TABLE IF NOT EXISTS `PermissionKeys` (
`pkID` int(10) unsigned NOT NULL,
  `pkHandle` varchar(255) NOT NULL,
  `pkName` varchar(255) NOT NULL,
  `pkCanTriggerWorkflow` int(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` int(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `PermissionKeys`
--

INSERT INTO `PermissionKeys` (`pkID`, `pkHandle`, `pkName`, `pkCanTriggerWorkflow`, `pkHasCustomClass`, `pkDescription`, `pkCategoryID`, `pkgID`) VALUES
(1, 'view_page', 'View', 0, 0, 'Can see a page exists and read its content.', 1, 0),
(2, 'view_page_versions', 'View Versions', 0, 0, 'Can view the page versions dialog and read past versions of a page.', 1, 0),
(3, 'preview_page_as_user', 'Preview Page As User', 0, 0, 'Ability to see what this page will look like at a specific time in the future as a specific user.', 1, 0),
(4, 'edit_page_properties', 'Edit Properties', 0, 1, 'Ability to change anything in the Page Properties menu.', 1, 0),
(5, 'edit_page_contents', 'Edit Contents', 0, 0, 'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ', 1, 0),
(6, 'edit_page_speed_settings', 'Edit Speed Settings', 0, 0, 'Ability to change caching settings.', 1, 0),
(7, 'edit_page_theme', 'Change Theme', 0, 1, 'Ability to change just the theme for this page.', 1, 0),
(8, 'edit_page_type', 'Change Page Type', 0, 0, 'Ability to change just the page type for this page, also check out Theme permissions.', 1, 0),
(9, 'edit_page_permissions', 'Edit Permissions', 1, 0, 'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.', 1, 0),
(10, 'delete_page', 'Delete', 1, 0, 'Ability to move this page to the site''s Trash.', 1, 0),
(11, 'delete_page_versions', 'Delete Versions', 1, 0, 'Ability to remove old versions of this page.', 1, 0),
(12, 'approve_page_versions', 'Approve Changes', 1, 0, 'Can publish an unapproved version of the page.', 1, 0),
(13, 'add_subpage', 'Add Sub-Page', 0, 1, 'Can add a page beneath the current page.', 1, 0),
(14, 'move_or_copy_page', 'Move or Copy Page', 1, 0, 'Can move or copy this page to another location.', 1, 0),
(15, 'schedule_page_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Can control scheduled guest access to this page.', 1, 0),
(16, 'add_block', 'Add Block', 0, 1, 'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)', 9, 0),
(17, 'add_stack', 'Add Stack', 0, 0, 'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)', 9, 0),
(18, 'view_area', 'View Area', 0, 0, 'Can view the area and its contents.', 8, 0),
(19, 'edit_area_contents', 'Edit Area Contents', 0, 0, 'Can edit blocks within this area.', 8, 0),
(20, 'add_block_to_area', 'Add Block to Area', 0, 1, 'Can add blocks to this area. This setting overrides the global Add Block permission for this area.', 8, 0),
(21, 'add_stack_to_area', 'Add Stack to Area', 0, 0, 'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.', 8, 0),
(22, 'add_layout_to_area', 'Add Layouts to Area', 0, 0, 'Controls whether users get the ability to add layouts to a particular area.', 8, 0),
(23, 'edit_area_design', 'Edit Area Design', 0, 0, 'Controls whether users see design controls and can modify an area''s custom CSS.', 8, 0),
(24, 'edit_area_permissions', 'Edit Area Permissions', 0, 0, 'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.', 8, 0),
(25, 'delete_area_contents', 'Delete Area Contents', 0, 0, 'Controls whether users can delete blocks from this area.', 8, 0),
(26, 'schedule_area_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.', 8, 0),
(27, 'view_block', 'View Block', 0, 0, 'Controls whether users can view this block in the page.', 10, 0),
(28, 'edit_block', 'Edit Block', 0, 0, 'Controls whether users can edit this block. This overrides any area or page permissions.', 10, 0),
(29, 'edit_block_custom_template', 'Change Custom Template', 0, 0, 'Controls whether users can change the custom template on this block. This overrides any area or page permissions.', 10, 0),
(30, 'delete_block', 'Delete Block', 0, 0, 'Controls whether users can delete this block. This overrides any area or page permissions.', 10, 0),
(31, 'edit_block_design', 'Edit Design', 0, 0, 'Controls whether users can set custom design properties or CSS on this block.', 10, 0),
(32, 'edit_block_permissions', 'Edit Permissions', 0, 0, 'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.', 10, 0),
(33, 'schedule_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.', 10, 0),
(34, 'view_file_set_file', 'View Files', 0, 0, 'Can view and download files in the site.', 6, 0),
(35, 'search_file_set', 'Search Files in File Manager', 0, 0, 'Can access the file manager', 6, 0),
(36, 'edit_file_set_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file''s properties.', 6, 0),
(37, 'edit_file_set_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files in set.', 6, 0),
(38, 'copy_file_set_files', 'Copy File', 0, 0, 'Can copy files in file set.', 6, 0),
(39, 'edit_file_set_permissions', 'Edit File Access', 0, 0, 'Can edit access to file sets.', 6, 0),
(40, 'delete_file_set', 'Delete File Set', 0, 0, '', 6, 0),
(41, 'delete_file_set_files', 'Delete File', 0, 0, 'Can delete files in set.', 6, 0),
(42, 'add_file', 'Add File', 0, 1, 'Can add files to set.', 6, 0),
(43, 'view_file', 'View Files', 0, 0, 'Can view and download files.', 7, 0),
(44, 'view_file_in_file_manager', 'View File in File Manager', 0, 0, 'Can access the File Manager.', 7, 0),
(45, 'edit_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file''s properties.', 7, 0),
(46, 'edit_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files.', 7, 0),
(47, 'copy_file', 'Copy File', 0, 0, 'Can copy file.', 7, 0),
(48, 'edit_file_permissions', 'Edit File Access', 0, 0, 'Can edit access to file.', 7, 0),
(49, 'delete_file', 'Delete File', 0, 0, 'Can delete file.', 7, 0),
(50, 'approve_basic_workflow_action', 'Approve or Deny', 0, 0, 'Grant ability to approve workflow.', 14, 0),
(51, 'notify_on_basic_workflow_entry', 'Notify on Entry', 0, 0, 'Notify approvers that a change has entered the workflow.', 14, 0),
(52, 'notify_on_basic_workflow_approve', 'Notify on Approve', 0, 0, 'Notify approvers that a change has been approved.', 14, 0),
(53, 'notify_on_basic_workflow_deny', 'Notify on Deny', 0, 0, 'Notify approvers that a change has been denied.', 14, 0),
(54, 'access_user_search', 'Access User Search', 0, 1, '', 5, 0),
(55, 'edit_user_properties', 'Edit User Details', 0, 1, NULL, 5, 0),
(56, 'view_user_attributes', 'View User Attributes', 0, 1, NULL, 5, 0),
(57, 'activate_user', 'Activate/Deactivate User', 0, 0, NULL, 5, 0),
(58, 'sudo', 'Sign in as User', 0, 0, NULL, 5, 0),
(59, 'delete_user', 'Delete User', 0, 0, NULL, 5, 0),
(60, 'access_group_search', 'Access Group Search', 0, 0, '', 5, 0),
(61, 'edit_groups', 'Edit Groups', 0, 0, '', 5, 0),
(62, 'assign_user_groups', 'Assign Groups to User', 0, 1, '', 5, 0),
(63, 'backup', 'Perform Backups', 0, 0, NULL, 11, 0),
(64, 'access_task_permissions', 'Access Task Permissions', 0, 0, NULL, 11, 0),
(65, 'access_sitemap', 'Access Sitemap', 0, 0, NULL, 12, 0),
(66, 'access_page_defaults', 'Access Page Type Defaults', 0, 0, NULL, 11, 0),
(67, 'empty_trash', 'Empty Trash', 0, 0, NULL, 11, 0),
(68, 'uninstall_packages', 'Uninstall Packages', 0, 0, NULL, 13, 0),
(69, 'install_packages', 'Install Packages', 0, 0, NULL, 13, 0),
(70, 'view_newsflow', 'View Newsflow', 0, 0, NULL, 13, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `PileContents`
--

CREATE TABLE IF NOT EXISTS `PileContents` (
`pcID` int(10) unsigned NOT NULL,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `PileContents`
--

INSERT INTO `PileContents` (`pcID`, `pID`, `itemID`, `itemType`, `quantity`, `timestamp`, `displayOrder`) VALUES
(1, 1, 14, 'BLOCK', 1, '2013-11-19 10:29:28', 1),
(2, 1, 74, 'BLOCK', 1, '2013-12-11 10:52:14', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Piles`
--

CREATE TABLE IF NOT EXISTS `Piles` (
`pID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Piles`
--

INSERT INTO `Piles` (`pID`, `uID`, `isDefault`, `timestamp`, `name`, `state`) VALUES
(1, 1, 1, '2013-11-19 10:29:28', NULL, 'READY');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `SignupRequests`
--

CREATE TABLE IF NOT EXISTS `SignupRequests` (
`id` int(11) NOT NULL,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Stacks`
--

CREATE TABLE IF NOT EXISTS `Stacks` (
`stID` int(10) unsigned NOT NULL,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Stacks`
--

INSERT INTO `Stacks` (`stID`, `stName`, `stType`, `cID`) VALUES
(1, 'Fusszeile', 0, 123);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `SystemAntispamLibraries`
--

CREATE TABLE IF NOT EXISTS `SystemAntispamLibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `SystemCaptchaLibraries`
--

CREATE TABLE IF NOT EXISTS `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `SystemCaptchaLibraries`
--

INSERT INTO `SystemCaptchaLibraries` (`sclHandle`, `sclName`, `sclIsActive`, `pkgID`) VALUES
('securimage', 'SecurImage (Default)', 1, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `SystemNotifications`
--

CREATE TABLE IF NOT EXISTS `SystemNotifications` (
`snID` int(10) unsigned NOT NULL,
  `snTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `snURL` text,
  `snURL2` text,
  `snDateTime` datetime NOT NULL,
  `snIsArchived` int(1) NOT NULL DEFAULT '0',
  `snIsNew` int(1) NOT NULL DEFAULT '0',
  `snTitle` varchar(255) DEFAULT NULL,
  `snDescription` text,
  `snBody` text
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `SystemNotifications`
--

INSERT INTO `SystemNotifications` (`snID`, `snTypeID`, `snURL`, `snURL2`, `snDateTime`, `snIsArchived`, `snIsNew`, `snTitle`, `snDescription`, `snBody`) VALUES
(1, 10, '/sulmag/index.php/dashboard/system/backup_restore/update/', NULL, '2013-11-19 07:09:38', 0, 1, 'A new version of concrete5 is now available.', '', '\n\n	<h2>Huge Maintenance Update</h2>\n	\n	<p>\n	Version 5.6.2 and 5.6.2.1 introduce a lot of bug fixes and a few feature improvements, including automated jobs, permissions bug fixes, lots of translation fixes, and more.\n	They are highly recommended for all users of concrete5.\n	</p>\n	<p>\n	As always, backup your data and site before running the upgrade live.\n	</p>			\n\n	<h3><a href="http://www.concrete5.org/documentation/background/version_history/5-6-2-release-notes/" target="_blank">Full 5.6.2 Release Notes</a></h3>\n	<h3><a href="http://www.concrete5.org/documentation/background/version_history/5-6-2-1-release-notes/" target="_blank">Full 5.6.2.1 Release Notes</a></h3>\n\n\n\n	'),
(2, 10, '/sulmag/index.php/dashboard/system/backup_restore/update/', NULL, '2013-11-27 09:56:06', 0, 1, 'Eine neue Version von concrete5 ist verfügbar.', '', '\n\n	<h2>Huge Maintenance Update</h2>\n	\n	<p>\n	Version 5.6.2 and 5.6.2.1 introduce a lot of bug fixes and a few feature improvements, including automated jobs, permissions bug fixes, lots of translation fixes, and more.\n	They are highly recommended for all users of concrete5.\n	</p>\n	<p>\n	As always, backup your data and site before running the upgrade live.\n	</p>			\n\n	<h3><a href="http://www.concrete5.org/documentation/background/version_history/5-6-2-release-notes/" target="_blank">Full 5.6.2 Release Notes</a></h3>\n	<h3><a href="http://www.concrete5.org/documentation/background/version_history/5-6-2-1-release-notes/" target="_blank">Full 5.6.2.1 Release Notes</a></h3>\n\n\n\n	'),
(3, 10, '/sulmag/index.php/dashboard/system/backup_restore/update/', NULL, '2013-12-11 08:03:38', 0, 1, 'Eine neue Version von concrete5 ist verfügbar.', '', '\n\n	<h2>Huge Maintenance Update</h2>\n	\n	<p>\n	Version 5.6.2 and 5.6.2.1 introduce a lot of bug fixes and a few feature improvements, including automated jobs, permissions bug fixes, lots of translation fixes, and more.\n	They are highly recommended for all users of concrete5.\n	</p>\n	<p>\n	As always, backup your data and site before running the upgrade live.\n	</p>			\n\n	<h3><a href="http://www.concrete5.org/documentation/background/version_history/5-6-2-release-notes/" target="_blank">Full 5.6.2 Release Notes</a></h3>\n	<h3><a href="http://www.concrete5.org/documentation/background/version_history/5-6-2-1-release-notes/" target="_blank">Full 5.6.2.1 Release Notes</a></h3>\n\n\n\n	');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UserAttributeKeys`
--

CREATE TABLE IF NOT EXISTS `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `UserAttributeKeys`
--

INSERT INTO `UserAttributeKeys` (`akID`, `uakProfileDisplay`, `uakMemberListDisplay`, `uakProfileEdit`, `uakProfileEditRequired`, `uakRegisterEdit`, `uakRegisterEditRequired`, `displayOrder`, `uakIsActive`) VALUES
(10, 0, 0, 1, 0, 1, 0, 1, 1),
(11, 0, 0, 1, 0, 1, 0, 2, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UserAttributeValues`
--

CREATE TABLE IF NOT EXISTS `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UserBannedIPs`
--

CREATE TABLE IF NOT EXISTS `UserBannedIPs` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UserGroups`
--

CREATE TABLE IF NOT EXISTS `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UserOpenIDs`
--

CREATE TABLE IF NOT EXISTS `UserOpenIDs` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UserPermissionAssignGroupAccessList`
--

CREATE TABLE IF NOT EXISTS `UserPermissionAssignGroupAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UserPermissionAssignGroupAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `UserPermissionAssignGroupAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UserPermissionEditPropertyAccessList`
--

CREATE TABLE IF NOT EXISTS `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` int(1) unsigned DEFAULT '0',
  `uEmail` int(1) unsigned DEFAULT '0',
  `uPassword` int(1) unsigned DEFAULT '0',
  `uAvatar` int(1) unsigned DEFAULT '0',
  `uTimezone` int(1) unsigned DEFAULT '0',
  `uDefaultLanguage` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UserPermissionEditPropertyAttributeAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UserPermissionUserSearchAccessList`
--

CREATE TABLE IF NOT EXISTS `UserPermissionUserSearchAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UserPermissionUserSearchAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `UserPermissionUserSearchAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UserPermissionViewAttributeAccessList`
--

CREATE TABLE IF NOT EXISTS `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UserPermissionViewAttributeAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UserPrivateMessages`
--

CREATE TABLE IF NOT EXISTS `UserPrivateMessages` (
`msgID` int(10) unsigned NOT NULL,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UserPrivateMessagesTo`
--

CREATE TABLE IF NOT EXISTS `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` int(1) NOT NULL DEFAULT '0',
  `msgIsUnread` int(1) NOT NULL DEFAULT '0',
  `msgIsReplied` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
`uID` int(10) unsigned NOT NULL,
  `uName` varchar(64) NOT NULL,
  `uEmail` varchar(64) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uIsActive` varchar(1) NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(4) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` bigint(10) NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) DEFAULT NULL,
  `uDefaultLanguage` varchar(32) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Users`
--

INSERT INTO `Users` (`uID`, `uName`, `uEmail`, `uPassword`, `uIsActive`, `uIsValidated`, `uIsFullRecord`, `uDateAdded`, `uHasAvatar`, `uLastOnline`, `uLastLogin`, `uLastIP`, `uPreviousLogin`, `uNumLogins`, `uTimezone`, `uDefaultLanguage`) VALUES
(1, 'admin', 'info@chriisi.com', 'ed6c754e554ebb15883c22711eac25b9', '1', -1, 1, '2013-11-19 07:04:32', 0, 1386759495, 1386749015, 1388376097, 1385709951, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UserSearchIndexAttributes`
--

CREATE TABLE IF NOT EXISTS `UserSearchIndexAttributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UsersFriends`
--

CREATE TABLE IF NOT EXISTS `UsersFriends` (
`ufID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `UserValidationHashes`
--

CREATE TABLE IF NOT EXISTS `UserValidationHashes` (
`uvhID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `WorkflowProgress`
--

CREATE TABLE IF NOT EXISTS `WorkflowProgress` (
`wpID` int(10) unsigned NOT NULL,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(10) NOT NULL DEFAULT '0',
  `wrID` int(1) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `WorkflowProgressCategories`
--

CREATE TABLE IF NOT EXISTS `WorkflowProgressCategories` (
`wpCategoryID` int(10) unsigned NOT NULL,
  `wpCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `WorkflowProgressCategories`
--

INSERT INTO `WorkflowProgressCategories` (`wpCategoryID`, `wpCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'file', NULL),
(3, 'user', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `WorkflowProgressHistory`
--

CREATE TABLE IF NOT EXISTS `WorkflowProgressHistory` (
`wphID` int(10) unsigned NOT NULL,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` text
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `WorkflowProgressHistory`
--

INSERT INTO `WorkflowProgressHistory` (`wphID`, `wpID`, `timestamp`, `object`) VALUES
(1, 1, '2013-11-19 07:44:14', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"2";s:4:"wrID";s:1:"1";}'),
(2, 2, '2013-11-19 10:28:51', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"3";s:4:"wrID";s:1:"2";}'),
(3, 3, '2013-11-19 10:29:35', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"4";s:4:"wrID";s:1:"3";}'),
(4, 4, '2013-11-19 10:29:55', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"5";s:4:"wrID";s:1:"4";}'),
(5, 5, '2013-11-19 10:40:05', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"6";s:4:"wrID";s:1:"5";}'),
(6, 6, '2013-11-19 11:11:51', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"123";s:4:"cvID";s:1:"2";s:4:"wrID";s:1:"6";}'),
(7, 7, '2013-11-19 11:12:13', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"7";s:4:"wrID";s:1:"7";}'),
(8, 8, '2013-11-19 11:35:44', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"124";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"8";}'),
(9, 9, '2013-11-19 11:36:06', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"124";s:4:"cvID";s:1:"2";s:4:"wrID";s:1:"9";}'),
(10, 10, '2013-11-19 11:36:18', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"10";}'),
(11, 11, '2013-11-19 11:36:44', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"126";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"11";}'),
(12, 12, '2013-11-19 11:40:13', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"124";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"12";}'),
(13, 13, '2013-11-19 11:40:30', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"13";}'),
(14, 14, '2013-11-19 11:40:43', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"126";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"14";}'),
(15, 15, '2013-11-27 10:07:46', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"8";s:4:"wrID";s:2:"15";}'),
(16, 16, '2013-11-29 07:33:37', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"9";s:4:"wrID";s:2:"16";}'),
(17, 17, '2013-11-29 07:34:38', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"10";s:4:"wrID";s:2:"17";}'),
(18, 18, '2013-11-29 07:36:09', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"11";s:4:"wrID";s:2:"18";}'),
(19, 19, '2013-11-29 07:36:37', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"12";s:4:"wrID";s:2:"19";}'),
(20, 20, '2013-11-29 07:37:58', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"13";s:4:"wrID";s:2:"20";}'),
(21, 21, '2013-11-29 07:38:35', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"14";s:4:"wrID";s:2:"21";}'),
(22, 22, '2013-11-29 07:39:50', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"15";s:4:"wrID";s:2:"22";}'),
(23, 23, '2013-12-11 08:21:03', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"16";s:4:"wrID";s:2:"23";}'),
(24, 24, '2013-12-11 08:22:51', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"17";s:4:"wrID";s:2:"24";}'),
(25, 25, '2013-12-11 08:23:38', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"18";s:4:"wrID";s:2:"25";}'),
(26, 26, '2013-12-11 08:39:13', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"124";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"26";}'),
(27, 27, '2013-12-11 08:44:48', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"27";}'),
(28, 28, '2013-12-11 08:49:51', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"28";}'),
(29, 29, '2013-12-11 08:55:18', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"126";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"29";}'),
(30, 30, '2013-12-11 08:57:10', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"126";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"30";}'),
(31, 31, '2013-12-11 09:39:41', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"19";s:4:"wrID";s:2:"31";}'),
(32, 32, '2013-12-11 09:41:31', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"20";s:4:"wrID";s:2:"32";}'),
(33, 33, '2013-12-11 09:47:23', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"21";s:4:"wrID";s:2:"33";}'),
(34, 34, '2013-12-11 09:49:02', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"22";s:4:"wrID";s:2:"34";}'),
(35, 35, '2013-12-11 09:50:57', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"35";}'),
(36, 36, '2013-12-11 09:52:13', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:1:"6";s:4:"wrID";s:2:"36";}'),
(37, 37, '2013-12-11 09:56:40', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:1:"7";s:4:"wrID";s:2:"37";}'),
(38, 38, '2013-12-11 09:58:18', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:1:"8";s:4:"wrID";s:2:"38";}'),
(39, 39, '2013-12-11 10:02:35', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"10";s:4:"wrID";s:2:"39";}'),
(40, 40, '2013-12-11 10:03:19', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"11";s:4:"wrID";s:2:"40";}'),
(41, 41, '2013-12-11 10:04:26', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"12";s:4:"wrID";s:2:"41";}'),
(42, 42, '2013-12-11 10:04:42', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"13";s:4:"wrID";s:2:"42";}'),
(43, 43, '2013-12-11 10:05:30', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"14";s:4:"wrID";s:2:"43";}'),
(44, 44, '2013-12-11 10:06:18', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"15";s:4:"wrID";s:2:"44";}'),
(45, 45, '2013-12-11 10:07:35', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"16";s:4:"wrID";s:2:"45";}'),
(46, 46, '2013-12-11 10:09:00', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"17";s:4:"wrID";s:2:"46";}'),
(47, 47, '2013-12-11 10:09:34', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"18";s:4:"wrID";s:2:"47";}'),
(48, 48, '2013-12-11 10:10:29', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"19";s:4:"wrID";s:2:"48";}'),
(49, 49, '2013-12-11 10:12:46', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"20";s:4:"wrID";s:2:"49";}'),
(50, 50, '2013-12-11 10:13:18', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"21";s:4:"wrID";s:2:"50";}'),
(51, 51, '2013-12-11 10:15:26', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"22";s:4:"wrID";s:2:"51";}'),
(52, 52, '2013-12-11 10:26:56', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"23";s:4:"wrID";s:2:"52";}'),
(53, 53, '2013-12-11 10:28:10', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"24";s:4:"wrID";s:2:"53";}'),
(54, 54, '2013-12-11 10:29:21', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"25";s:4:"wrID";s:2:"54";}'),
(55, 55, '2013-12-11 10:30:32', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"26";s:4:"wrID";s:2:"55";}'),
(56, 56, '2013-12-11 10:31:52', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"27";s:4:"wrID";s:2:"56";}'),
(57, 57, '2013-12-11 10:38:17', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"28";s:4:"wrID";s:2:"57";}'),
(58, 58, '2013-12-11 10:39:10', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"29";s:4:"wrID";s:2:"58";}'),
(59, 59, '2013-12-11 10:39:30', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"30";s:4:"wrID";s:2:"59";}'),
(60, 60, '2013-12-11 10:45:01', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"31";s:4:"wrID";s:2:"60";}'),
(61, 61, '2013-12-11 10:46:20', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"32";s:4:"wrID";s:2:"61";}'),
(62, 62, '2013-12-11 10:47:16', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"33";s:4:"wrID";s:2:"62";}'),
(63, 63, '2013-12-11 10:48:43', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"34";s:4:"wrID";s:2:"63";}'),
(64, 64, '2013-12-11 10:49:49', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"35";s:4:"wrID";s:2:"64";}'),
(65, 65, '2013-12-11 10:52:17', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"125";s:4:"cvID";s:2:"35";s:4:"wrID";s:2:"65";}'),
(66, 66, '2013-12-11 10:52:36', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"124";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"66";}'),
(67, 67, '2013-12-11 10:54:35', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"124";s:4:"cvID";s:1:"6";s:4:"wrID";s:2:"67";}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `WorkflowRequestObjects`
--

CREATE TABLE IF NOT EXISTS `WorkflowRequestObjects` (
`wrID` int(10) unsigned NOT NULL,
  `wrObject` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Workflows`
--

CREATE TABLE IF NOT EXISTS `Workflows` (
`wfID` int(10) unsigned NOT NULL,
  `wfName` varchar(255) DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `WorkflowTypes`
--

CREATE TABLE IF NOT EXISTS `WorkflowTypes` (
`wftID` int(10) unsigned NOT NULL,
  `wftHandle` varchar(64) NOT NULL,
  `wftName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `WorkflowTypes`
--

INSERT INTO `WorkflowTypes` (`wftID`, `wftHandle`, `wftName`, `pkgID`) VALUES
(1, 'basic', 'Basic Workflow', 0);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `AreaPermissionAssignments`
--
ALTER TABLE `AreaPermissionAssignments`
 ADD PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`);

--
-- Indizes für die Tabelle `AreaPermissionBlockTypeAccessList`
--
ALTER TABLE `AreaPermissionBlockTypeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indizes für die Tabelle `AreaPermissionBlockTypeAccessListCustom`
--
ALTER TABLE `AreaPermissionBlockTypeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`btID`);

--
-- Indizes für die Tabelle `Areas`
--
ALTER TABLE `Areas`
 ADD PRIMARY KEY (`arID`), ADD KEY `arIsGlobal` (`arIsGlobal`), ADD KEY `cID` (`cID`), ADD KEY `arHandle` (`arHandle`);

--
-- Indizes für die Tabelle `atAddress`
--
ALTER TABLE `atAddress`
 ADD PRIMARY KEY (`avID`);

--
-- Indizes für die Tabelle `atAddressCustomCountries`
--
ALTER TABLE `atAddressCustomCountries`
 ADD PRIMARY KEY (`atAddressCustomCountryID`);

--
-- Indizes für die Tabelle `atAddressSettings`
--
ALTER TABLE `atAddressSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indizes für die Tabelle `atBoolean`
--
ALTER TABLE `atBoolean`
 ADD PRIMARY KEY (`avID`);

--
-- Indizes für die Tabelle `atBooleanSettings`
--
ALTER TABLE `atBooleanSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indizes für die Tabelle `atDateTime`
--
ALTER TABLE `atDateTime`
 ADD PRIMARY KEY (`avID`);

--
-- Indizes für die Tabelle `atDateTimeSettings`
--
ALTER TABLE `atDateTimeSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indizes für die Tabelle `atDefault`
--
ALTER TABLE `atDefault`
 ADD PRIMARY KEY (`avID`);

--
-- Indizes für die Tabelle `atFile`
--
ALTER TABLE `atFile`
 ADD PRIMARY KEY (`avID`);

--
-- Indizes für die Tabelle `atNumber`
--
ALTER TABLE `atNumber`
 ADD PRIMARY KEY (`avID`);

--
-- Indizes für die Tabelle `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
 ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `atSelectOptionsSelected`
--
ALTER TABLE `atSelectOptionsSelected`
 ADD PRIMARY KEY (`avID`,`atSelectOptionID`);

--
-- Indizes für die Tabelle `atSelectSettings`
--
ALTER TABLE `atSelectSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indizes für die Tabelle `atTextareaSettings`
--
ALTER TABLE `atTextareaSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indizes für die Tabelle `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
 ADD PRIMARY KEY (`akCategoryID`);

--
-- Indizes für die Tabelle `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
 ADD PRIMARY KEY (`akID`), ADD UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`);

--
-- Indizes für die Tabelle `AttributeSetKeys`
--
ALTER TABLE `AttributeSetKeys`
 ADD PRIMARY KEY (`akID`,`asID`);

--
-- Indizes für die Tabelle `AttributeSets`
--
ALTER TABLE `AttributeSets`
 ADD PRIMARY KEY (`asID`);

--
-- Indizes für die Tabelle `AttributeTypeCategories`
--
ALTER TABLE `AttributeTypeCategories`
 ADD PRIMARY KEY (`atID`,`akCategoryID`);

--
-- Indizes für die Tabelle `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
 ADD PRIMARY KEY (`atID`);

--
-- Indizes für die Tabelle `AttributeValues`
--
ALTER TABLE `AttributeValues`
 ADD PRIMARY KEY (`avID`);

--
-- Indizes für die Tabelle `BasicWorkflowPermissionAssignments`
--
ALTER TABLE `BasicWorkflowPermissionAssignments`
 ADD PRIMARY KEY (`wfID`,`pkID`,`paID`);

--
-- Indizes für die Tabelle `BasicWorkflowProgressData`
--
ALTER TABLE `BasicWorkflowProgressData`
 ADD PRIMARY KEY (`wpID`);

--
-- Indizes für die Tabelle `BlockPermissionAssignments`
--
ALTER TABLE `BlockPermissionAssignments`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`);

--
-- Indizes für die Tabelle `BlockRelations`
--
ALTER TABLE `BlockRelations`
 ADD PRIMARY KEY (`brID`);

--
-- Indizes für die Tabelle `Blocks`
--
ALTER TABLE `Blocks`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `BlockTypePermissionBlockTypeAccessList`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indizes für die Tabelle `BlockTypePermissionBlockTypeAccessListCustom`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`btID`);

--
-- Indizes für die Tabelle `BlockTypes`
--
ALTER TABLE `BlockTypes`
 ADD PRIMARY KEY (`btID`), ADD UNIQUE KEY `btHandle` (`btHandle`);

--
-- Indizes für die Tabelle `btContentFile`
--
ALTER TABLE `btContentFile`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btContentImage`
--
ALTER TABLE `btContentImage`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btContentLocal`
--
ALTER TABLE `btContentLocal`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btCoreScrapbookDisplay`
--
ALTER TABLE `btCoreScrapbookDisplay`
 ADD PRIMARY KEY (`bID`), ADD KEY `bOriginalID` (`bOriginalID`);

--
-- Indizes für die Tabelle `btCoreStackDisplay`
--
ALTER TABLE `btCoreStackDisplay`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btDashboardNewsflowLatest`
--
ALTER TABLE `btDashboardNewsflowLatest`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btDateNav`
--
ALTER TABLE `btDateNav`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btExternalForm`
--
ALTER TABLE `btExternalForm`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btFlashContent`
--
ALTER TABLE `btFlashContent`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btForm`
--
ALTER TABLE `btForm`
 ADD PRIMARY KEY (`bID`), ADD KEY `questionSetIdForeign` (`questionSetId`);

--
-- Indizes für die Tabelle `btFormAnswers`
--
ALTER TABLE `btFormAnswers`
 ADD PRIMARY KEY (`aID`);

--
-- Indizes für die Tabelle `btFormAnswerSet`
--
ALTER TABLE `btFormAnswerSet`
 ADD PRIMARY KEY (`asID`), ADD KEY `questionSetId` (`questionSetId`);

--
-- Indizes für die Tabelle `btFormQuestions`
--
ALTER TABLE `btFormQuestions`
 ADD PRIMARY KEY (`qID`), ADD KEY `questionSetId` (`questionSetId`), ADD KEY `msqID` (`msqID`);

--
-- Indizes für die Tabelle `btGoogleMap`
--
ALTER TABLE `btGoogleMap`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btGuestBook`
--
ALTER TABLE `btGuestBook`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btGuestBookEntries`
--
ALTER TABLE `btGuestBookEntries`
 ADD PRIMARY KEY (`entryID`), ADD KEY `cID` (`cID`);

--
-- Indizes für die Tabelle `btNavigation`
--
ALTER TABLE `btNavigation`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btNextPrevious`
--
ALTER TABLE `btNextPrevious`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btPageList`
--
ALTER TABLE `btPageList`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btRssDisplay`
--
ALTER TABLE `btRssDisplay`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btSearch`
--
ALTER TABLE `btSearch`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btSlideshow`
--
ALTER TABLE `btSlideshow`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btSlideshowImg`
--
ALTER TABLE `btSlideshowImg`
 ADD PRIMARY KEY (`slideshowImgId`);

--
-- Indizes für die Tabelle `btSurvey`
--
ALTER TABLE `btSurvey`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btSurveyOptions`
--
ALTER TABLE `btSurveyOptions`
 ADD PRIMARY KEY (`optionID`);

--
-- Indizes für die Tabelle `btSurveyResults`
--
ALTER TABLE `btSurveyResults`
 ADD PRIMARY KEY (`resultID`);

--
-- Indizes für die Tabelle `btTags`
--
ALTER TABLE `btTags`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btVideo`
--
ALTER TABLE `btVideo`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `btYouTube`
--
ALTER TABLE `btYouTube`
 ADD PRIMARY KEY (`bID`);

--
-- Indizes für die Tabelle `CollectionAttributeValues`
--
ALTER TABLE `CollectionAttributeValues`
 ADD PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`);

--
-- Indizes für die Tabelle `Collections`
--
ALTER TABLE `Collections`
 ADD PRIMARY KEY (`cID`), ADD KEY `cDateModified` (`cDateModified`), ADD KEY `cDateAdded` (`cDateAdded`);

--
-- Indizes für die Tabelle `CollectionSearchIndexAttributes`
--
ALTER TABLE `CollectionSearchIndexAttributes`
 ADD PRIMARY KEY (`cID`);

--
-- Indizes für die Tabelle `CollectionVersionAreaLayouts`
--
ALTER TABLE `CollectionVersionAreaLayouts`
 ADD PRIMARY KEY (`cvalID`), ADD KEY `areaLayoutsIndex` (`cID`,`cvID`,`arHandle`), ADD KEY `cID` (`cID`);

--
-- Indizes für die Tabelle `CollectionVersionAreaStyles`
--
ALTER TABLE `CollectionVersionAreaStyles`
 ADD PRIMARY KEY (`cID`,`cvID`,`arHandle`);

--
-- Indizes für die Tabelle `CollectionVersionBlocks`
--
ALTER TABLE `CollectionVersionBlocks`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`), ADD KEY `cbIncludeAll` (`cbIncludeAll`), ADD KEY `isOriginal` (`isOriginal`), ADD KEY `bID` (`bID`), ADD KEY `cIDcvID` (`cID`,`cvID`);

--
-- Indizes für die Tabelle `CollectionVersionBlocksOutputCache`
--
ALTER TABLE `CollectionVersionBlocksOutputCache`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`);

--
-- Indizes für die Tabelle `CollectionVersionBlockStyles`
--
ALTER TABLE `CollectionVersionBlockStyles`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`);

--
-- Indizes für die Tabelle `CollectionVersionRelatedEdits`
--
ALTER TABLE `CollectionVersionRelatedEdits`
 ADD PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`);

--
-- Indizes für die Tabelle `CollectionVersions`
--
ALTER TABLE `CollectionVersions`
 ADD PRIMARY KEY (`cID`,`cvID`), ADD KEY `cvIsApproved` (`cvIsApproved`), ADD KEY `ctID` (`ctID`);

--
-- Indizes für die Tabelle `ComposerContentLayout`
--
ALTER TABLE `ComposerContentLayout`
 ADD PRIMARY KEY (`cclID`);

--
-- Indizes für die Tabelle `ComposerDrafts`
--
ALTER TABLE `ComposerDrafts`
 ADD PRIMARY KEY (`cID`);

--
-- Indizes für die Tabelle `ComposerTypes`
--
ALTER TABLE `ComposerTypes`
 ADD PRIMARY KEY (`ctID`);

--
-- Indizes für die Tabelle `Config`
--
ALTER TABLE `Config`
 ADD PRIMARY KEY (`cfKey`,`uID`), ADD KEY `uID` (`uID`);

--
-- Indizes für die Tabelle `CustomStylePresets`
--
ALTER TABLE `CustomStylePresets`
 ADD PRIMARY KEY (`cspID`);

--
-- Indizes für die Tabelle `CustomStyleRules`
--
ALTER TABLE `CustomStyleRules`
 ADD PRIMARY KEY (`csrID`);

--
-- Indizes für die Tabelle `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
 ADD PRIMARY KEY (`dsID`);

--
-- Indizes für die Tabelle `FileAttributeValues`
--
ALTER TABLE `FileAttributeValues`
 ADD PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`);

--
-- Indizes für die Tabelle `FilePermissionAssignments`
--
ALTER TABLE `FilePermissionAssignments`
 ADD PRIMARY KEY (`fID`,`paID`,`pkID`);

--
-- Indizes für die Tabelle `FilePermissionFileTypes`
--
ALTER TABLE `FilePermissionFileTypes`
 ADD PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`);

--
-- Indizes für die Tabelle `FilePermissions`
--
ALTER TABLE `FilePermissions`
 ADD PRIMARY KEY (`fID`,`gID`,`uID`);

--
-- Indizes für die Tabelle `Files`
--
ALTER TABLE `Files`
 ADD PRIMARY KEY (`fID`,`uID`,`fslID`), ADD KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`);

--
-- Indizes für die Tabelle `FileSearchIndexAttributes`
--
ALTER TABLE `FileSearchIndexAttributes`
 ADD PRIMARY KEY (`fID`);

--
-- Indizes für die Tabelle `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
 ADD PRIMARY KEY (`fsfID`), ADD KEY `fID` (`fID`), ADD KEY `fsID` (`fsID`);

--
-- Indizes für die Tabelle `FileSetPermissionAssignments`
--
ALTER TABLE `FileSetPermissionAssignments`
 ADD PRIMARY KEY (`fsID`,`paID`,`pkID`);

--
-- Indizes für die Tabelle `FileSetPermissionFileTypeAccessList`
--
ALTER TABLE `FileSetPermissionFileTypeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indizes für die Tabelle `FileSetPermissionFileTypeAccessListCustom`
--
ALTER TABLE `FileSetPermissionFileTypeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`extension`);

--
-- Indizes für die Tabelle `FileSets`
--
ALTER TABLE `FileSets`
 ADD PRIMARY KEY (`fsID`), ADD KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`);

--
-- Indizes für die Tabelle `FileSetSavedSearches`
--
ALTER TABLE `FileSetSavedSearches`
 ADD PRIMARY KEY (`fsID`);

--
-- Indizes für die Tabelle `FileStorageLocations`
--
ALTER TABLE `FileStorageLocations`
 ADD PRIMARY KEY (`fslID`);

--
-- Indizes für die Tabelle `FileVersionLog`
--
ALTER TABLE `FileVersionLog`
 ADD PRIMARY KEY (`fvlID`);

--
-- Indizes für die Tabelle `FileVersions`
--
ALTER TABLE `FileVersions`
 ADD PRIMARY KEY (`fID`,`fvID`), ADD KEY `fvExtension` (`fvType`), ADD KEY `fvTitle` (`fvTitle`);

--
-- Indizes für die Tabelle `Groups`
--
ALTER TABLE `Groups`
 ADD PRIMARY KEY (`gID`), ADD UNIQUE KEY `gName` (`gName`);

--
-- Indizes für die Tabelle `GroupSetGroups`
--
ALTER TABLE `GroupSetGroups`
 ADD PRIMARY KEY (`gID`,`gsID`);

--
-- Indizes für die Tabelle `GroupSets`
--
ALTER TABLE `GroupSets`
 ADD PRIMARY KEY (`gsID`);

--
-- Indizes für die Tabelle `Jobs`
--
ALTER TABLE `Jobs`
 ADD PRIMARY KEY (`jID`);

--
-- Indizes für die Tabelle `JobsLog`
--
ALTER TABLE `JobsLog`
 ADD PRIMARY KEY (`jlID`);

--
-- Indizes für die Tabelle `LayoutPresets`
--
ALTER TABLE `LayoutPresets`
 ADD PRIMARY KEY (`lpID`), ADD UNIQUE KEY `layoutID` (`layoutID`);

--
-- Indizes für die Tabelle `Layouts`
--
ALTER TABLE `Layouts`
 ADD PRIMARY KEY (`layoutID`);

--
-- Indizes für die Tabelle `Logs`
--
ALTER TABLE `Logs`
 ADD PRIMARY KEY (`logID`), ADD KEY `logType` (`logType`), ADD KEY `logIsInternal` (`logIsInternal`);

--
-- Indizes für die Tabelle `MailImporters`
--
ALTER TABLE `MailImporters`
 ADD PRIMARY KEY (`miID`);

--
-- Indizes für die Tabelle `MailValidationHashes`
--
ALTER TABLE `MailValidationHashes`
 ADD PRIMARY KEY (`mvhID`);

--
-- Indizes für die Tabelle `Packages`
--
ALTER TABLE `Packages`
 ADD PRIMARY KEY (`pkgID`), ADD UNIQUE KEY `pkgHandle` (`pkgHandle`);

--
-- Indizes für die Tabelle `PagePaths`
--
ALTER TABLE `PagePaths`
 ADD PRIMARY KEY (`ppID`), ADD KEY `cID` (`cID`), ADD KEY `ppIsCanonical` (`ppIsCanonical`);

--
-- Indizes für die Tabelle `PagePermissionAssignments`
--
ALTER TABLE `PagePermissionAssignments`
 ADD PRIMARY KEY (`cID`,`pkID`,`paID`);

--
-- Indizes für die Tabelle `PagePermissionPageTypeAccessList`
--
ALTER TABLE `PagePermissionPageTypeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indizes für die Tabelle `PagePermissionPageTypeAccessListCustom`
--
ALTER TABLE `PagePermissionPageTypeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`ctID`);

--
-- Indizes für die Tabelle `PagePermissionPropertyAccessList`
--
ALTER TABLE `PagePermissionPropertyAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indizes für die Tabelle `PagePermissionPropertyAttributeAccessListCustom`
--
ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`akID`);

--
-- Indizes für die Tabelle `PagePermissionThemeAccessList`
--
ALTER TABLE `PagePermissionThemeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indizes für die Tabelle `PagePermissionThemeAccessListCustom`
--
ALTER TABLE `PagePermissionThemeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`ptID`);

--
-- Indizes für die Tabelle `Pages`
--
ALTER TABLE `Pages`
 ADD PRIMARY KEY (`cID`), ADD KEY `cParentID` (`cParentID`), ADD KEY `cIsActive` (`cIsActive`), ADD KEY `cCheckedOutUID` (`cCheckedOutUID`), ADD KEY `uID` (`uID`), ADD KEY `cPointerID` (`cPointerID`), ADD KEY `cIsTemplate` (`cIsTemplate`), ADD KEY `cIsSystemPage` (`cIsSystemPage`);

--
-- Indizes für die Tabelle `PageSearchIndex`
--
ALTER TABLE `PageSearchIndex`
 ADD PRIMARY KEY (`cID`), ADD KEY `cDateLastIndexed` (`cDateLastIndexed`), ADD KEY `cDateLastSitemapped` (`cDateLastSitemapped`), ADD KEY `cRequiresReindex` (`cRequiresReindex`), ADD FULLTEXT KEY `cName` (`cName`), ADD FULLTEXT KEY `cDescription` (`cDescription`), ADD FULLTEXT KEY `content` (`content`), ADD FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`);

--
-- Indizes für die Tabelle `PageStatistics`
--
ALTER TABLE `PageStatistics`
 ADD PRIMARY KEY (`pstID`), ADD KEY `cID` (`cID`), ADD KEY `date` (`date`), ADD KEY `uID` (`uID`);

--
-- Indizes für die Tabelle `PageThemes`
--
ALTER TABLE `PageThemes`
 ADD PRIMARY KEY (`ptID`), ADD UNIQUE KEY `ptHandle` (`ptHandle`);

--
-- Indizes für die Tabelle `PageThemeStyles`
--
ALTER TABLE `PageThemeStyles`
 ADD PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`);

--
-- Indizes für die Tabelle `PageTypeAttributes`
--
ALTER TABLE `PageTypeAttributes`
 ADD PRIMARY KEY (`ctID`,`akID`);

--
-- Indizes für die Tabelle `PageTypes`
--
ALTER TABLE `PageTypes`
 ADD PRIMARY KEY (`ctID`), ADD UNIQUE KEY `ctHandle` (`ctHandle`);

--
-- Indizes für die Tabelle `PageWorkflowProgress`
--
ALTER TABLE `PageWorkflowProgress`
 ADD PRIMARY KEY (`cID`,`wpID`);

--
-- Indizes für die Tabelle `PermissionAccess`
--
ALTER TABLE `PermissionAccess`
 ADD PRIMARY KEY (`paID`);

--
-- Indizes für die Tabelle `PermissionAccessEntities`
--
ALTER TABLE `PermissionAccessEntities`
 ADD PRIMARY KEY (`peID`), ADD KEY `petID` (`petID`);

--
-- Indizes für die Tabelle `PermissionAccessEntityGroups`
--
ALTER TABLE `PermissionAccessEntityGroups`
 ADD PRIMARY KEY (`pegID`), ADD KEY `gID` (`gID`);

--
-- Indizes für die Tabelle `PermissionAccessEntityGroupSets`
--
ALTER TABLE `PermissionAccessEntityGroupSets`
 ADD PRIMARY KEY (`peID`,`gsID`), ADD KEY `gsID` (`gsID`);

--
-- Indizes für die Tabelle `PermissionAccessEntityTypeCategories`
--
ALTER TABLE `PermissionAccessEntityTypeCategories`
 ADD PRIMARY KEY (`petID`,`pkCategoryID`);

--
-- Indizes für die Tabelle `PermissionAccessEntityTypes`
--
ALTER TABLE `PermissionAccessEntityTypes`
 ADD PRIMARY KEY (`petID`);

--
-- Indizes für die Tabelle `PermissionAccessEntityUsers`
--
ALTER TABLE `PermissionAccessEntityUsers`
 ADD PRIMARY KEY (`peID`,`uID`), ADD KEY `uID` (`uID`);

--
-- Indizes für die Tabelle `PermissionAccessList`
--
ALTER TABLE `PermissionAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `accessType` (`accessType`), ADD KEY `peID` (`peID`), ADD KEY `peID_accessType` (`peID`,`accessType`);

--
-- Indizes für die Tabelle `PermissionAccessWorkflows`
--
ALTER TABLE `PermissionAccessWorkflows`
 ADD PRIMARY KEY (`paID`,`wfID`);

--
-- Indizes für die Tabelle `PermissionAssignments`
--
ALTER TABLE `PermissionAssignments`
 ADD PRIMARY KEY (`paID`,`pkID`), ADD KEY `pkID` (`pkID`);

--
-- Indizes für die Tabelle `PermissionDurationObjects`
--
ALTER TABLE `PermissionDurationObjects`
 ADD PRIMARY KEY (`pdID`);

--
-- Indizes für die Tabelle `PermissionKeyCategories`
--
ALTER TABLE `PermissionKeyCategories`
 ADD PRIMARY KEY (`pkCategoryID`);

--
-- Indizes für die Tabelle `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
 ADD PRIMARY KEY (`pkID`), ADD UNIQUE KEY `akHandle` (`pkHandle`);

--
-- Indizes für die Tabelle `PileContents`
--
ALTER TABLE `PileContents`
 ADD PRIMARY KEY (`pcID`);

--
-- Indizes für die Tabelle `Piles`
--
ALTER TABLE `Piles`
 ADD PRIMARY KEY (`pID`);

--
-- Indizes für die Tabelle `SignupRequests`
--
ALTER TABLE `SignupRequests`
 ADD PRIMARY KEY (`id`), ADD KEY `index_ipFrom` (`ipFrom`);

--
-- Indizes für die Tabelle `Stacks`
--
ALTER TABLE `Stacks`
 ADD PRIMARY KEY (`stID`), ADD KEY `stType` (`stType`), ADD KEY `stName` (`stName`);

--
-- Indizes für die Tabelle `SystemAntispamLibraries`
--
ALTER TABLE `SystemAntispamLibraries`
 ADD PRIMARY KEY (`saslHandle`);

--
-- Indizes für die Tabelle `SystemCaptchaLibraries`
--
ALTER TABLE `SystemCaptchaLibraries`
 ADD PRIMARY KEY (`sclHandle`);

--
-- Indizes für die Tabelle `SystemNotifications`
--
ALTER TABLE `SystemNotifications`
 ADD PRIMARY KEY (`snID`);

--
-- Indizes für die Tabelle `UserAttributeKeys`
--
ALTER TABLE `UserAttributeKeys`
 ADD PRIMARY KEY (`akID`);

--
-- Indizes für die Tabelle `UserAttributeValues`
--
ALTER TABLE `UserAttributeValues`
 ADD PRIMARY KEY (`uID`,`akID`,`avID`);

--
-- Indizes für die Tabelle `UserBannedIPs`
--
ALTER TABLE `UserBannedIPs`
 ADD PRIMARY KEY (`ipFrom`,`ipTo`), ADD KEY `ipFrom` (`ipFrom`), ADD KEY `ipTo` (`ipTo`);

--
-- Indizes für die Tabelle `UserGroups`
--
ALTER TABLE `UserGroups`
 ADD PRIMARY KEY (`uID`,`gID`), ADD KEY `uID` (`uID`), ADD KEY `gID` (`gID`);

--
-- Indizes für die Tabelle `UserOpenIDs`
--
ALTER TABLE `UserOpenIDs`
 ADD PRIMARY KEY (`uOpenID`), ADD KEY `uID` (`uID`);

--
-- Indizes für die Tabelle `UserPermissionAssignGroupAccessList`
--
ALTER TABLE `UserPermissionAssignGroupAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indizes für die Tabelle `UserPermissionAssignGroupAccessListCustom`
--
ALTER TABLE `UserPermissionAssignGroupAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`gID`);

--
-- Indizes für die Tabelle `UserPermissionEditPropertyAccessList`
--
ALTER TABLE `UserPermissionEditPropertyAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indizes für die Tabelle `UserPermissionEditPropertyAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`akID`);

--
-- Indizes für die Tabelle `UserPermissionUserSearchAccessList`
--
ALTER TABLE `UserPermissionUserSearchAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indizes für die Tabelle `UserPermissionUserSearchAccessListCustom`
--
ALTER TABLE `UserPermissionUserSearchAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`gID`);

--
-- Indizes für die Tabelle `UserPermissionViewAttributeAccessList`
--
ALTER TABLE `UserPermissionViewAttributeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indizes für die Tabelle `UserPermissionViewAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionViewAttributeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`akID`);

--
-- Indizes für die Tabelle `UserPrivateMessages`
--
ALTER TABLE `UserPrivateMessages`
 ADD PRIMARY KEY (`msgID`);

--
-- Indizes für die Tabelle `UserPrivateMessagesTo`
--
ALTER TABLE `UserPrivateMessagesTo`
 ADD PRIMARY KEY (`msgID`,`uID`,`uAuthorID`), ADD KEY `uID` (`uID`), ADD KEY `uAuthorID` (`uAuthorID`), ADD KEY `msgFolderID` (`msgMailboxID`), ADD KEY `msgIsNew` (`msgIsNew`);

--
-- Indizes für die Tabelle `Users`
--
ALTER TABLE `Users`
 ADD PRIMARY KEY (`uID`), ADD UNIQUE KEY `uName` (`uName`);

--
-- Indizes für die Tabelle `UserSearchIndexAttributes`
--
ALTER TABLE `UserSearchIndexAttributes`
 ADD PRIMARY KEY (`uID`);

--
-- Indizes für die Tabelle `UsersFriends`
--
ALTER TABLE `UsersFriends`
 ADD PRIMARY KEY (`ufID`);

--
-- Indizes für die Tabelle `UserValidationHashes`
--
ALTER TABLE `UserValidationHashes`
 ADD PRIMARY KEY (`uvhID`);

--
-- Indizes für die Tabelle `WorkflowProgress`
--
ALTER TABLE `WorkflowProgress`
 ADD PRIMARY KEY (`wpID`), ADD KEY `wrID` (`wrID`), ADD KEY `wpIsCompleted` (`wpIsCompleted`);

--
-- Indizes für die Tabelle `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
 ADD PRIMARY KEY (`wpCategoryID`);

--
-- Indizes für die Tabelle `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
 ADD PRIMARY KEY (`wphID`);

--
-- Indizes für die Tabelle `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
 ADD PRIMARY KEY (`wrID`);

--
-- Indizes für die Tabelle `Workflows`
--
ALTER TABLE `Workflows`
 ADD PRIMARY KEY (`wfID`), ADD UNIQUE KEY `wfName` (`wfName`);

--
-- Indizes für die Tabelle `WorkflowTypes`
--
ALTER TABLE `WorkflowTypes`
 ADD PRIMARY KEY (`wftID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Areas`
--
ALTER TABLE `Areas`
MODIFY `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT für Tabelle `atAddressCustomCountries`
--
ALTER TABLE `atAddressCustomCountries`
MODIFY `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
MODIFY `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
MODIFY `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT für Tabelle `AttributeSets`
--
ALTER TABLE `AttributeSets`
MODIFY `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
MODIFY `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT für Tabelle `AttributeValues`
--
ALTER TABLE `AttributeValues`
MODIFY `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=142;
--
-- AUTO_INCREMENT für Tabelle `BlockRelations`
--
ALTER TABLE `BlockRelations`
MODIFY `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT für Tabelle `Blocks`
--
ALTER TABLE `Blocks`
MODIFY `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT für Tabelle `BlockTypes`
--
ALTER TABLE `BlockTypes`
MODIFY `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT für Tabelle `btFormAnswers`
--
ALTER TABLE `btFormAnswers`
MODIFY `aID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `btFormAnswerSet`
--
ALTER TABLE `btFormAnswerSet`
MODIFY `asID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `btFormQuestions`
--
ALTER TABLE `btFormQuestions`
MODIFY `qID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `btGuestBookEntries`
--
ALTER TABLE `btGuestBookEntries`
MODIFY `entryID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `btSlideshowImg`
--
ALTER TABLE `btSlideshowImg`
MODIFY `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT für Tabelle `btSurveyOptions`
--
ALTER TABLE `btSurveyOptions`
MODIFY `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `btSurveyResults`
--
ALTER TABLE `btSurveyResults`
MODIFY `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Collections`
--
ALTER TABLE `Collections`
MODIFY `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT für Tabelle `CollectionVersionAreaLayouts`
--
ALTER TABLE `CollectionVersionAreaLayouts`
MODIFY `cvalID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `ComposerContentLayout`
--
ALTER TABLE `ComposerContentLayout`
MODIFY `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `CustomStylePresets`
--
ALTER TABLE `CustomStylePresets`
MODIFY `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `CustomStyleRules`
--
ALTER TABLE `CustomStyleRules`
MODIFY `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
MODIFY `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Files`
--
ALTER TABLE `Files`
MODIFY `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT für Tabelle `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
MODIFY `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT für Tabelle `FileSets`
--
ALTER TABLE `FileSets`
MODIFY `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `FileVersionLog`
--
ALTER TABLE `FileVersionLog`
MODIFY `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT für Tabelle `Groups`
--
ALTER TABLE `Groups`
MODIFY `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `GroupSets`
--
ALTER TABLE `GroupSets`
MODIFY `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Jobs`
--
ALTER TABLE `Jobs`
MODIFY `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT für Tabelle `JobsLog`
--
ALTER TABLE `JobsLog`
MODIFY `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `LayoutPresets`
--
ALTER TABLE `LayoutPresets`
MODIFY `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Layouts`
--
ALTER TABLE `Layouts`
MODIFY `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Logs`
--
ALTER TABLE `Logs`
MODIFY `logID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `MailImporters`
--
ALTER TABLE `MailImporters`
MODIFY `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `MailValidationHashes`
--
ALTER TABLE `MailValidationHashes`
MODIFY `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Packages`
--
ALTER TABLE `Packages`
MODIFY `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `PagePaths`
--
ALTER TABLE `PagePaths`
MODIFY `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT für Tabelle `PageStatistics`
--
ALTER TABLE `PageStatistics`
MODIFY `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1240;
--
-- AUTO_INCREMENT für Tabelle `PageThemes`
--
ALTER TABLE `PageThemes`
MODIFY `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `PageTypes`
--
ALTER TABLE `PageTypes`
MODIFY `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `PermissionAccess`
--
ALTER TABLE `PermissionAccess`
MODIFY `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT für Tabelle `PermissionAccessEntities`
--
ALTER TABLE `PermissionAccessEntities`
MODIFY `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `PermissionAccessEntityGroups`
--
ALTER TABLE `PermissionAccessEntityGroups`
MODIFY `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `PermissionAccessEntityTypes`
--
ALTER TABLE `PermissionAccessEntityTypes`
MODIFY `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT für Tabelle `PermissionDurationObjects`
--
ALTER TABLE `PermissionDurationObjects`
MODIFY `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `PermissionKeyCategories`
--
ALTER TABLE `PermissionKeyCategories`
MODIFY `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT für Tabelle `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
MODIFY `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT für Tabelle `PileContents`
--
ALTER TABLE `PileContents`
MODIFY `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT für Tabelle `Piles`
--
ALTER TABLE `Piles`
MODIFY `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `SignupRequests`
--
ALTER TABLE `SignupRequests`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Stacks`
--
ALTER TABLE `Stacks`
MODIFY `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `SystemNotifications`
--
ALTER TABLE `SystemNotifications`
MODIFY `snID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `UserPrivateMessages`
--
ALTER TABLE `UserPrivateMessages`
MODIFY `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Users`
--
ALTER TABLE `Users`
MODIFY `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `UsersFriends`
--
ALTER TABLE `UsersFriends`
MODIFY `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `UserValidationHashes`
--
ALTER TABLE `UserValidationHashes`
MODIFY `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `WorkflowProgress`
--
ALTER TABLE `WorkflowProgress`
MODIFY `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
MODIFY `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT für Tabelle `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
MODIFY `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT für Tabelle `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
MODIFY `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `Workflows`
--
ALTER TABLE `Workflows`
MODIFY `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT für Tabelle `WorkflowTypes`
--
ALTER TABLE `WorkflowTypes`
MODIFY `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
