-- phpMyAdmin SQL Dump
-- version 2.9.1.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Aug 06, 2013 at 10:34 PM
-- Server version: 5.0.27
-- PHP Version: 5.2.0
-- 
-- Database: `amini`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_banner`
-- 

CREATE TABLE `jos_banner` (
  `bid` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` varchar(30) NOT NULL default 'banner',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `imageurl` varchar(100) NOT NULL default '',
  `clickurl` varchar(200) NOT NULL default '',
  `date` datetime default NULL,
  `showBanner` tinyint(1) NOT NULL default '0',
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `jos_banner`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_bannerclient`
-- 

CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL default '0',
  `checked_out_time` time default NULL,
  `editor` varchar(50) default NULL,
  PRIMARY KEY  (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_bannerclient`
-- 

INSERT INTO `jos_bannerclient` VALUES (1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_bannertrack`
-- 

CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_bannertrack`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_categories`
-- 

CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL default '',
  `section` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `editor` varchar(50) default NULL,
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

-- 
-- Dumping data for table `jos_categories`
-- 

INSERT INTO `jos_categories` VALUES (1, 0, 'آخرین ها', '', 'latest-news', 'taking_notes.jpg', '1', 'left', 'The latest news from the Joomla! Team', 1, 0, '0000-00-00 00:00:00', '', 1, 0, 1, '');
INSERT INTO `jos_categories` VALUES (3, 0, 'نکته ها', '', 'newsflash', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 2, 0, 0, '');
INSERT INTO `jos_categories` VALUES (12, 0, 'تماس ها', '', 'contacts', '', 'com_contact_details', 'left', 'Contact Details for this Web site', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, '');
INSERT INTO `jos_categories` VALUES (15, 0, 'امکانات', '', 'features', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, '');
INSERT INTO `jos_categories` VALUES (17, 0, 'مزایا', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, '');
INSERT INTO `jos_categories` VALUES (18, 0, 'پلت فرم ها', '', 'platforms', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, '');
INSERT INTO `jos_categories` VALUES (34, 0, 'نوکیا', '', '1390-03-17-19-52-55', '', '6', 'left', '<p>گوشی های نوکیا</p>', 1, 62, '2011-07-14 06:32:28', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES (35, 0, 'سونی اریکسون', '', '1390-03-17-19-53-30', '', '6', 'left', '<p>گوشی های سونی اریکسون</p>', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` VALUES (36, 0, 'تلویزیون سونی', '', '1390-03-17-19-53-56', '', '5', 'left', '<p>انواع تلویزیون های سونی</p>', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES (38, 0, 'لپ تاپ', '', 'laptop', '', '5', 'left', '<p>بزودی باز میشود.</p>', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` VALUES (41, 0, 'لباس شویی', '', 'lb', '', '5', 'left', '<p>انواع لباس شویی</p>', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_components`
-- 

CREATE TABLE `jos_components` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `menuid` int(11) unsigned NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `admin_menu_link` varchar(255) NOT NULL default '',
  `admin_menu_alt` varchar(255) NOT NULL default '',
  `option` varchar(50) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `admin_menu_img` varchar(255) NOT NULL default '',
  `iscore` tinyint(4) NOT NULL default '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

-- 
-- Dumping data for table `jos_components`
-- 

INSERT INTO `jos_components` VALUES (1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1);
INSERT INTO `jos_components` VALUES (2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1);
INSERT INTO `jos_components` VALUES (5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1);
INSERT INTO `jos_components` VALUES (8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1);
INSERT INTO `jos_components` VALUES (9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1);
INSERT INTO `jos_components` VALUES (10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1);
INSERT INTO `jos_components` VALUES (13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES (14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1);
INSERT INTO `jos_components` VALUES (16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n', 1);
INSERT INTO `jos_components` VALUES (20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n', 1);
INSERT INTO `jos_components` VALUES (21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, 'administrator=fa-IR\nsite=en-GB\n\n', 1);
INSERT INTO `jos_components` VALUES (24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1);
INSERT INTO `jos_components` VALUES (25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1);
INSERT INTO `jos_components` VALUES (32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES (33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_contact_details`
-- 

CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_contact_details`
-- 

INSERT INTO `jos_contact_details` VALUES (1, 'Name', 'name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'powered_by.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\r\nshow_position=1\r\nshow_email=0\r\nshow_street_address=1\r\nshow_suburb=1\r\nshow_state=1\r\nshow_postcode=1\r\nshow_country=1\r\nshow_telephone=1\r\nshow_mobile=1\r\nshow_fax=1\r\nshow_webpage=1\r\nshow_misc=1\r\nshow_image=1\r\nallow_vcard=0\r\ncontact_icons=0\r\nicon_address=\r\nicon_email=\r\nicon_telephone=\r\nicon_fax=\r\nicon_misc=\r\nshow_email_form=1\r\nemail_description=1\r\nshow_email_copy=1\r\nbanned_email=\r\nbanned_subject=\r\nbanned_text=', 0, 12, 0, '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_content`
-- 

CREATE TABLE `jos_content` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `title_alias` varchar(255) NOT NULL default '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(11) unsigned NOT NULL default '0',
  `mask` int(11) unsigned NOT NULL default '0',
  `catid` int(11) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL default '1',
  `parentid` int(11) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

-- 
-- Dumping data for table `jos_content`
-- 

INSERT INTO `jos_content` VALUES (46, 'تست', '1390-04-01-00-13-29', '', '<p> </p>\r\n<table border="5" width="450">\r\n<tbody>\r\n<tr>\r\n<td>صفحه کلید کامل، صفحه نمایش ۲٫۴ اینچ، دوربین ۲ مگاپیکسل، ۵۵ مگابایت حافظه داخلی، شبکه بیسیم، بلوتوث استریو، رادیوی اف‌ام و ...</td>\r\n</tr>\r\n<tr>\r\n<td>آخرین تغییر	توضیحات	قیمت (تومان)	 ۱۱:۱۵ ۹۰/۰۳/۱۷ 	ضمانت نامه اصلی، ۱۲ ماه	۱۳۹,۰۰۰</td>\r\n</tr>\r\n<tr>\r\n<td>مزایا: گوشی با صفحه کلید کامل، دوربین ۲ مگاپیکسل و ۵۵ مگابایت حافظه داخلی، شبکه بیسیم، بلوتوث استریو، رادیوی اف‌ام، عمر باطری طولانی  معایب: کیفیت پایین فیلبرداری، عدم پشتیبانی جی‌پی‌اس</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table border="2">\r\n<tbody>\r\n<tr>\r\n<td>مشخصات</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">مشخصات کلی</td>\r\n</tr>\r\n<tr>\r\n<td>شبکه	GSM 850 / 900 / 1800 / 1900 معرفی	آوریل ۲۰۱۰ سیستم عامل	Nokia OS بستر نرم‌افزاری	S40 6th Edition</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', -2, 6, 0, 35, '2011-06-22 00:12:40', 62, '', '2011-06-22 00:14:44', 62, 0, '0000-00-00 00:00:00', '2011-06-22 00:12:40', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 2, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (56, 'لباسشویی 7کیلویی 28493 بوش', 'lb', '', '<div class="inside_heading">\r\n<h3>معرفی  لباسشویی 7کیلویی 28493 بوش</h3>\r\n</div>\r\n<p>\r\n<hr />\r\n</p>\r\n<p>ماشین لباسشویی Bosch بوش 7 کیلویی 1400 دور در دقیقه مدل WAE-28493<br /> ماشین لباسشویی 7 کیلویی بوش BOSCH مدل WAE28493 دارای امکاناتی برای رفاه و  آسایش خاطر زندگی امروزی و همچنین سیستم های امنیتی و کنترلی مطابق  استانداردهای روز اروپایی ، برای طول عمر ماشین لباسشویی می باشد .<br /> سیستم Aqua Stop متشکل از یک وروردی لوله دوجداره ، سوپاپ اطمینان و یک کفه  زمینی با یک سوئیچ شناورمی باشد که یک محافظت 100 % را در برابر آسیب های  آب ( از جمله خوردگی فلزات توسط آب ) فراهم می کند . مطابق این سیستم ،  محصولات شرکت بوش ، برای استفاده طولانی مدت  گارانتی می شوند . <br /> سیستم تشخیص مقدار آب ورودی لازم با توجه به میزان بار ماشین لباسشویی ، که  باعث صرفه جویی در مصرف آب و انرژی می شود تمام این محاسبات توسط طراحی  سیستمی به نام سیستم مدیریت آب امکان پذیر شده است .<br /> از دیگر امکانات ویژه و بارز این مدل ، شستشوی کامل لباس ها وجلوگیری از  حساسیت زایی لباس ها در اثر شستشوی لباس ها با مواد شوینده برای پوست می  باشد به این صورت که با تشخیص مقدار کف بر روی لباس ، در صورت وجود کف و  مواد شوینده بر روی لباس ، برنامه شستشو برای آبکشی مجدد لباس ها را اعمال  می کند تا تمامی مواد شوینده از روی لباس پاک شود . قابلیت انتخاب شستشو با  کمترین میزان چروک برای لباس ها ، این امکان را فراهم می کند که ماشین  لباسشویی با چرخش های ملایم دیگ از چروک شدن بیش از حد لباس ها جلوگیری کند  . سیستم کنترل تعادل بار، باعث توزین لباس ها در دیگ ماشین لباسشویی می  شود همچنین این ماشین لباسشویی دارای دکمه های لمسی برای اضافه کردن برنامه  های کمکی به شستشوی لباس ها می باشد . <br /> همچنین از ویژگی های خاص این مدل این است که شما می توانید حین اجرای یک  برنامه ، آن را متوقف  ( PAUSE ) کرده ، درب ماشین لباسشویی را باز کنید  لباسی را خارج یا اضافه کرده سپس درب را ببندید و شروع مجدد شستشو را  انتخاب نمایید .</p>\r\n<p> </p>\r\n<p><img src="images/stories/bosch-wae28493-2.jpg" border="0" align="left" /></p>', '', 1, 5, 0, 41, '2011-06-24 00:00:54', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-06-24 00:00:54', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 2, '', '', 0, 5, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (57, 'لباسشویی 7کیلویی و لباس خشک کن IWDE7145 ایندزیت', 'lb', '', '<div class="inside_heading">\r\n<h3>معرفی  لباسشویی 7کیلویی و لباس خشک کن IWDE7145 ایندزیت</h3>\r\n</div>\r\n<hr />\r\n<p><br /> ماشین لباسشویی و ماشین لباس خشک کن  7 کیلویی ( 5 کیلو خشک کن ) مدل IWDE-7145B ایندزیت Indesit  ساخت ایتالیا <br /> این ماشین لباسشویی تا حد زیادی با دیگر دستگاههای ماشین لباسشویی متفاوت  است. وجه تمایز این دستگاه امکان خشک کردن با بادگرم می باشد در واقع این  ماشین لباسشویی یک دستگاه ماشین لباس خشک کن نیز می باشد.<br /> ایندزیت IWDE7145 قابلیت شستشوی 7 کیلوگرم لباس و خشک کردن کامل 5 کیلوگرم البسه را دارد.<br /> درست است که امکان خشک کردن با حداکثر دور 1400 دور در دقیقه در این مدل  وجود دارد اما سیستم خشک کن دستگاه طوری لباسها را خشک می کند که بعد از  شستشو و خشک کردن حتی بتوان از البسه استفاده کرد. پس اگر با مشکل پهن کردن  لباسها در منزل روبرو هستید و یا اینکه ترجیح می دهید لباسها بصورت کاملا  خشک از ماشین لباسشویی خارج شود این دستگاه بهترین گزینه است.<br /> این ماشین لباسشویی دارای صفحه نمایشگر بزرگ بوده و علاوه بر افزایش زیبایی  ظاهری امکان نمایش زمان و وضعیت شستشو را برای شما فراهم می کند.<br /> قابلیت باز شدن درب تا 180 درجه این امکان را به شما می دهد تا به راحتی  لباسهای خود را داخل ماشین لباسشویی قرار داده و از آن خارج نمایید . این  مدل از ماشین لباسشویی علاوه بر 16 برنامه شستشو دارای عملکرد آبکشی مضاعف ،  سیستم کف زدایی دیگ در حین شستشو ، سیستم قارچ زدایی وضد باکتری ( که مانع  از آلوده شدن لباسها به انواع باکتری ها و قارچ ها می شود ) و همچنین  قابلیت تأخیر در زمان شستشو نیز می باشد . همچنین از ویژگی های خاص این مدل  این است که شما می توانید حین اجرای یک برنامه ، آن را متوقف  ( PAUSE )  کرده ، درب ماشین لباسشویی را باز کنید لباسی را خارج یا اضافه کرده سپس  درب را ببندید و شروع مجدد شستشو را انتخاب نمایید .</p>\r\n<p> </p>\r\n<p><img src="images/stories/indesit-iwde7145-2.jpg" border="0" align="left" /></p>', '', 1, 5, 0, 41, '2011-06-24 00:02:27', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-06-24 00:02:27', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 4, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (58, 'انواع لباس شویی', 'lb', '', '<p>انواع لباس شویی</p>\r\n<p> </p>\r\n<h2 class="contentheading"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=57:lb&amp;catid=41:lb&amp;Itemid=60" target="_self" title="ادامه"> لباسشویی 7کیلویی و لباس خشک کن IWDE7145 ایندزیت </a></h2>\r\n<p> </p>\r\n<h2 class="contentheading"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=56:lb&amp;catid=41:lb&amp;Itemid=60" target="_self" title="ادامه"> لباسشویی 7کیلویی 28493 بوش </a></h2>', '', 1, 1, 0, 1, '2011-06-24 00:05:06', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-06-24 00:05:06', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 7, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (59, 'پایان شمارش آرا', '2013-06-13-09-58-07', '', '<p>با پایان یافتن شمارش آرا مردمی ، آقای حسن روحانی به عنوان یازدهمین رییس جمهور ایران انتخاب شد</p>', '', 1, 1, 0, 1, '2013-06-13 09:58:07', 62, 'من', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-06-13 09:48:33', '0000-00-00 00:00:00', '', '', '', 1, 0, 1, 'سیاست-انتخابات-ایران', '', 0, 0, '');
INSERT INTO `jos_content` VALUES (42, 'نوکیا C3', '-c3', '', '<p><img src="images/stories/c3.jpg" border="0" align="left" /></p>\r\n<table style="height: 390px;" border="5" width="302" align="right">\r\n<tbody>\r\n<tr>\r\n<td>صفحه کلید کامل، صفحه نمایش ۲٫۴ اینچ، دوربین ۲ مگاپیکسل، ۵۵ مگابایت حافظه داخلی، شبکه بیسیم، بلوتوث استریو، رادیوی اف‌ام و ...</td>\r\n</tr>\r\n<tr>\r\n<td>آخرین تغییر	توضیحات	قیمت (تومان)	 ۱۱:۱۵ ۹۰/۰۳/۱۷ 	ضمانت نامه اصلی، ۱۲ ماه	۱۳۹,۰۰۰</td>\r\n</tr>\r\n<tr>\r\n<td>مزایا: گوشی با صفحه کلید کامل، دوربین ۲ مگاپیکسل و ۵۵ مگابایت حافظه داخلی، شبکه بیسیم، بلوتوث استریو، رادیوی اف‌ام، عمر باطری طولانی  معایب: کیفیت پایین فیلبرداری، عدم پشتیبانی جی‌پی‌اس</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table border="2">\r\n<tbody>\r\n<tr>\r\n<td>مشخصات</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">مشخصات کلی</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<pre>شبکه	GSM 850 / 900 / 1800 / 1900\r\n\r\nسیستم عامل	Nokia OS\r\n</pre>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">مشخصات فیزیکی</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<pre>ابعاد	۱۳٫۶ * ۵۸٫۱ * ۱۱۵٫۵ میلی‌متر\r\nوزن	۱۱۴ گرم\r\nتنوع رنگ	خاکستری، سفید، صورتی	</pre>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">نمایش</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<pre>وضوح	۲۴۰ * ۳۲۰ پیکسل\r\nتعداد رنگ	۲۶۲۱۴۴ رنگ\r\nابعاد صفحه	۲٫۴ اینچ	</pre>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="4">دوربین</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<pre>	کیفیت عکس	۲ مگاپیکسل\r\nابعاد عکس	حداکثر ۱۲۰۰ * ۱۶۰۰ پیکسل\r\nفیلمبرداری	بله\r\nابعاد فیلم	۱۴۴ * ۱۷۴ پیکسل، حداکثر ۱۵ تصویر در ثانیه</pre>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 6, 0, 34, '2011-06-07 19:55:01', 62, '', '2011-06-23 21:29:53', 62, 62, '2012-03-06 05:27:38', '2011-06-07 19:55:01', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 17, 0, 2, '', '', 0, 50, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (43, 'سونی', 'sony', '', '<p>تلویزیون های سونی</p>\r\n<h2 class="contentheading"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=54:tv&amp;catid=36:1390-03-17-19-53-56&amp;Itemid=60" target="_self" title="ادامه">براویا V300 سونی </a></h2>\r\n<h2 class="contentheading"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=55:tv&amp;catid=36:1390-03-17-19-53-56&amp;Itemid=60" target="_self" title="ادامه"> مدل KV-SR293F86 سونی</a></h2>', '', 1, 1, 0, 1, '2011-06-07 20:05:17', 62, '', '2011-06-24 00:07:00', 62, 0, '0000-00-00 00:00:00', '2011-06-07 20:05:17', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 2, '', '', 0, 18, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (44, 'لپ تاپ', 'laptop', '', '<p>بزودی بخش "<strong>لپ تاپ</strong>" سایت راه اندازی میشود.</p>\r\n<p>25/3/1389</p>', '', 1, 5, 0, 38, '2011-06-15 02:55:35', 62, '', '2011-06-22 00:40:37', 62, 62, '2011-06-23 23:57:31', '2011-06-15 02:55:35', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 1, '', '', 0, 6, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (47, 'XPeria', 'xperia', '', '<p><img src="images/stories/12460-2.jpg" border="0" width="328" height="534" align="left" /></p>\r\n<table style="height: 416px;" border="5" width="303" align="right">\r\n<tbody>\r\n<tr>\r\n<td>گوشی کشویی از جانب با کلیدهای لمسی مشابه PSP مختص بازی، سیستم عامل  Android نسخه ۲٫۳، پردازنده یک گیگاهرتز، دوربین ۵ مگاپیکسل، فیلمبرداری با  وضوح بالا، فوکوس اتوماتیک، فلاش، ۴۰۰ مگابایت حافظه داخلی، صفحه نمایش ۴  اینچ لمسی با وضوح بالا، مسیر‌یاب جی‌پی‌اس، ثبت موقعيت جغرافيايي به همراه  تصویر، حسگر شتاب‌سنج برای دوران خودکار صفحه و کنترل بازی، شبکه بیسیم،  بلوتوث استریو، بلندگوهای استریو و ...</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table class="pritab" border="0" cellspacing="0" cellpadding="3" width="90%">\r\n<tbody>\r\n<tr>\r\n<td class="prih">آخرین تغییر</td>\r\n<td class="prih">توضیحات</td>\r\n<td class="prih">قیمت (تومان)</td>\r\n<td class="prih"><br /></td>\r\n</tr>\r\n<tr style="background-color: #ffeaff;">\r\n<td class="pris" align="right"><span style="color: maroon;"> ۱۳:۳۸             ۹۰/۰۳/۳۱ </span></td>\r\n<td class="pris"><br /></td>\r\n<td class="prib" style="color: red;">۸۵۰,۰۰۰</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><span class="pd-prco-h">مزایا: </span><span class="pd-prco">کلیدهای  لمسی مختص بازی، قابلیت کاهش و حذف نویز و صداهای اضافی در هنگام مکالمه،  پردازنده Scorpion، قابلیت افزایش کارت حافظه، سیستم عامل اندروید،  مسیر‌یاب جی‌پی‌اس، قطب‌نمای دیجیتالی، دوربین ۵ مگاپیکسل، صفحه نمایش ۴  اینچ لمسی ۱۶ میلیون رنگ، مسیر‌یاب جی‌پی‌اس، حسگر شتاب‌سنج، حسگر  مجاورت‌سنج، شبکه بیسیم، رادیوی اف‌ام استریو، بلوتوث استریو</span></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table border="2">\r\n<tbody>\r\n<tr>\r\n<td>مشخصات</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">مشخصات کلی</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<pre>شبکه	HSDPA 900 / 2100, GSM 850 / 900 / 1800 / 1900\r\n\r\nسیستم عامل	Android OS, v2.3 Gingerbread\r\n</pre>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">مشخصات فیزیکی</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<pre>ابعاد             ۱۶ * ۶۲ * ۱۱۹ میلی‌متر\r\nوزن     	۱۷۵ گرم\r\nتنوع رنگ       مشکی، سفید</pre>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">نمایش</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<pre>وضوح	        ۸۵۴ * ۴۸۰ پیکسل\r\nتعداد رنگ	۱۶ میلیون رنگ\r\nابعاد صفحه	۴٫۰ اینچ</pre>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="4">دوربین</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<pre>کیفیت عکس	۵ مگاپیکسل\r\nابعاد عکس	حداکثر ۱۹۴۴ * ۲۵۹۲ پیکسل\r\nفیلمبرداری	بله\r\nابعاد فیلم	       حداکثر ۴۸۰ * ۸۰۰ پیکسل، ۳۰ تصویر در ثانیه</pre>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 6, 0, 35, '2011-06-22 00:37:09', 62, '', '2011-06-23 22:04:43', 62, 0, '0000-00-00 00:00:00', '2011-06-22 00:37:09', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 2, '', '', 0, 16, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (48, 'XPeria', 'xperia', '', '<h1><img src="images/stories/1.jpg" border="0" width="284" height="186" align="right" />گوشی جدید سونی اریکسون با نام:X-Peria Game</h1>\r\n<p>مناسب برای بازی</p>\r\n<p> </p>\r\n<p> </p>\r\n<p><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=47:xperia&amp;catid=35:1390-03-17-19-53-30&amp;Itemid=58" target="_self" title="X-Peria">توضیحات<br /></a></p>', '', 1, 1, 0, 1, '2011-06-22 06:17:50', 62, '', '2011-06-23 21:34:31', 62, 0, '0000-00-00 00:00:00', '2011-06-22 06:17:50', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 5, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (49, 'نوکیا ئی 7', '-nokiae7', '', '<h1>گوشی Nokia E7</h1>\r\n<p>گوشی با دوربین ۸ مگاپیکسل، ۱۶ گیگابایت حافظه داخلی، فیلمبرداری با وضوح  720p، لرزش‌گیر تصویر، تشخیص صورت، صفحه نمایش ۴ اینچ لمسی AMOLED با وضوح  بالا، مسیر‌یاب جی‌پی‌اس، قطب‌نمای دیجیتالی، حسگر شتاب‌سنج، حسگر  مجاورت‌سنج، سیستم عامل Symbian^3، شبکه بیسیم، نمایش و ویرایش پرونده‌های  آفیس و پی‌دی‌اف، رادیوی اف‌ام استریو، بلوتوث استریو، خروجی تلویزیون و  HDMI و ...</p>\r\n<p><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=50:nokiae7&amp;catid=34:1390-03-17-19-52-55&amp;Itemid=58" target="_self" title="nokia E7">توضیحات</a></p>\r\n<p><img src="images/stories/e7 m.jpg" border="0" /></p>\r\n<p> </p>', '', 1, 1, 0, 1, '2011-06-23 21:43:21', 62, '', '2011-06-23 21:57:28', 62, 0, '0000-00-00 00:00:00', '2011-06-23 21:43:21', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 4, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (50, 'نوکیا ئی 7', 'nokiae7', '', '<p><img src="images/stories/e7.jpg" border="0" width="355" height="506" align="left" /></p>\r\n<table style="height: 390px;" border="5" width="302" align="right">\r\n<tbody>\r\n<tr>\r\n<td><span class="pd-prco-h"> </span>گوشی با دوربین ۸ مگاپیکسل، ۱۶ گیگابایت حافظه داخلی، فیلمبرداری با وضوح  720p، لرزش‌گیر تصویر، تشخیص صورت، صفحه نمایش ۴ اینچ لمسی AMOLED با وضوح  بالا، مسیر‌یاب جی‌پی‌اس، قطب‌نمای دیجیتالی، حسگر شتاب‌سنج، حسگر  مجاورت‌سنج، سیستم عامل Symbian^3، شبکه بیسیم، نمایش و ویرایش پرونده‌های  آفیس و پی‌دی‌اف، رادیوی اف‌ام استریو، بلوتوث استریو، خروجی تلویزیون و  HDMI و ...</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table class="pritab" border="0" cellspacing="0" cellpadding="3" width="90%">\r\n<tbody>\r\n<tr>\r\n<td class="pris" align="right"><span style="color: maroon;"> </span> <br /></td>\r\n<td class="pris">ضمانت نامه اصلی، ۱۲ ماه</td>\r\n<td class="prib" style="color: red">۶۵۵,۰۰۰</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>مزایا: <span class="pd-prco">گوشی با صفجه  ضدخش، پردازنده ۶۸۰ مگاهرتز، دوربین با وضوح بالا، فلاش، حافظه داخلی  مناسب، صفحه نمایش ۴ اینچی لمسی، مسیر‌یاب جی‌پی‌اس، نمایش پرونده‌های آفیس  و پی‌دی‌اف، خروجی صدای استاندارد</span></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table border="2">\r\n<tbody>\r\n<tr>\r\n<td>مشخصات</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">مشخصات کلی</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<pre>شبکه	HSDPA 850 / 900 / 1700 / 1900 / 2100,<br /> GSM 850 / 900 / 1800 / 1900\r\n\r\nسیستم عامل	Symbian^3\r\n</pre>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">مشخصات فیزیکی</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<pre>ابعاد	۱۳٫۶ * ۶۲٫۴ * ۱۲۳٫۷ میلی‌متر\r\nوزن	۱۷۶ گرم\r\nتنوع رنگ     خاکستری تیره، نقره‌ای، سبز، آبی، نارنجی	</pre>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">نمایش</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<pre>وضوح	     ۶۴۰ * ۳۶۰ پیکسل(nHD)\r\nتعداد رنگ    ۱۶ میلیون رنگ\r\nابعاد صفحه	۴٫۰ اینچ</pre>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="4">دوربین</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<pre>کیفیت عکس	۸ مگاپیکسل\r\nابعاد عکس	حداکثر ۲۴۴۸ * ۳۲۶۴ پیکسل\r\nفیلمبرداری	بله\r\nابعاد فیلم   	\r\n            حداکثر ۷۲۰ * ۱۲۸۰ پیکسل، ۲۵ تصویر در ثانیه</pre>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 6, 0, 34, '2011-06-23 21:47:29', 62, '', '2011-06-23 21:57:44', 62, 0, '0000-00-00 00:00:00', '2011-06-23 21:47:29', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 1, '', '', 0, 7, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (51, 'سونی اریکسون', 'vivaz-pro', '', '<h1>سونی اریکسون ویواز پرو</h1>\r\n<p>گوشی کشویی از جانب با صفحه کلید کامل، دوربین ۵ مگاپیکسل و فیلمبرداری HD  720p، تشخیص صورت، تشخیص لبخند، مسیر‌یاب جی‌پی‌اس، ثبت موقعيت جغرافيايي  به همراه تصویر، حسگر شتاب‌سنج برای دوران خودکار صفحه، ۷۵ مگابایت حافظه  داخلی، صفحه نمایش ۳٫۲ اینچ لمسی با وضوح بالا و تفکیک ۱۶ میلیون رنگ،  سیستم عامل Symbian، شبکه بیسیم به همراه فناوری DLNA، رادیوی اف‌ام  استریو، بلوتوث استریو، ...</p>\r\n<p><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=52:vivaz-pro&amp;catid=35:1390-03-17-19-53-30&amp;Itemid=58" target="_self">توضیحات</a></p>\r\n<p><img src="images/stories/viva m.jpg" border="0" /></p>', '', 1, 1, 0, 1, '2011-06-23 22:05:21', 62, '', '2011-06-23 22:18:45', 62, 0, '0000-00-00 00:00:00', '2011-06-23 22:05:21', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 3, '', '', 0, 0, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (52, 'ویواز پرو', 'vivaz-pro', '', '<p><img src="images/stories/vava.jpg" border="0" align="left" /></p>\r\n<table style="height: 416px;" border="5" width="303" align="right">\r\n<tbody>\r\n<tr>\r\n<td>گوشی کشویی از جانب با صفحه کلید کامل، دوربین ۵ مگاپیکسل و فیلمبرداری HD  720p، تشخیص صورت، تشخیص لبخند، مسیر‌یاب جی‌پی‌اس، ثبت موقعيت جغرافيايي  به همراه تصویر، حسگر شتاب‌سنج برای دوران خودکار صفحه، ۷۵ مگابایت حافظه  داخلی، صفحه نمایش ۳٫۲ اینچ لمسی با وضوح بالا و تفکیک ۱۶ میلیون رنگ،  سیستم عامل Symbian، شبکه بیسیم به همراه فناوری DLNA، رادیوی اف‌ام  استریو، بلوتوث استریو، ...</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table class="pritab" border="0" cellspacing="0" cellpadding="3" width="90%">\r\n<tbody>\r\n<tr>\r\n<td class="prih">آخرین تغییر</td>\r\n<td class="prih">توضیحات</td>\r\n<td class="prih">قیمت (تومان)</td>\r\n<td class="prih"><br /></td>\r\n</tr>\r\n<tr style="background-color: #ffeaff;">\r\n<td class="pris" align="right"><span style="color: maroon;"> ۱۳:۳۸             ۹۰/۰۳/۳۱ </span></td>\r\n<td class="pris">ضمانت نامه شرکنی ، ۱۲ ماه</td>\r\n<td class="prib">۲۸۵,۰۰۰</td>\r\n<td class="pris" align="right"></td>\r\n<td class="pris"><br /></td>\r\n<td class="prib" style="color: red;"><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><span class="pd-prco-h">مزایا: </span><span class="pd-prco">نسل ۳٫۵،  پردازنده با فرکانس ۷۲۰ مگاهرتز، قابلیت افزایش کارت حافظه، مسیر‌یاب  جی‌پی‌اس، حسگر شتاب‌سنج، دوربین ۵ مگاپیکسل، فلاش، فوکوس اتوماتیک و لمسی،  لرزش‌گیر، فیلمبرداری با وضوح بالا، ثبت موقعيت جغرافيايي به همراه تصویر،  تشخیص صورت و لبخند، صفحه نمایش لمسی، سیستم عامل Symbian، شبکه بیسیم،  رادیوی اف‌ام استریو، خروجی صدای استاندارد، تشخیص دستنوشته</span><span class="pd-prco"></span></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<table border="2">\r\n<tbody>\r\n<tr>\r\n<td>مشخصات</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">مشخصات کلی</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<pre>شبکه	HSDPA 900 / 2100, GSM 850 / 900 / 1800 / 1900\r\n\r\nسیستم عامل	Symbian Series 60, 5th edition\r\n</pre>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">مشخصات فیزیکی</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<pre>ابعاد             ۱۵ * ۵۲ * ۱۰۹ میلی‌متر\r\nوزن     	۱۱۷ گرم\r\nتنوع رنگ       مشکی، سفید</pre>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2">نمایش</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<pre>وضوح	        ۶۴۰ * ۳۶۰ پیکسل\r\nتعداد رنگ	۱۶ میلیون رنگ\r\nابعاد صفحه	۳٫۲ اینچ</pre>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="4">دوربین</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<pre>کیفیت عکس	۵ مگاپیکسل\r\nابعاد عکس	حداکثر ۱۹۲۰ * ۲۵۶۰ پیکسل\r\nفیلمبرداری	بله\r\nابعاد فیلم	      720p، حداکثر ۲۴ تصویر در ثانیه</pre>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 6, 0, 35, '2011-06-23 22:08:59', 62, '', '2011-06-23 22:18:04', 62, 0, '0000-00-00 00:00:00', '2011-06-23 22:08:59', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 1, '', '', 0, 8, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (53, 'سونی', 'tv', '', '<p>بزودی</p>', '', -2, 5, 0, 36, '2011-06-23 22:39:40', 62, '', '2011-06-23 22:41:46', 62, 0, '0000-00-00 00:00:00', '2011-06-23 22:39:40', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 3, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (54, 'براویا V300 سونی', 'tv', '', '<div class="inside_heading">\r\n<h3>معرفی  ال سی دی 32 براویا V300 سونی</h3>\r\n</div>\r\n<hr />\r\n<p> </p>\r\n<p><strong>تلويزيون LCD  سونی براویا  تیاترسینک 32 اينچ مدل KLV-32V300</strong></p>\r\n<p><strong> مشخصات كالا </strong><br /> -  32 اينچ<br /> - مدل KLV-32V300<br /> - یک مگا پیکسل تصویر <br /> - کنتراست : 1:8000<br /> - WXGA 1366*768<br /> - تولید رنگ های زنده <br /> - موتور براویا <br /> - مولتی HD<br /> - براویا تیاترسینک<br /> - تصویر در تصویر (تک تیونر)<br /> - دو ورودی HDMI<br /> - ورودی کامپیوتر <br /> - ابعاد : عرض 53 * ارتفاع 79 * عمق 10.1 <br /> - سیستم صوتی فراگیر S-Force<br /> - توان خروجی صدا : 2 در 10 وات<br /> - نسبت تصویر 16:9 <br /> - با ضمانت نامه شرکت بازرگانی ایران</p>\r\n<p><img src="images/stories/sony32v300a2.jpg" border="0" align="left" /></p>', '', 1, 5, 0, 36, '2011-06-23 23:50:09', 62, '', '2011-06-23 23:52:43', 62, 0, '0000-00-00 00:00:00', '2011-06-23 23:50:09', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 2, '', '', 0, 8, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (55, 'مدل KV-SR293F86 سوني', 'tv', '', '<div class="inside_heading">\r\n<h3>معرفی  تلویزیون 29اینچ 293 سونی</h3>\r\n</div>\r\n<hr />\r\n<p> </p>\r\n<p><strong>تلويزيون 29 اينچ مدل KV-SR293F86  سوني</strong></p>\r\n<div id="DESC" class="content active">\r\n<li><strong> توضيحات كالا </strong><br /> سوني در حال حاضر عمده ترين توليد كننده محصولات صوتي – تصويري، بازيها،  ارتباطات و توليدات تكنولوژي اطلاعات (IT) ، براي مصرف كنندگان شخصي و هم  چنين بازارهاي مصرفي حرفه اي دنياست. اينك سوني با موسيقي، تصاوير و  تفريحات كامپيوتري ، بطور ويژه از نظر موقيت جزو پيشتازترين شركت هاي  تفريحاتي جهان بشمار ميرود.از نظر فعاليت عملياتي، سوني در 70 كشور جهان  فعال بوده و داراي 1080 شركت تابعه مي باشد. <br /> SONY نسل جديدی از تلويزيون های تازه نفس با صفحه مسطح و دارای قابليت های يك تلويزيون مناسب را برای شما به ارمغان آورده است. </li>\r\n<li><strong> مشخصات كالا </strong><br /> - 29 اينچ <br /> - برق مصرفي : 240 ~ 110 ولت - 60~50 هرتز <br /> - سيتم هاي تلويزيوني :  B/G - I - D/K -M <br /> - سيستم هاي رنگ : PAL - PAL 60 - Secam - NTSC3.58 - NTSC4.43<br /> - تله تكست : فارسي - انگليسي <br /> - آنتن : 75 اهم <br /> - خروجي صدا : 6 وات + 6 وات <br /> - ترمينالهاي تصوير : 4 ورودي ، 1 خروجي<br /> - ترمينالهاي صدا :  5 ورودي ،  1 خروجي <br /> - يك ورودي  S-Video <br /> - يك ورودي  Component Video <br /> - يك خروجي هدفون <br /> - ورودي DVD<br /> - راديو FM در رنج 87.5 تا 108 مگاهرتز <br /> - ابعاد : عرض 78 * عمق 52.5 * ارتفاع 58.3 سانتي متر <br /> - وزن : 47 كيلوگرم <br /> - داراي منوي فارسي <br /> - برنامه ريزي اتوماتيك كانالها <br /> - برنامه ويرايش و مرتب كردن كانالها <br /> - قابليت تنظيم چرخش ، موقعيت تصوير <br /> - داراي كنترل از راه دور <br /> - داراي منوي WEGA GATE  : نويگيتور وگاگيت مدخلي است كه به شما اجازه مي  دهد به كانالهاي از قبل تعيين شده تلويزيون ، وروديهاي دستگاههاي جانبي  متصل شده و  حالت راديو FM و منوي تنظيمات دسترسي يابيد .<br /> - داراي چند وضعيت تصوير : شفاف ، استاندارد ، سفارشي <br /> - داراي چند وضعيت صدا : ديناميك ، استاندارد ، سفارشي <br /> - قابليت نمايش تصوير در تصوير PIP  دوتيونر <br /> - تصوير و صداي  هوشمند : با قابليت بهبود كيفيت تصوير و تنظيم خودكار صدا  <br /> - دماي رنگ : به منظور تنظيم ميزان سفيدي رنگ <br /> - صداي فراگير TruSurround <br /> - داراي پيچ ، گيره و بند جهت محكم كردن تلويزيون <br /> - داراي ضمانت نامه اصلي سوني </li>\r\n<li></li>\r\n<li><img src="images/stories/sonysr293f86a200.jpg" border="0" align="left" /></li>\r\n</div>', '', 1, 5, 0, 36, '2011-06-23 23:55:56', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-06-23 23:55:56', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 6, 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES (45, 'نوکیا C3', '-c3', '', '<h1><span class="pd-latin" dir="ltr">گوشی محبوب نوکیا</span></h1>\r\n<p><span class="pd-latin" dir="ltr"><img src="images/stories/1-3.jpg" border="0" align="right" /></span></p>\r\n<h1><span class="pd-latin" dir="ltr">:Nokia C3</span></h1>\r\n<p><span class="pd-latin" dir="ltr"> </span></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><span class="pd-latin" dir="ltr"><a class="caption" href="index.php?option=com_content&amp;view=article&amp;id=42:-c3&amp;catid=34:1390-03-17-19-52-55&amp;Itemid=58" target="_self" title="c3"><span class="caption">توضیحات</span></a><br /></span></p>', '', 1, 1, 0, 1, '2011-06-15 03:19:07', 62, '', '2011-06-23 21:43:14', 62, 62, '2012-03-06 05:27:26', '2011-06-15 03:19:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 12, 0, 6, '', '', 0, 5, 'robots=\nauthor=');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_content_frontpage`
-- 

CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_content_frontpage`
-- 

INSERT INTO `jos_content_frontpage` VALUES (6, 10);
INSERT INTO `jos_content_frontpage` VALUES (49, 4);
INSERT INTO `jos_content_frontpage` VALUES (7, 11);
INSERT INTO `jos_content_frontpage` VALUES (1, 9);
INSERT INTO `jos_content_frontpage` VALUES (48, 5);
INSERT INTO `jos_content_frontpage` VALUES (51, 3);
INSERT INTO `jos_content_frontpage` VALUES (59, 1);
INSERT INTO `jos_content_frontpage` VALUES (58, 2);
INSERT INTO `jos_content_frontpage` VALUES (43, 8);
INSERT INTO `jos_content_frontpage` VALUES (44, 7);
INSERT INTO `jos_content_frontpage` VALUES (45, 6);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_content_rating`
-- 

CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(11) unsigned NOT NULL default '0',
  `rating_count` int(11) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_content_rating`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro`
-- 

CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL auto_increment,
  `section_value` varchar(240) NOT NULL default '0',
  `value` varchar(240) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `jos_core_acl_aro`
-- 

INSERT INTO `jos_core_acl_aro` VALUES (10, 'users', '62', 0, 'Administrator', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro_groups`
-- 

CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `value` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

-- 
-- Dumping data for table `jos_core_acl_aro_groups`
-- 

INSERT INTO `jos_core_acl_aro_groups` VALUES (17, 0, 'ROOT', 1, 22, 'ROOT');
INSERT INTO `jos_core_acl_aro_groups` VALUES (28, 17, 'USERS', 2, 21, 'USERS');
INSERT INTO `jos_core_acl_aro_groups` VALUES (29, 28, 'Public Frontend', 3, 12, 'Public Frontend');
INSERT INTO `jos_core_acl_aro_groups` VALUES (18, 29, 'Registered', 4, 11, 'Registered');
INSERT INTO `jos_core_acl_aro_groups` VALUES (19, 18, 'Author', 5, 10, 'Author');
INSERT INTO `jos_core_acl_aro_groups` VALUES (20, 19, 'Editor', 6, 9, 'Editor');
INSERT INTO `jos_core_acl_aro_groups` VALUES (21, 20, 'Publisher', 7, 8, 'Publisher');
INSERT INTO `jos_core_acl_aro_groups` VALUES (30, 28, 'Public Backend', 13, 20, 'Public Backend');
INSERT INTO `jos_core_acl_aro_groups` VALUES (23, 30, 'Manager', 14, 19, 'Manager');
INSERT INTO `jos_core_acl_aro_groups` VALUES (24, 23, 'Administrator', 15, 18, 'Administrator');
INSERT INTO `jos_core_acl_aro_groups` VALUES (25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro_map`
-- 

CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL default '0',
  `section_value` varchar(230) NOT NULL default '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY  (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_core_acl_aro_map`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_aro_sections`
-- 

CREATE TABLE `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL auto_increment,
  `value` varchar(230) NOT NULL default '',
  `order_value` int(11) NOT NULL default '0',
  `name` varchar(230) NOT NULL default '',
  `hidden` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `jos_core_acl_aro_sections`
-- 

INSERT INTO `jos_core_acl_aro_sections` VALUES (10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_acl_groups_aro_map`
-- 

CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL default '0',
  `section_value` varchar(240) NOT NULL default '',
  `aro_id` int(11) NOT NULL default '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_core_acl_groups_aro_map`
-- 

INSERT INTO `jos_core_acl_groups_aro_map` VALUES (25, '', 10);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_log_items`
-- 

CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL default '0000-00-00',
  `item_table` varchar(50) NOT NULL default '',
  `item_id` int(11) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_core_log_items`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_core_log_searches`
-- 

CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(11) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_core_log_searches`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_facebook_joomla_connect`
-- 

CREATE TABLE `jos_facebook_joomla_connect` (
  `joomla_userid` int(15) NOT NULL,
  `facebook_userid` bigint(20) unsigned NOT NULL,
  `joined_date` int(15) NOT NULL,
  `linked` smallint(4) NOT NULL,
  PRIMARY KEY  (`joomla_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_facebook_joomla_connect`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_groups`
-- 

CREATE TABLE `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_groups`
-- 

INSERT INTO `jos_groups` VALUES (0, 'Public');
INSERT INTO `jos_groups` VALUES (1, 'Registered');
INSERT INTO `jos_groups` VALUES (2, 'Special');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_menu`
-- 

CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(75) default NULL,
  `name` varchar(255) default NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text,
  `type` varchar(50) NOT NULL default '',
  `published` tinyint(1) NOT NULL default '0',
  `parent` int(11) unsigned NOT NULL default '0',
  `componentid` int(11) unsigned NOT NULL default '0',
  `sublevel` int(11) default '0',
  `ordering` int(11) default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL default '0',
  `browserNav` tinyint(4) default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `utaccess` tinyint(3) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL default '0',
  `rgt` int(11) unsigned NOT NULL default '0',
  `home` int(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

-- 
-- Dumping data for table `jos_menu`
-- 

INSERT INTO `jos_menu` VALUES (1, 'mainmenu', 'صفحه اصلی', 'home', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_page_title=1\npage_title=صفحه اصلی\nshow_description=0\nshow_description_image=0\nnum_leading_articles=5\nnum_intro_articles=0\nnum_columns=0\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=front\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 1);
INSERT INTO `jos_menu` VALUES (2, 'mainmenu', 'مجوز جوملا', 'joomla-license', 'index.php?option=com_content&view=article&id=5', 'component', -2, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (41, 'mainmenu', 'پرسش و پاسخ', 'faq', 'index.php?option=com_content&view=section&id=3', 'component', -2, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (11, 'othermenu', 'سایت رسمی جوملا', 'joomla-home', 'http://www.joomla.org', 'url', -2, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (12, 'othermenu', 'پشتیبانی جوملا فارسی', 'persian-joomla', 'http://www.mambolearn.com', 'url', -2, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (13, 'othermenu', 'راهنمای جوملا فارسی', 'joomla-help', 'http://help.mambolearn.com', 'url', -2, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (14, 'othermenu', 'انجمن های جوملای فارسی', 'persian-joomla-forum', 'http://www.mambolearn.com/forum', 'url', -2, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 4, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (15, 'othermenu', 'مدیریت سایت شما', 'administrator', 'administrator/', 'url', 1, 0, 0, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (20, 'usermenu', 'مشخصات شما', 'your-details', 'index.php?option=com_user&view=user&task=edit', 'component', 1, 0, 14, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (24, 'usermenu', 'خروج', 'logout', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (37, 'mainmenu', 'بیشتر درباره جوملا!', 'more-about-joomla', 'index.php?option=com_content&view=section&id=4', 'component', -2, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (48, 'mainmenu', 'لینکستان', 'web-links', 'index.php?option=com_weblinks&view=categories', 'component', -2, 0, 4, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=لینکستان\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (49, 'mainmenu', 'خبرخوان ها', 'news-feeds', 'index.php?option=com_newsfeeds&view=categories', 'component', -2, 0, 11, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=نکته ها\nshow_comp_description=1\ncomp_description=\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (50, 'mainmenu', 'اخبار', 'the-news', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', -2, 0, 20, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=اخبار\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (51, 'usermenu', 'ارسال مقاله', 'submit-an-article', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (52, 'usermenu', 'ارسال وب لینک', 'submit-a-web-link', 'index.php?option=com_weblinks&view=weblink&layout=form', 'component', 1, 0, 4, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (53, 'othermenu', 'مستندات جوملا فارسی', 'persian-joomla-documents', 'http://wiki.mambolearn.com', 'url', -2, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (54, 'othermenu', 'جوملا فارسی', 'persian-it', 'http://persianit.ir/', 'url', -2, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (55, 'othermenu', 'ویترین جوملا فارسی', 'mambolearn-showcase', 'http://showcase.mambolearn.com/', 'url', -2, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (56, 'othermenu', 'دانلود جوملا فارسی', 'download-joomla-farsi', 'http://www.mambolearn.com/v2/download-last-version-of-joomla-farsi', 'url', -2, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (57, 'othermenu', 'هاستینگ جوملا', 'joomla-hosting', 'http://www.mamboserver.biz', 'url', 1, 0, 0, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (58, 'mainmenu', 'موبایل', 'home', 'index.php?option=com_content&view=section&id=6', 'component', 1, 0, 20, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=1\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES (60, 'mainmenu', 'لوازم خانگی', 'homeuses', 'index.php?option=com_content&view=section&id=5', 'component', 1, 0, 20, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_menu_types`
-- 

CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(75) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `jos_menu_types`
-- 

INSERT INTO `jos_menu_types` VALUES (1, 'mainmenu', 'Main Menu', 'The main menu for the site');
INSERT INTO `jos_menu_types` VALUES (2, 'usermenu', 'User Menu', 'A Menu for logged in Users');
INSERT INTO `jos_menu_types` VALUES (4, 'othermenu', 'Resources', 'Additional links');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_messages`
-- 

CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` int(10) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` int(11) NOT NULL default '0',
  `priority` int(1) unsigned NOT NULL default '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `jos_messages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_messages_cfg`
-- 

CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_messages_cfg`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_migration_backlinks`
-- 

CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY  (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_migration_backlinks`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_modules`
-- 

CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) default NULL,
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `numnews` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  `control` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

-- 
-- Dumping data for table `jos_modules`
-- 

INSERT INTO `jos_modules` VALUES (1, 'فروشگاه', '', 0, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmenu_style=list_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (2, 'ورود', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (3, 'محبوب ترین ها', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (4, 'آخرین مطالب', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, '');
INSERT INTO `jos_modules` VALUES (5, 'وضعیت منوها', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (6, 'پیغام های خوانده نشده', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (7, 'کاربران آنلاین', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (8, 'نوار ابزار', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (9, 'آیکون های سریع', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (10, 'کاربران حاضر', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (11, 'کپی رایت', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES (12, 'منوی مدیریت', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (13, 'زیرمنوهای مدیریت', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (14, 'وضعیت کاربران', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (15, 'عنوان', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES (16, 'نظرسنجی', '', 0, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_poll', 0, 0, 1, 'id=15\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (17, 'منوی کاربری', '', 4, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 1, 1, 'menutype=usermenu\nmoduleclass_sfx=_menu\ncache=1', 1, 0, '');
INSERT INTO `jos_modules` VALUES (18, 'ورود کاربران', '', 8, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, 'greeting=1\nname=0', 1, 0, '');
INSERT INTO `jos_modules` VALUES (19, 'آخرین اخبار', '', 4, 'user1', 0, '0000-00-00 00:00:00', 1, 'mod_latestnews', 0, 0, 1, 'cache=1', 1, 0, '');
INSERT INTO `jos_modules` VALUES (20, 'آمار سایت', '', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=', 0, 0, '');
INSERT INTO `jos_modules` VALUES (21, 'حاضرین در سایت', '', 1, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_whosonline', 0, 0, 1, 'online=1\nusers=1\nmoduleclass_sfx=', 0, 0, '');
INSERT INTO `jos_modules` VALUES (22, 'محبوب ترین ها', '', 6, 'user2', 0, '0000-00-00 00:00:00', 1, 'mod_mostread', 0, 0, 1, 'cache=1', 0, 0, '');
INSERT INTO `jos_modules` VALUES (23, 'آرشیو', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, 'cache=1', 1, 0, '');
INSERT INTO `jos_modules` VALUES (24, 'بخش ها', '', 10, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, 'cache=1', 1, 0, '');
INSERT INTO `jos_modules` VALUES (25, 'نکته ها', '', 1, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_newsflash', 0, 0, 1, 'catid=3\r\nstyle=random\r\nitems=\r\nmoduleclass_sfx=', 0, 0, '');
INSERT INTO `jos_modules` VALUES (26, 'آیتم های مرتبط', '', 11, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0, '');
INSERT INTO `jos_modules` VALUES (27, 'جستجو', '', 1, 'user4', 0, '0000-00-00 00:00:00', 1, 'mod_search', 0, 0, 0, 'cache=1', 0, 0, '');
INSERT INTO `jos_modules` VALUES (28, 'تصویر تصادفی', '', 9, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_random_image', 0, 0, 1, '', 0, 0, '');
INSERT INTO `jos_modules` VALUES (30, 'تبلیغات', '', 1, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=1\ncatid=33\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (31, 'منابع', '', 2, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=othermenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES (32, 'لینک آور', '', 12, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0, '');
INSERT INTO `jos_modules` VALUES (33, 'کپی رایت', '', 2, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (34, 'خبرخوان', '', 13, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_feed', 0, 0, 1, '', 1, 0, '');
INSERT INTO `jos_modules` VALUES (35, 'مسیر سایت', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 0, 0, 1, 'moduleclass_sfx=\ncache=0\nshowHome=1\nhomeText=خانه\nshowComponent=1\nseparator=\n\n', 1, 0, '');
INSERT INTO `jos_modules` VALUES (36, 'خروجی سایت', '', 3, 'syndicate', 0, '0000-00-00 00:00:00', 1, 'mod_syndicate', 0, 0, 0, '', 1, 0, '');
INSERT INTO `jos_modules` VALUES (41, 'به جوملا خوش آمدید!', '<div style="padding: 5px">\r\n<p>با تشکر از شما برای انتخاب <a href="http://www.mambolearn.com" target="_blank" title="Joomla Farsi">جوملا! فارسی</a>،<br />امیدواریم با استفاده از جوملا و امکانات آن، بتوانید سایت خود را هر چه سریعتر راه اندازی کنید.</p>\r\nبرای داشتن امکاناتی بیشتر در جوملا و همچنین استفاده از خدمات تیم پشتیبانی می توانید به وب سایت <a href="http://www.mambolearn.com" target="_blank" title="Mambolearn Team">تیم توسعه جوملای فارسی</a> مراجعه نمایید.\r\n<p>امیدواریم از جوملا و استفاده از آن لذت ببرید.</p>\r\n<p>برای حذف این پیغام می توانید از مدیریت ماژول های بخش کاربری آنرا حذف نمایید یا از <a href="index.php?option=com_modules&amp;client=1">این لینک</a> استفاده نمایید.</p>\r\n<p>تیم مامبولرن. <img src="../plugins/editors/tinymce/jscripts/tiny_mce/plugins/emotions/images/smiley-smile.gif" border="0" alt="Smile" title="Smile" /></p>\r\n<p> </p>\r\n</div>', 0, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_modules_menu`
-- 

CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_modules_menu`
-- 

INSERT INTO `jos_modules_menu` VALUES (1, 0);
INSERT INTO `jos_modules_menu` VALUES (16, 1);
INSERT INTO `jos_modules_menu` VALUES (17, 0);
INSERT INTO `jos_modules_menu` VALUES (18, 1);
INSERT INTO `jos_modules_menu` VALUES (19, 1);
INSERT INTO `jos_modules_menu` VALUES (19, 2);
INSERT INTO `jos_modules_menu` VALUES (19, 4);
INSERT INTO `jos_modules_menu` VALUES (19, 27);
INSERT INTO `jos_modules_menu` VALUES (19, 36);
INSERT INTO `jos_modules_menu` VALUES (21, 1);
INSERT INTO `jos_modules_menu` VALUES (22, 1);
INSERT INTO `jos_modules_menu` VALUES (22, 2);
INSERT INTO `jos_modules_menu` VALUES (22, 4);
INSERT INTO `jos_modules_menu` VALUES (22, 27);
INSERT INTO `jos_modules_menu` VALUES (22, 36);
INSERT INTO `jos_modules_menu` VALUES (25, 0);
INSERT INTO `jos_modules_menu` VALUES (27, 0);
INSERT INTO `jos_modules_menu` VALUES (29, 0);
INSERT INTO `jos_modules_menu` VALUES (30, 0);
INSERT INTO `jos_modules_menu` VALUES (31, 1);
INSERT INTO `jos_modules_menu` VALUES (32, 0);
INSERT INTO `jos_modules_menu` VALUES (33, 0);
INSERT INTO `jos_modules_menu` VALUES (34, 0);
INSERT INTO `jos_modules_menu` VALUES (35, 0);
INSERT INTO `jos_modules_menu` VALUES (36, 0);
INSERT INTO `jos_modules_menu` VALUES (38, 1);
INSERT INTO `jos_modules_menu` VALUES (39, 43);
INSERT INTO `jos_modules_menu` VALUES (39, 44);
INSERT INTO `jos_modules_menu` VALUES (39, 45);
INSERT INTO `jos_modules_menu` VALUES (39, 46);
INSERT INTO `jos_modules_menu` VALUES (39, 47);
INSERT INTO `jos_modules_menu` VALUES (40, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_newsfeeds`
-- 

CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(11) NOT NULL auto_increment,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL default '',
  `link` text NOT NULL,
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(11) unsigned NOT NULL default '1',
  `cache_time` int(11) unsigned NOT NULL default '3600',
  `checked_out` tinyint(3) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- Dumping data for table `jos_newsfeeds`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_plugins`
-- 

CREATE TABLE `jos_plugins` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `element` varchar(100) NOT NULL default '',
  `folder` varchar(100) NOT NULL default '',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `published` tinyint(3) NOT NULL default '0',
  `iscore` tinyint(3) NOT NULL default '0',
  `client_id` tinyint(3) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

-- 
-- Dumping data for table `jos_plugins`
-- 

INSERT INTO `jos_plugins` VALUES (1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n');
INSERT INTO `jos_plugins` VALUES (3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n');
INSERT INTO `jos_plugins` VALUES (6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n');
INSERT INTO `jos_plugins` VALUES (7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES (12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n');
INSERT INTO `jos_plugins` VALUES (13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n');
INSERT INTO `jos_plugins` VALUES (15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n');
INSERT INTO `jos_plugins` VALUES (17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n');
INSERT INTO `jos_plugins` VALUES (18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (19, 'Editor - TinyMCE 2.0', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n');
INSERT INTO `jos_plugins` VALUES (20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n');
INSERT INTO `jos_plugins` VALUES (27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n');
INSERT INTO `jos_plugins` VALUES (29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n');
INSERT INTO `jos_plugins` VALUES (30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n');
INSERT INTO `jos_plugins` VALUES (31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES (33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_poll_data`
-- 

CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL auto_increment,
  `pollid` int(11) NOT NULL default '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

-- 
-- Dumping data for table `jos_poll_data`
-- 

INSERT INTO `jos_poll_data` VALUES (22, 15, '', 0);
INSERT INTO `jos_poll_data` VALUES (21, 15, '', 0);
INSERT INTO `jos_poll_data` VALUES (20, 15, '', 0);
INSERT INTO `jos_poll_data` VALUES (19, 15, '', 0);
INSERT INTO `jos_poll_data` VALUES (18, 15, '', 0);
INSERT INTO `jos_poll_data` VALUES (16, 15, 'خوب ', 0);
INSERT INTO `jos_poll_data` VALUES (17, 15, 'متوسط', 0);
INSERT INTO `jos_poll_data` VALUES (15, 15, 'بسیار خوب', 0);
INSERT INTO `jos_poll_data` VALUES (14, 15, 'عالی', 0);
INSERT INTO `jos_poll_data` VALUES (13, 15, 'بسیار عالی', 3);
INSERT INTO `jos_poll_data` VALUES (23, 15, '', 0);
INSERT INTO `jos_poll_data` VALUES (24, 15, '', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_poll_date`
-- 

CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL auto_increment,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL default '0',
  `poll_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- Dumping data for table `jos_poll_date`
-- 

INSERT INTO `jos_poll_date` VALUES (15, '2013-06-13 09:58:17', 13, 15);
INSERT INTO `jos_poll_date` VALUES (14, '2011-06-23 21:11:06', 13, 15);
INSERT INTO `jos_poll_date` VALUES (13, '2011-06-22 06:40:07', 13, 15);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_poll_menu`
-- 

CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_poll_menu`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_polls`
-- 

CREATE TABLE `jos_polls` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `voters` int(9) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `access` int(11) NOT NULL default '0',
  `lag` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table `jos_polls`
-- 

INSERT INTO `jos_polls` VALUES (15, 'نظرتان درمورد فروشگاه چیست؟!', '1390-03-19-03-11-41', 3, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_sections`
-- 

CREATE TABLE `jos_sections` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL default '',
  `image_position` varchar(30) NOT NULL default '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `access` tinyint(3) unsigned NOT NULL default '0',
  `count` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `jos_sections`
-- 

INSERT INTO `jos_sections` VALUES (1, 'اخبار', '', 'news', 'articles.jpg', 'content', 'right', 'یک خبر را برای خواندن انتخاب نمایید.', 1, 0, '0000-00-00 00:00:00', 3, 0, 3, '');
INSERT INTO `jos_sections` VALUES (5, 'لوازم خانگی', '', '1390-03-17-19-39-02', 'key.jpg', 'content', 'left', '<p>لطفا برای سفارش کالا با شماره های درج شده تماس بگیرید.</p>', 1, 62, '2011-07-14 06:29:36', 0, 0, 18, '');
INSERT INTO `jos_sections` VALUES (6, 'موبایل', '', '1390-03-17-19-40-34', 'taking_notes.jpg', 'content', 'left', '<p>لطفا مدل گوشی خود را انتخاب کنید.</p>', 1, 0, '0000-00-00 00:00:00', 7, 0, 5, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_session`
-- 

CREATE TABLE `jos_session` (
  `username` varchar(150) default '',
  `time` varchar(14) default '',
  `session_id` varchar(200) NOT NULL default '0',
  `guest` tinyint(4) default '1',
  `userid` int(11) default '0',
  `usertype` varchar(50) default '',
  `gid` tinyint(3) unsigned NOT NULL default '0',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `data` longtext,
  PRIMARY KEY  (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_session`
-- 

INSERT INTO `jos_session` VALUES ('', '1375853525', '086d7e6aa0702740681a4d3ff63febb2', 1, 0, '', 0, 0, '__default|a:8:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1375853525;s:18:"session.timer.last";i:1375853525;s:17:"session.timer.now";i:1375853525;s:22:"session.client.browser";s:67:"Mozilla/5.0 (Windows NT 5.1; rv:15.0) Gecko/20100101 Firefox/15.0.1";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:75:"C:\\Program Files\\xampp\\htdocs\\amini\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"f4baba933f9e358f4bf091bfa6c3d799";}');
INSERT INTO `jos_session` VALUES ('admin', '1375853608', 'af73d6604ed50aecc41f181b2a4ca330', 0, 62, 'Super Administrator', 25, 1, '__default|a:8:{s:15:"session.counter";i:4;s:19:"session.timer.start";i:1375853599;s:18:"session.timer.last";i:1375853608;s:17:"session.timer.now";i:1375853608;s:22:"session.client.browser";s:67:"Mozilla/5.0 (Windows NT 5.1; rv:15.0) Gecko/20100101 Firefox/15.0.1";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:2:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}s:11:"application";a:1:{s:4:"data";O:8:"stdClass":1:{s:4:"lang";s:0:"";}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";s:2:"62";s:4:"name";s:13:"Administrator";s:8:"username";s:5:"admin";s:5:"email";s:14:"info@amini.com";s:8:"password";s:65:"c5c80c32308fb39c845049e1f0a5c771:gmB0IaH32lKiAJk3HwuA46zwxiWKXLfp";s:14:"password_clear";s:0:"";s:8:"usertype";s:19:"Super Administrator";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:3:"gid";s:2:"25";s:12:"registerDate";s:19:"2011-06-06 16:41:32";s:13:"lastvisitDate";s:19:"2013-08-07 05:33:18";s:10:"activation";s:0:"";s:6:"params";s:105:"page_title=Edit Your Details\nshow_page_title=1\nadmin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=3.5\n\n";s:3:"aid";i:2;s:5:"guest";i:0;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:75:"C:\\Program Files\\xampp\\htdocs\\amini\\libraries\\joomla\\html\\parameter\\element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":7:{s:10:"page_title";s:17:"Edit Your Details";s:15:"show_page_title";s:1:"1";s:14:"admin_language";s:0:"";s:8:"language";s:0:"";s:6:"editor";s:0:"";s:8:"helpsite";s:0:"";s:8:"timezone";s:3:"3.5";}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"d883077e9103523d0a2b59dfd2647102";}');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_stats_agents`
-- 

CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL default '',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `hits` int(11) unsigned NOT NULL default '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_stats_agents`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `jos_templates_menu`
-- 

CREATE TABLE `jos_templates_menu` (
  `template` varchar(255) NOT NULL default '',
  `menuid` int(11) NOT NULL default '0',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `jos_templates_menu`
-- 

INSERT INTO `jos_templates_menu` VALUES ('ja_purity', 0, 0);
INSERT INTO `jos_templates_menu` VALUES ('khepri', 0, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_users`
-- 

CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `gid` tinyint(3) unsigned NOT NULL default '1',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

-- 
-- Dumping data for table `jos_users`
-- 

INSERT INTO `jos_users` VALUES (62, 'Administrator', 'admin', 'info@amini.com', 'c5c80c32308fb39c845049e1f0a5c771:gmB0IaH32lKiAJk3HwuA46zwxiWKXLfp', 'Super Administrator', 0, 1, 25, '2011-06-06 16:41:32', '2013-08-07 05:33:28', '', 'page_title=Edit Your Details\nshow_page_title=1\nadmin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=3.5\n\n');

-- --------------------------------------------------------

-- 
-- Table structure for table `jos_weblinks`
-- 

CREATE TABLE `jos_weblinks` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `jos_weblinks`
-- 

