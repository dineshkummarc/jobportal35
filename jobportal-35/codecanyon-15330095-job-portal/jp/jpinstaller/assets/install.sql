/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_jp_new

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-08-27 19:00:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE `tbl_admin` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(80) DEFAULT NULL,
  `admin_password` varchar(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_admin
-- ----------------------------
INSERT INTO `tbl_admin` VALUES ('1', 'admin', '$2y$10$ntA7ocGnH8FluHy4kSagFOeRH3f4WwJ0ATNp5yC4dpWetppEXwpS6', null);

-- ----------------------------
-- Table structure for `tbl_ad_codes`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_ad_codes`;
CREATE TABLE `tbl_ad_codes` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `bottom` text,
  `right_side_1` text,
  `right_side_2` text,
  `google_analytics` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_ad_codes
-- ----------------------------
INSERT INTO `tbl_ad_codes` VALUES ('1', '', '', '', '');

-- ----------------------------
-- Table structure for `tbl_cities`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cities`;
CREATE TABLE `tbl_cities` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `show` tinyint(1) NOT NULL DEFAULT '1',
  `city_slug` varchar(150) NOT NULL,
  `city_name` varchar(150) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '998',
  `country_ID` int(11) NOT NULL,
  `is_popular` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_cities
-- ----------------------------
INSERT INTO `tbl_cities` VALUES ('1', '1', '', 'New York', '998', '0', 'yes');
INSERT INTO `tbl_cities` VALUES ('2', '1', '', 'Dubai', '998', '0', 'yes');
INSERT INTO `tbl_cities` VALUES ('3', '1', '', 'Hong Kong', '998', '0', 'yes');
INSERT INTO `tbl_cities` VALUES ('4', '1', '', 'Islamabad', '998', '0', 'yes');
INSERT INTO `tbl_cities` VALUES ('5', '1', '', 'Lahore', '998', '0', 'no');
INSERT INTO `tbl_cities` VALUES ('6', '1', '', 'California', '998', '0', 'no');
INSERT INTO `tbl_cities` VALUES ('8', '1', '', 'Sydney', '998', '0', 'no');
INSERT INTO `tbl_cities` VALUES ('9', '1', '', 'Los Angeles', '998', '0', 'no');
INSERT INTO `tbl_cities` VALUES ('10', '1', '', 'Chicago', '998', '0', 'no');
INSERT INTO `tbl_cities` VALUES ('11', '1', '', 'Houston', '998', '0', 'no');
INSERT INTO `tbl_cities` VALUES ('14', '1', '', 'Austin', '998', '0', 'no');
INSERT INTO `tbl_cities` VALUES ('15', '1', '', 'San Francisco', '998', '0', 'no');
INSERT INTO `tbl_cities` VALUES ('17', '1', '', 'Boston', '998', '0', 'no');
INSERT INTO `tbl_cities` VALUES ('18', '1', '', 'Washington', '998', '0', 'no');
INSERT INTO `tbl_cities` VALUES ('19', '1', '', 'Las Vegas', '998', '0', 'yes');

-- ----------------------------
-- Table structure for `tbl_cms`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cms`;
CREATE TABLE `tbl_cms` (
  `pageID` int(11) NOT NULL AUTO_INCREMENT,
  `pageTitle` varchar(100) DEFAULT NULL,
  `pageSlug` varchar(100) DEFAULT NULL,
  `pageContent` text,
  `pageImage` varchar(100) DEFAULT NULL,
  `pageParentPageID` int(11) DEFAULT '0',
  `dated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `pageStatus` enum('Inactive','Published') DEFAULT 'Inactive',
  `seoMetaTitle` varchar(100) DEFAULT NULL,
  `seoMetaKeyword` varchar(255) DEFAULT NULL,
  `seoMetaDescription` varchar(255) DEFAULT NULL,
  `seoAllowCrawler` tinyint(1) DEFAULT '1',
  `pageCss` text,
  `pageScript` text,
  `menuTop` tinyint(4) DEFAULT '0',
  `menuBottom` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`pageID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_cms
-- ----------------------------
INSERT INTO `tbl_cms` VALUES ('7', 'About Us', 'about-us.html', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.<br />\n<br />\nAliquam imperdiet cursus felis, sed posuere nunc. In sollicitudin accumsan orci, eu aliquet lectus tempus nec. Fusce facilisis metus a diam dignissim tristique. Fusce id ligula lectus. In tempor ut purus vel pharetra. Quisque ultrices justo id lectus tristique finibus. Praesent facilisis velit eu elementum tempus. In vel lectus congue, ultricies orci congue, imperdiet massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin, magna ultricies vulputate feugiat, tortor arcu dignissim urna, vitae porta sem justo ut enim. Donec ullamcorper tellus vel fringilla varius. In nec felis quam. Quisque ut nunc non dui bibendum tristique quis accumsan libero.<br />\n<br />\nNunc finibus nisi id nisi scelerisque eleifend. Sed vulputate finibus vestibulum. Nulla facilisi. Etiam convallis leo nisl, et hendrerit ligula ornare ut. Nunc et enim ultrices, vehicula dui sit amet, fringilla tellus. Quisque eu elit lorem. Nunc hendrerit orci ut ex molestie, eget semper lorem cursus. Proin congue consectetur felis et cursus. Sed aliquam nunc nec odio ultricies, eget aliquet nisl porta. Phasellus consequat eleifend enim. Donec in tincidunt diam, id mattis nulla. Cras in luctus arcu, eu efficitur mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. In tincidunt sapien libero, sit amet convallis tortor sollicitudin non. Sed id nulla ac nulla volutpat vehicula. Morbi lacus nunc, tristique rutrum molestie vel, tincidunt ut lectus.<br />\nAliquam imperdiet cursus<br />\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.<br />\n<br />\nAliquam imperdiet cursus felis, sed posuere nunc. In sollicitudin accumsan orci, eu aliquet lectus tempus nec. Fusce facilisis metus a diam dignissim tristique. Fusce id ligula lectus. In tempor ut purus vel pharetra. Quisque ultrices justo id lectus tristique finibus. Praesent facilisis velit eu elementum tempus. In vel lectus congue, ultricies orci congue, imperdiet massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin, magna ultricies vulputate feugiat, tortor arcu dignissim urna, vitae porta sem justo ut enim. Donec ullamcorper tellus vel fringilla varius. In nec felis quam. Quisque ut nunc non dui bibendum tristique quis accumsan libero.<br />\n<br />\nNunc finibus nisi id nisi scelerisque eleifend. Sed vulputate finibus vestibulum. Nulla facilisi. Etiam convallis leo nisl, et hendrerit ligula ornare ut. Nunc et enim ultrices, vehicula dui sit amet, fringilla tellus. Quisque eu elit lorem. Nunc hendrerit orci ut ex molestie, eget semper lorem cursus. Proin congue consectetur felis et cursus. Sed aliquam nunc nec odio ultricies, eget aliquet nisl porta. Phasellus consequat eleifend enim. Donec in tincidunt diam, id mattis nulla. Cras in luctus arcu, eu efficitur mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. In tincidunt sapien libero, sit amet convallis tortor sollicitudin non. Sed id nulla ac nulla volutpat vehicula. Morbi lacus nunc, tristique rutrum molestie vel, tincidunt ut lectus.<br />\nSuspendisse quis mi commodo, eleifend massa ut, dapibus ligula.<br />\nMaecenas sagittis sem sed sapien blandit venenatis.<br />\nPraesent eleifend ligula id ex condimentum, eu finibus lorem hendrerit.<br />\nVestibulum consequat nunc a elit faucibus lacinia.<br />\nProin quis libero eget lorem vulputate imperdiet.<br />\nVivamus iaculis arcu eget libero imperdiet, sit amet posuere ante consectetur.', 'about-company1.jpg', '0', '2016-11-27 09:33:43', 'Published', 'About Us', 'About Job Portal, Jobs, IT', 'The leading online job portal', '1', null, null, '1', '1');
INSERT INTO `tbl_cms` VALUES ('13', 'How To Get Job', 'how-to-get-job.html', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.<br />\n<br />\nAliquam imperdiet cursus felis, sed posuere nunc. In sollicitudin accumsan orci, eu aliquet lectus tempus nec. Fusce facilisis metus a diam dignissim tristique. Fusce id ligula lectus. In tempor ut purus vel pharetra. Quisque ultrices justo id lectus tristique finibus. Praesent facilisis velit eu elementum tempus. In vel lectus congue, ultricies orci congue, imperdiet massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin, magna ultricies vulputate feugiat, tortor arcu dignissim urna, vitae porta sem justo ut enim. Donec ullamcorper tellus vel fringilla varius. In nec felis quam. Quisque ut nunc non dui bibendum tristique quis accumsan libero.<br />\n<br />\nNunc finibus nisi id nisi scelerisque eleifend. Sed vulputate finibus vestibulum. Nulla facilisi. Etiam convallis leo nisl, et hendrerit ligula ornare ut. Nunc et enim ultrices, vehicula dui sit amet, fringilla tellus. Quisque eu elit lorem. Nunc hendrerit orci ut ex molestie, eget semper lorem cursus. Proin congue consectetur felis et cursus. Sed aliquam nunc nec odio ultricies, eget aliquet nisl porta. Phasellus consequat eleifend enim. Donec in tincidunt diam, id mattis nulla. Cras in luctus arcu, eu efficitur mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. In tincidunt sapien libero, sit amet convallis tortor sollicitudin non. Sed id nulla ac nulla volutpat vehicula. Morbi lacus nunc, tristique rutrum molestie vel, tincidunt ut lectus.<br />\nAliquam imperdiet cursus<br />\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', null, '0', '2017-08-27 18:50:08', 'Published', 'How To Get Job', 'Tips, Job, Online', 'How to get job includes tips and tricks to crack interview', '1', null, null, '0', '0');
INSERT INTO `tbl_cms` VALUES ('14', 'Interview', 'interview.html', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.<br />\n<br />\nAliquam imperdiet cursus felis, sed posuere nunc. In sollicitudin accumsan orci, eu aliquet lectus tempus nec. Fusce facilisis metus a diam dignissim tristique. Fusce id ligula lectus. In tempor ut purus vel pharetra. Quisque ultrices justo id lectus tristique finibus. Praesent facilisis velit eu elementum tempus. In vel lectus congue, ultricies orci congue, imperdiet massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin, magna ultricies vulputate feugiat, tortor arcu dignissim urna, vitae porta sem justo ut enim. Donec ullamcorper tellus vel fringilla varius. In nec felis quam. Quisque ut nunc non dui bibendum tristique quis accumsan libero.<br />\n<br />\nNunc finibus nisi id nisi scelerisque eleifend. Sed vulputate finibus vestibulum. Nulla facilisi. Etiam convallis leo nisl, et hendrerit ligula ornare ut. Nunc et enim ultrices, vehicula dui sit amet, fringilla tellus. Quisque eu elit lorem. Nunc hendrerit orci ut ex molestie, eget semper lorem cursus. Proin congue consectetur felis et cursus. Sed aliquam nunc nec odio ultricies, eget aliquet nisl porta. Phasellus consequat eleifend enim. Donec in tincidunt diam, id mattis nulla. Cras in luctus arcu, eu efficitur mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. In tincidunt sapien libero, sit amet convallis tortor sollicitudin non. Sed id nulla ac nulla volutpat vehicula. Morbi lacus nunc, tristique rutrum molestie vel, tincidunt ut lectus.<br />\nAliquam imperdiet cursus<br />\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', null, '0', '2016-11-27 09:42:22', 'Published', 'Interview', 'job, jobs, interview, tips', 'How to take interview', '1', null, null, '0', '0');
INSERT INTO `tbl_cms` VALUES ('15', 'CV Writing', 'cv-writing.html', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.<br />\n<br />\nAliquam imperdiet cursus felis, sed posuere nunc. In sollicitudin accumsan orci, eu aliquet lectus tempus nec. Fusce facilisis metus a diam dignissim tristique. Fusce id ligula lectus. In tempor ut purus vel pharetra. Quisque ultrices justo id lectus tristique finibus. Praesent facilisis velit eu elementum tempus. In vel lectus congue, ultricies orci congue, imperdiet massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin, magna ultricies vulputate feugiat, tortor arcu dignissim urna, vitae porta sem justo ut enim. Donec ullamcorper tellus vel fringilla varius. In nec felis quam. Quisque ut nunc non dui bibendum tristique quis accumsan libero.<br />\n<br />\nNunc finibus nisi id nisi scelerisque eleifend. Sed vulputate finibus vestibulum. Nulla facilisi. Etiam convallis leo nisl, et hendrerit ligula ornare ut. Nunc et enim ultrices, vehicula dui sit amet, fringilla tellus. Quisque eu elit lorem. Nunc hendrerit orci ut ex molestie, eget semper lorem cursus. Proin congue consectetur felis et cursus. Sed aliquam nunc nec odio ultricies, eget aliquet nisl porta. Phasellus consequat eleifend enim. Donec in tincidunt diam, id mattis nulla. Cras in luctus arcu, eu efficitur mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. In tincidunt sapien libero, sit amet convallis tortor sollicitudin non. Sed id nulla ac nulla volutpat vehicula. Morbi lacus nunc, tristique rutrum molestie vel, tincidunt ut lectus.<br />\nAliquam imperdiet cursus<br />\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', null, '0', '2016-11-27 09:44:04', 'Published', 'CV writing tips and tricks', 'CV, resume', 'How to write a professional CV.', '1', null, null, '0', '0');
INSERT INTO `tbl_cms` VALUES ('16', 'Privacy Policy', 'privacy-policy.html', '1Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.<br />\r\n<br />\r\nAliquam imperdiet cursus felis, sed posuere nunc. In sollicitudin accumsan orci, eu aliquet lectus tempus nec. Fusce facilisis metus a diam dignissim tristique. Fusce id ligula lectus. In tempor ut purus vel pharetra. Quisque ultrices justo id lectus tristique finibus. Praesent facilisis velit eu elementum tempus. In vel lectus congue, ultricies orci congue, imperdiet massa. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sollicitudin, magna ultricies vulputate feugiat, tortor arcu dignissim urna, vitae porta sem justo ut enim. Donec ullamcorper tellus vel fringilla varius. In nec felis quam. Quisque ut nunc non dui bibendum tristique quis accumsan libero.<br />\r\n<br />\r\nNunc finibus nisi id nisi scelerisque eleifend. Sed vulputate finibus vestibulum. Nulla facilisi. Etiam convallis leo nisl, et hendrerit ligula ornare ut. Nunc et enim ultrices, vehicula dui sit amet, fringilla tellus. Quisque eu elit lorem. Nunc hendrerit orci ut ex molestie, eget semper lorem cursus. Proin congue consectetur felis et cursus. Sed aliquam nunc nec odio ultricies, eget aliquet nisl porta. Phasellus consequat eleifend enim. Donec in tincidunt diam, id mattis nulla. Cras in luctus arcu, eu efficitur mi. Interdum et malesuada fames ac ante ipsum primis in faucibus. In tincidunt sapien libero, sit amet convallis tortor sollicitudin non. Sed id nulla ac nulla volutpat vehicula. Morbi lacus nunc, tristique rutrum molestie vel, tincidunt ut lectus.<br />\r\nAliquam imperdiet cursus<br />\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis fermentum, dolor non vulputate pretium, nisl enim posuere leo, vel dictum orci dolor non est. Sed lacus lorem, pulvinar sit amet hendrerit a, varius eu est. Fusce ut turpis enim. Sed vel gravida velit, vel vulputate tortor. Suspendisse ut congue sem, vitae dignissim nulla. In at neque sagittis, pulvinar risus sit amet, tincidunt enim. Proin placerat lorem nisl, a molestie sem ornare quis. Duis bibendum, lectus et rhoncus auctor, massa dolor efficitur risus, a hendrerit quam nulla ut enim. Suspendisse potenti. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', null, '0', '2017-08-19 22:15:22', 'Published', 'Privacy Policy', 'Privacy, policies', 'Job portal privacy policies', '1', null, null, null, null);

-- ----------------------------
-- Table structure for `tbl_companies`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_companies`;
CREATE TABLE `tbl_companies` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(155) DEFAULT NULL,
  `company_email` varchar(100) DEFAULT NULL,
  `company_ceo` varchar(60) DEFAULT NULL,
  `industry_ID` int(5) DEFAULT NULL,
  `ownership_type` enum('NGO','Private','Public') DEFAULT 'Private',
  `company_description` text,
  `company_location` varchar(155) DEFAULT NULL,
  `no_of_offices` int(11) DEFAULT NULL,
  `company_website` varchar(155) DEFAULT NULL,
  `no_of_employees` varchar(15) DEFAULT NULL,
  `established_in` varchar(12) DEFAULT NULL,
  `company_type` varchar(60) DEFAULT NULL,
  `company_fax` varchar(30) DEFAULT NULL,
  `company_phone` varchar(30) DEFAULT NULL,
  `company_logo` varchar(155) DEFAULT NULL,
  `company_folder` varchar(155) DEFAULT NULL,
  `company_country` varchar(80) DEFAULT NULL,
  `sts` enum('blocked','pending','active') DEFAULT 'active',
  `company_city` varchar(80) DEFAULT NULL,
  `company_slug` varchar(155) DEFAULT NULL,
  `old_company_id` int(11) DEFAULT NULL,
  `old_employerlogin` varchar(100) DEFAULT NULL,
  `flag` varchar(5) DEFAULT NULL,
  `ownership_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=209 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_companies
-- ----------------------------
INSERT INTO `tbl_companies` VALUES ('1', 'Mega Technologies', null, null, '22', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex.\n\nAliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in. Nulla at viverra metus, id porttitor nulla. In et arcu id felis eleifend auctor vitae a justo. Nullam eleifend, purus id hendrerit tempus, massa elit vehicula metus, pharetra elementum lectus elit ac felis. Sed fermentum luctus aliquet. Vestibulum pulvinar ornare ipsum, gravida condimentum nulla luctus sit amet. Sed tempor eros a tempor faucibus. Proin orci tortor, placerat sit amet elementum sit amet, ornare vel urna.', 'Lorem ipsum dolor street, 32423', null, 'www.companyurl.com', '1-10', null, null, null, '313313137', 'JOBPORTAL-1457690431.jpg', null, null, 'active', null, 'mega-technologies', null, null, null, 'Private');
INSERT INTO `tbl_companies` VALUES ('2', 'It Pixels', null, null, '22', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in. Nulla at viverra metus, id porttitor nulla. In et arcu id felis eleifend auctor vitae a justo. Nullam eleifend, purus id hendrerit tempus, massa elit vehicula metus, pharetra elementum lectus elit ac felis. Sed fermentum luctus aliquet. Vestibulum pulvinar ornare ipsum, gravida condimentum nulla luctus sit amet. Sed tempor eros a tempor faucibus. Proin orci tortor, placerat sit amet elementum sit amet, ornare vel urna.', 'Lorem ipsum dolor sit amet', null, 'www.companyurl.com', '1-10', null, null, null, '5335434534', 'JOBPORTAL-1457690733.jpg', null, null, 'active', null, 'it-pixels', null, null, null, 'Private');
INSERT INTO `tbl_companies` VALUES ('3', 'Info Technologies', null, null, '22', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Lorem ipsum dolor sit amet, consectetur', null, 'www.companyurl.com', '101-300', null, null, null, '123456789', 'JOBPORTAL-1457691226.jpg', null, null, 'active', null, 'info-technologies', null, null, null, 'Private');
INSERT INTO `tbl_companies` VALUES ('4', 'Some IT company', null, null, '22', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Lorem ipsum dolor sit amet, consectetur', null, 'www.companyurl.com', '1-10', null, null, null, '123456789', 'JOBPORTAL-1457693358.jpg', null, null, 'active', null, 'some-it-company', null, null, null, 'Private');
INSERT INTO `tbl_companies` VALUES ('5', 'Abc IT Tech', null, null, '22', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Lorem ipsum dolor sit amet', null, 'www.companyurl.com', '1-10', null, null, null, '123456789', 'JOBPORTAL-1457711170.jpg', null, null, 'active', null, 'abc-it-tech', null, null, null, 'Private');
INSERT INTO `tbl_companies` VALUES ('6', 'Def It Company', null, null, '40', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', null, 'www.companyurl.com', '1-10', null, null, null, '123456789', 'JOBPORTAL-1457711477.jpg', null, null, 'active', null, 'def-it-company', null, null, null, 'Private');
INSERT INTO `tbl_companies` VALUES ('7', 'Ghi Company', null, null, '10', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Lorem ipsum dolor sit amet, consectetur', null, 'www.companyurl.com', '1-10', null, null, null, '123456789', 'JOBPORTAL-1457711897.jpg', null, null, 'active', null, 'ghi-company', null, null, null, 'Private');
INSERT INTO `tbl_companies` VALUES ('8', 'Jkl Company', null, null, '7', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Lorem ipsum dolor sit amet', null, 'www.companyurl.com', '1-10', null, null, null, '123456789', 'JOBPORTAL-1457712255.jpg', null, null, 'active', null, 'jkl-company', null, null, null, 'Private');
INSERT INTO `tbl_companies` VALUES ('9', 'Mno Company', null, null, '22', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Lorem ipsum dolor sit amet', null, 'www.companyurl.com', '1-10', null, null, null, '12345679', 'JOBPORTAL-1457713172.jpg', null, null, 'active', null, 'mno-company', null, null, null, 'Private');
INSERT INTO `tbl_companies` VALUES ('10', 'MNT Comapny', null, null, '22', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Aenean fermentum fermentum convallis', null, 'www.companyurl.com', '101-300', null, null, null, '123456789', 'JOBPORTAL-1457713426.jpg', null, null, 'active', null, 'mnt-comapny', null, null, null, 'Private');
INSERT INTO `tbl_companies` VALUES ('11', 'MNF Comapny', null, null, '16', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', 'Pellentesque hendrerit est id quam facilisis', null, 'www.companyurl.com', '51-100', null, null, null, '123456789', 'JOBPORTAL-1457713999.jpg', null, null, 'active', null, 'mnf-comapny', null, null, null, 'Private');
INSERT INTO `tbl_companies` VALUES ('12', 'QWE Company', null, null, '18', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a velit sed risus pulvinar faucibus. Nulla facilisi. Nullam vehicula nec ligula eu vulputate. Nunc id ultrices mi, ac tristique lectus. Suspendisse porta ultrices ultricies. Sed quis nisi vel magna maximus aliquam a vel nisl. Cras non rutrum diam. Nulla sed ipsum a felis posuere pharetra ut sit amet augue. Sed id nisl sodales, vulputate mi eu, viverra neque. Fusce fermentum, est ut accumsan accumsan, risus ante varius diam, non venenatis eros ligula fermentum leo. Etiam consectetur imperdiet volutpat. Donec ut pharetra nisi, eget pellentesque tortor. Integer eleifend dolor eu ex lobortis, ac gravida augue tristique. Proin placerat consectetur tincidunt. Nullam sollicitudin, neque eget iaculis ultricies, est justo pulvinar turpis, vulputate convallis leo orci at sapien.\n\nQuisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.', 'Quisque ac scelerisque libero, nec blandit neque', null, 'www.companyurl.com', '1-10', null, null, null, '123456789', 'JOBPORTAL-1457768561.jpg', null, null, 'active', null, 'qwe-company', null, null, null, 'Private');
INSERT INTO `tbl_companies` VALUES ('13', 'ASD Company', null, null, '10', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a velit sed risus pulvinar faucibus. Nulla facilisi. Nullam vehicula nec ligula eu vulputate. Nunc id ultrices mi, ac tristique lectus. Suspendisse porta ultrices ultricies. Sed quis nisi vel magna maximus aliquam a vel nisl. Cras non rutrum diam. Nulla sed ipsum a felis posuere pharetra ut sit amet augue. Sed id nisl sodales, vulputate mi eu, viverra neque. Fusce fermentum, est ut accumsan accumsan, risus ante varius diam, non venenatis eros ligula fermentum leo. Etiam consectetur imperdiet volutpat. Donec ut pharetra nisi, eget pellentesque tortor. Integer eleifend dolor eu ex lobortis, ac gravida augue tristique. Proin placerat consectetur tincidunt. Nullam sollicitudin, neque eget iaculis ultricies, est justo pulvinar turpis, vulputate convallis leo orci at sapien.', 'Quisque ac scelerisque libero, nec blandit neque', null, 'www.companyurl.com', '1-10', null, null, null, '123456789', 'JOBPORTAL-1457768887.jpg', null, null, 'active', null, 'asd-company', null, null, null, 'Private');
INSERT INTO `tbl_companies` VALUES ('14', 'XCV Company', null, null, '18', 'Private', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a velit sed risus pulvinar faucibus. Nulla facilisi. Nullam vehicula nec ligula eu vulputate. Nunc id ultrices mi, ac tristique lectus. Suspendisse porta ultrices ultricies. Sed quis nisi vel magna maximus aliquam a vel nisl. Cras non rutrum diam. Nulla sed ipsum a felis posuere pharetra ut sit amet augue. Sed id nisl sodales, vulputate mi eu, viverra neque. Fusce fermentum, est ut accumsan accumsan, risus ante varius diam, non venenatis eros ligula fermentum leo. Etiam consectetur imperdiet volutpat. Donec ut pharetra nisi, eget pellentesque tortor. Integer eleifend dolor eu ex lobortis, ac gravida augue tristique. Proin placerat consectetur tincidunt. Nullam sollicitudin, neque eget iaculis ultricies, est justo pulvinar turpis, vulputate convallis leo orci at sapien.\n\nQuisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.', 'Nullam enim ex, vulputate at ultricies bibendum', null, 'www.companyurl.com', '1-10', null, null, null, '123456789', 'JOBPORTAL-1457769102.jpg', null, null, 'active', null, 'xcv-company', null, null, null, 'Private');

-- ----------------------------
-- Table structure for `tbl_countries`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_countries`;
CREATE TABLE `tbl_countries` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(150) NOT NULL DEFAULT '',
  `country_citizen` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_countries
-- ----------------------------
INSERT INTO `tbl_countries` VALUES ('1', 'United States', 'United States');
INSERT INTO `tbl_countries` VALUES ('2', 'United Kingdom', 'United Kingdom');
INSERT INTO `tbl_countries` VALUES ('3', 'Australia', 'Australia');
INSERT INTO `tbl_countries` VALUES ('4', 'Pakistan', 'Pakistan');
INSERT INTO `tbl_countries` VALUES ('5', 'United Arab Emirates', 'United Arab Emirates');
INSERT INTO `tbl_countries` VALUES ('6', 'China', 'China');
INSERT INTO `tbl_countries` VALUES ('7', 'Canada', 'Canada');
INSERT INTO `tbl_countries` VALUES ('8', 'Sweden', 'Swedish');
INSERT INTO `tbl_countries` VALUES ('12', 'Egypt', 'Egyptian');

-- ----------------------------
-- Table structure for `tbl_email_content`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_email_content`;
CREATE TABLE `tbl_email_content` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `email_name` varchar(155) DEFAULT NULL,
  `from_name` varchar(155) DEFAULT NULL,
  `content` text,
  `from_email` varchar(90) DEFAULT NULL,
  `subject` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_email_content
-- ----------------------------
INSERT INTO `tbl_email_content` VALUES ('1', 'Forgot Password', 'MNO Jobs', '<style type=\"text/css\">\n				.txt {\n						font-family: Arial, Helvetica, sans-serif;\n						font-size: 13px; color:#000000;\n					}\n				</style>\n<p class=\"txt\">Thank you  for contacting Member Support. Your account information is listed below: </p>\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\" class=\"txt\">\n  <tr>\n    <td width=\"17\" height=\"19\"><p>&nbsp;</p></td>\n    <td width=\"159\" height=\"25\" align=\"right\"><strong>Login Page:&nbsp;&nbsp;</strong></td>\n    <td width=\"424\" align=\"left\"><a href=\"{SITE_URL}/login\">{SITE_URL}/login</a></td>\n  </tr>\n  <tr>\n    <td height=\"19\">&nbsp;</td>\n    <td height=\"25\" align=\"right\"><strong>Your Username:&nbsp;&nbsp;</strong></td>\n    <td align=\"left\">{USERNAME}</td>\n  </tr>\n  <tr>\n    <td height=\"19\"><p>&nbsp;</p></td>\n    <td height=\"25\" align=\"right\"><strong>Your Password:&nbsp;&nbsp;</strong></td>\n    <td align=\"left\">{PASSWORD}</td>\n  </tr>\n</table>\n\n<p class=\"txt\">Thank you,</p>', 'service@jobportalbeta.com', 'Password Recovery');
INSERT INTO `tbl_email_content` VALUES ('2', 'Jobseeker Signup', 'Jobseeker Signup Successful', '<style type=\"text/css\">p {font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#000000;}</style>\n\n  <p>{JOBSEEKER_NAME}:</p>\n  <p>Thank you for joining us. Please note your profile details for future record.</p>\n  <p>Username: {USERNAME}<br>\n    Password: {PASSWORD}</p>\n  \n  <p>Regards</p>', 'service@jobportalbeta.com', 'Jobs website');
INSERT INTO `tbl_email_content` VALUES ('3', 'Employer signs up', 'Employer Signup Successful', '<style type=\"text/css\">p {font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#000000;}</style>\n\n  <p>{EMPLOYER_NAME}</p>\n  <p>Thank you for joining us. Please note your profile details for future record.</p>\n  <p>Username: {USERNAME}<br>\n    Password: {PASSWORD}</p>\n  <p>Regards</p>', 'service@jobportalbeta.com', 'Jobs website');
INSERT INTO `tbl_email_content` VALUES ('4', 'New job is posted by Employer', 'New Job Posted', '<style type=\"text/css\">p {font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#000000;}</style>\n\n  <p>{JOBSEEKER_NAME},</p>\n  <p>We would like to inform  that a new job has been posted on our website that may be of your interest.</p>\n  <p>Please visit the  following link to review and apply:</p>\n <p>{JOB_LINK}</p>\n  <p>Regards,</p>', 'service@jobportalbeta.com', 'New {JOB_CATEGORY}');
INSERT INTO `tbl_email_content` VALUES ('5', 'Apply Job', 'Job Application', '<style type=\"text/css\">p {font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#000000;}</style>\n  <p>{EMPLOYER_NAME}:</p>\n  <p>A new candidate has applied for the post of {JOB_TITLE}.</p>\n  <p>Please visit the following link to review the applicant profile.<br>\n    {CANDIDATE_PROFILE_LINK}</p>\n  <p>Regards,</p>', 'service@jobportalbeta.com', 'New Job CV {JOB_TITLE}');
INSERT INTO `tbl_email_content` VALUES ('6', 'Job Activation Email', 'Job Activated', '<style type=\"text/css\">p {font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#000000;}</style>\n  <p>{EMPLOYER_NAME}:</p>\n  <p>You had recently posted a job: {JOB_TITLE} on our website.</p>\n  <p>Your recent job has been approved and should be displaying on our website.</p>\n  <p>Thank you for using our website.</p>\n  <p>Regards,</p>', 'service@jobportalbeta.com', '{JOB_TITLE}  is now active');
INSERT INTO `tbl_email_content` VALUES ('7', 'Send Message To Candidate', '{EMPLOYER_NAME}', '<style type=\"text/css\">p {font-family: Arial, Helvetica, sans-serif; font-size: 13px; color:#000000;}</style>\r\n  <p>Hi {JOBSEEKER_NAME}:</p>\r\n  <p>A new message has been posted for you by :  {COMPANY_NAME}.</p>\r\n  <p>Message:</p>\r\n  <p>{MESSAGE}</p>\r\n  <p>You may review this company by going to: {COMPANY_PROFILE_LINK} to company profile.</p>\r\n  \r\n  <p>Regards,</p>', '{EMPLOYER_EMAIL}', 'New message for you');
INSERT INTO `tbl_email_content` VALUES ('8', 'Scam Alert', '{JOBSEEKER_NAME}', 'bla bla bla', '{JOBSEEKER_EMAIL}', 'Company reported');

-- ----------------------------
-- Table structure for `tbl_employers`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_employers`;
CREATE TABLE `tbl_employers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `company_ID` int(6) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pass_code` varchar(100) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `mobile_phone` varchar(30) NOT NULL DEFAULT '',
  `gender` enum('female','male') DEFAULT NULL,
  `dated` date NOT NULL,
  `sts` enum('blocked','pending','active') NOT NULL DEFAULT 'active',
  `dob` date DEFAULT NULL,
  `home_phone` varchar(30) DEFAULT NULL,
  `verification_code` varchar(155) DEFAULT NULL,
  `first_login_date` datetime DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `ip_address` varchar(40) DEFAULT NULL,
  `old_emp_id` int(11) DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  `present_address` varchar(155) DEFAULT NULL,
  `top_employer` enum('no','yes') DEFAULT 'no',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=209 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_employers
-- ----------------------------
INSERT INTO `tbl_employers` VALUES ('1', '1', 'test@test.com', 'test123', 'Jhon Doe', null, 'United States', 'New York', '135646456', null, '2016-03-11', 'active', null, '0', null, '2016-03-11 14:54:55', '2017-05-01 19:59:51', '115.186.165.234', null, null, null, 'yes');
INSERT INTO `tbl_employers` VALUES ('2', '2', 'test2@test2.com', 'test123', 'Andrew', null, 'United States', 'New York', '4353453455', null, '2016-03-11', 'active', null, '0', null, '2017-01-07 09:37:49', '2017-01-07 09:37:49', '115.186.165.234', null, null, null, 'yes');
INSERT INTO `tbl_employers` VALUES ('3', '3', 'test3@test3.com', 'test123', 'Danny', null, 'Australia', 'Sydney', '123456789', null, '2016-03-11', 'active', null, '0', null, null, null, '115.186.165.234', null, null, null, 'yes');
INSERT INTO `tbl_employers` VALUES ('4', '4', 'test4@test4.com', 'test123', 'Daniel', null, 'China', 'Hong Kong', '123465789', null, '2016-03-11', 'active', null, '0', null, null, null, '115.186.165.234', null, null, null, 'yes');
INSERT INTO `tbl_employers` VALUES ('5', '5', 'test5@test5.com', 'test123', 'Anthony', null, 'United Arab Emirates', 'Dubai', '123456789', null, '2016-03-11', 'active', null, '0', null, null, null, '101.50.114.8', null, null, null, 'yes');
INSERT INTO `tbl_employers` VALUES ('6', '6', 'test6@test6.com', 'test123', 'Charles', null, 'United States', 'New York', '123456789', null, '2016-03-11', 'active', null, '0', null, null, null, '101.50.114.8', null, null, null, 'yes');
INSERT INTO `tbl_employers` VALUES ('7', '7', 'test7@test7.com', 'test123', 'Edward', null, 'United Arab Emirates', 'Dubai', '123456789', null, '2016-03-11', 'active', null, '0', null, null, null, '101.50.114.8', null, null, null, 'yes');
INSERT INTO `tbl_employers` VALUES ('8', '8', 'test8@test8.com', 'test123', 'Jonathan', null, 'United States', 'New York', '123456789', null, '2016-03-11', 'active', null, '0', null, null, null, '101.50.114.8', null, null, null, 'yes');
INSERT INTO `tbl_employers` VALUES ('9', '9', 'test10@test10.com', 'test123', 'Oscar', null, 'United States', 'New York', '123456789', null, '2016-03-11', 'active', null, '0', null, null, null, '101.50.114.8', null, null, null, 'yes');
INSERT INTO `tbl_employers` VALUES ('10', '10', 'test@test11.com', 'test123', 'Lee', null, 'Pakistan', 'Islamabad', '132465798', null, '2016-03-11', 'active', null, '0', null, null, null, '101.50.114.8', null, null, null, 'yes');
INSERT INTO `tbl_employers` VALUES ('11', '11', 'test@test12.com', 'test123', 'Mark', null, 'United States', 'New York', '123456789', null, '2016-03-11', 'active', null, '0', null, null, null, '101.50.114.8', null, null, null, 'yes');
INSERT INTO `tbl_employers` VALUES ('12', '12', 'test16@test.com', 'test123', 'James', null, 'United States', 'New York', '123456789', null, '2016-03-12', 'active', null, '0', null, null, null, '115.186.165.234', null, null, null, 'yes');
INSERT INTO `tbl_employers` VALUES ('13', '13', 'test17@test.com', 'test123', 'George', null, 'United States', 'Los Angeles', '123456789', null, '2016-03-12', 'active', null, '0', null, null, null, '115.186.165.234', null, null, null, 'yes');
INSERT INTO `tbl_employers` VALUES ('14', '14', 'test18@test.com', 'test123', 'Mark', null, 'United States', 'Las Vegas', '123456789', null, '2016-03-12', 'active', null, '0', null, null, null, '115.186.165.234', null, null, null, 'yes');

-- ----------------------------
-- Table structure for `tbl_favourite_candidates`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_favourite_candidates`;
CREATE TABLE `tbl_favourite_candidates` (
  `employer_id` int(11) NOT NULL AUTO_INCREMENT,
  `seekerid` int(11) DEFAULT NULL,
  `employerlogin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_favourite_candidates
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_favourite_companies`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_favourite_companies`;
CREATE TABLE `tbl_favourite_companies` (
  `seekerid` int(11) NOT NULL AUTO_INCREMENT,
  `companyid` int(11) DEFAULT NULL,
  `seekerlogin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seekerid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_favourite_companies
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_gallery`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_gallery`;
CREATE TABLE `tbl_gallery` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `image_caption` varchar(150) DEFAULT NULL,
  `image_name` varchar(155) DEFAULT NULL,
  `dated` datetime DEFAULT NULL,
  `sts` enum('inactive','active') DEFAULT 'active',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_gallery
-- ----------------------------
INSERT INTO `tbl_gallery` VALUES ('1', 'Test', 'portfolio-2.jpg', '2015-09-05 18:16:41', 'active');
INSERT INTO `tbl_gallery` VALUES ('2', '', 'portfolio-1.jpg', '2015-09-05 21:17:59', 'active');
INSERT INTO `tbl_gallery` VALUES ('3', '', 'portfolio-3.jpg', '2015-09-05 21:22:19', 'active');
INSERT INTO `tbl_gallery` VALUES ('4', '', 'portfolio-6.jpg', '2015-09-05 21:22:29', 'active');
INSERT INTO `tbl_gallery` VALUES ('5', '', 'portfolio-7.jpg', '2015-09-05 21:22:38', 'active');
INSERT INTO `tbl_gallery` VALUES ('6', '', 'portfolio-8.jpg', '2015-09-05 21:22:53', 'active');
INSERT INTO `tbl_gallery` VALUES ('7', '', 'portfolio-9.jpg', '2015-09-05 21:23:05', 'active');
INSERT INTO `tbl_gallery` VALUES ('8', 'Walk with the Queen... But be careful!', 'portfolio-10.jpg', '2015-09-05 21:23:16', 'inactive');
INSERT INTO `tbl_gallery` VALUES ('9', 'Bla bla bla Bla bla bla Bla bla bla Bla bla bla Bla bla bla Bla bla bla Bla bla bla Bla bla bla Bla.', 'portfolio-11.jpg', '2015-09-05 21:23:24', 'active');
INSERT INTO `tbl_gallery` VALUES ('10', 'Beatuiful Bubble', 'portfolio-12.jpg', '2015-09-05 21:23:32', 'active');

-- ----------------------------
-- Table structure for `tbl_institute`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_institute`;
CREATE TABLE `tbl_institute` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sts` enum('blocked','active') DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_institute
-- ----------------------------
INSERT INTO `tbl_institute` VALUES ('1', 'ANTS', null);
INSERT INTO `tbl_institute` VALUES ('2', 'test', null);

-- ----------------------------
-- Table structure for `tbl_job_alert`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_job_alert`;
CREATE TABLE `tbl_job_alert` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `job_ID` int(11) DEFAULT NULL,
  `dated` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_job_alert
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_job_alert_queue`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_job_alert_queue`;
CREATE TABLE `tbl_job_alert_queue` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seeker_ID` int(11) DEFAULT NULL,
  `job_ID` int(11) DEFAULT NULL,
  `dated` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_job_alert_queue
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_job_functional_areas`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_job_functional_areas`;
CREATE TABLE `tbl_job_functional_areas` (
  `ID` int(7) NOT NULL AUTO_INCREMENT,
  `industry_ID` int(7) DEFAULT NULL,
  `functional_area` varchar(155) DEFAULT NULL,
  `sts` enum('suspended','active') DEFAULT 'active',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0;

-- ----------------------------
-- Records of tbl_job_functional_areas
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_job_industries`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_job_industries`;
CREATE TABLE `tbl_job_industries` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `industry_name` varchar(155) DEFAULT NULL,
  `slug` varchar(155) DEFAULT NULL,
  `sts` enum('suspended','active') DEFAULT 'active',
  `top_category` enum('no','yes') DEFAULT 'no',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 PACK_KEYS=0;

-- ----------------------------
-- Records of tbl_job_industries
-- ----------------------------
INSERT INTO `tbl_job_industries` VALUES ('3', 'Accounts', 'accounts', 'active', 'yes');
INSERT INTO `tbl_job_industries` VALUES ('5', 'Advertising', 'advertising', 'active', 'yes');
INSERT INTO `tbl_job_industries` VALUES ('7', 'Banking', 'banking', 'active', 'yes');
INSERT INTO `tbl_job_industries` VALUES ('10', 'Customer Service', 'customer-service', 'active', 'yes');
INSERT INTO `tbl_job_industries` VALUES ('16', 'Graphic / Web Design', 'graphic-web-design', 'active', 'yes');
INSERT INTO `tbl_job_industries` VALUES ('18', 'HR / Industrial Relations', 'hr-industrial-relations', 'active', 'yes');
INSERT INTO `tbl_job_industries` VALUES ('22', 'IT - Software', 'it-software', 'active', 'yes');
INSERT INTO `tbl_job_industries` VALUES ('35', 'Teaching / Education', 'teaching-education', 'active', 'yes');
INSERT INTO `tbl_job_industries` VALUES ('40', 'IT - Hardware', 'it-hardware', 'active', 'yes');

-- ----------------------------
-- Table structure for `tbl_job_seekers`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_job_seekers`;
CREATE TABLE `tbl_job_seekers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(155) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `dated` datetime NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `gender` enum('female','male') DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `default_cv_id` int(11) NOT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `home_phone` varchar(25) DEFAULT NULL,
  `cnic` varchar(255) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `career_objective` text,
  `sts` enum('active','blocked','pending') NOT NULL DEFAULT 'active',
  `verification_code` varchar(155) DEFAULT NULL,
  `first_login_date` datetime DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `slug` varchar(155) DEFAULT NULL,
  `ip_address` varchar(40) DEFAULT NULL,
  `old_id` int(11) DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  `queue_email_sts` tinyint(1) DEFAULT NULL,
  `send_job_alert` enum('no','yes') DEFAULT 'yes',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=407 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_job_seekers
-- ----------------------------
INSERT INTO `tbl_job_seekers` VALUES ('8', 'Test Test', null, 'testtest123@gmail.com', 'testtest', 'here', null, '2016-03-12 01:44:43', 'Pakistan', 'Islamabad', 'male', '1990-01-01', null, 'test-test-JOBPORTAL-8.jpg', '0', '123123123', '123123123', null, '1', null, 'active', null, '2016-05-14 15:39:15', '2017-05-04 05:12:02', null, '2.50.150.100', null, null, null, 'yes');
INSERT INTO `tbl_job_seekers` VALUES ('9', 'Michel Jen', null, 'qwert@test.com', 'test123', 'n eu mattis mauris. Fusce fringilla imperdiet enim', null, '2016-03-12 01:51:56', 'United States', 'New York', 'male', '1988-04-09', null, 'no-image.jpg', '0', '123456789', '123456789', null, 'United States', null, 'active', null, null, null, null, '115.186.165.234', null, null, null, 'yes');
INSERT INTO `tbl_job_seekers` VALUES ('10', 'Jhony Man', null, 'etest@test.com', 'test123', 'Quisque ac scelerisque libero, nec blandit neque. Nullam felis nisl,', null, '2016-03-12 13:04:32', 'United States', 'Las Vegas', 'male', '1989-04-04', null, 'no-image.jpg', '0', '123456897', '', null, 'United States', null, 'active', null, null, null, null, '115.186.165.234', null, null, null, 'yes');
INSERT INTO `tbl_job_seekers` VALUES ('11', 'Kganxx', null, 'kganxx@gmail.com', 'Solutions123', 'PO Box 450125', null, '2016-03-28 14:11:09', 'United States', 'New York', 'male', '1988-05-31', null, 'no-image.jpg', '0', '152485145', '', null, 'United Arab Emirates', null, 'active', null, '2016-03-28 14:13:41', '2016-03-28 14:13:41', null, '2.49.65.117', null, null, null, 'yes');
INSERT INTO `tbl_job_seekers` VALUES ('12', 'KAcykos', null, 'kacykos1@gmail.com', 'kacper93', 'adadad', null, '2016-03-28 14:46:29', 'Pakistan', 'Abu Dhabi', 'male', '1980-11-14', null, 'no-image.jpg', '0', '23242424', '', null, 'Australia', null, 'active', null, null, null, null, '83.27.161.159', null, null, null, 'yes');
INSERT INTO `tbl_job_seekers` VALUES ('13', 'ajay', null, 'jainmca4444@gmail.com', 'red@12321', 'ETS', null, '2016-03-28 17:40:38', 'Pakistan', 'Lahore', 'male', '1980-04-09', null, 'no-image.jpg', '0', '898989899', '', null, 'Australia', null, 'active', null, null, null, null, '112.196.142.218', null, null, null, 'yes');
INSERT INTO `tbl_job_seekers` VALUES ('14', 'Peter Sturm', null, 'petersturm@bluewin.ch', 'petertester', 'Via Cantone', null, '2016-03-28 18:18:22', 'United States', 'new york', 'male', '1980-01-01', null, 'no-image.jpg', '0', '678768768768', '', null, 'United States', null, 'active', null, null, null, null, '46.127.154.34', null, null, null, 'yes');

-- ----------------------------
-- Table structure for `tbl_job_titles`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_job_titles`;
CREATE TABLE `tbl_job_titles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_job_titles
-- ----------------------------
INSERT INTO `tbl_job_titles` VALUES ('1', 'Web Designer', 'Web Designer');
INSERT INTO `tbl_job_titles` VALUES ('2', 'Web Developer', 'Web Developer');
INSERT INTO `tbl_job_titles` VALUES ('3', 'Graphic Designer', 'Graphic Designer');
INSERT INTO `tbl_job_titles` VALUES ('4', 'Project Manager', 'Project Manager');
INSERT INTO `tbl_job_titles` VALUES ('5', 'Network Administrator', 'Network Administrator');
INSERT INTO `tbl_job_titles` VALUES ('6', 'Network Engineer', 'Network Engineer');
INSERT INTO `tbl_job_titles` VALUES ('7', 'Software Engineer', 'Software Engineer');
INSERT INTO `tbl_job_titles` VALUES ('8', 'System Administrator', 'System Administrator');
INSERT INTO `tbl_job_titles` VALUES ('9', 'System Analyst', 'System Analyst');

-- ----------------------------
-- Table structure for `tbl_newsletter`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_newsletter`;
CREATE TABLE `tbl_newsletter` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `email_name` varchar(50) DEFAULT NULL,
  `from_name` varchar(60) DEFAULT NULL,
  `from_email` varchar(120) DEFAULT NULL,
  `email_subject` varchar(100) DEFAULT NULL,
  `email_body` text,
  `email_interval` int(4) DEFAULT NULL,
  `status` enum('inactive','active') DEFAULT 'active',
  `dated` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_newsletter
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_post_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_post_jobs`;
CREATE TABLE `tbl_post_jobs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `employer_ID` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `company_ID` int(11) NOT NULL,
  `industry_ID` int(11) NOT NULL,
  `pay` varchar(60) NOT NULL,
  `dated` date NOT NULL,
  `sts` enum('inactive','pending','blocked','active') NOT NULL DEFAULT 'pending',
  `is_featured` enum('no','yes') NOT NULL DEFAULT 'no',
  `country` varchar(100) NOT NULL,
  `last_date` date NOT NULL,
  `age_required` varchar(50) NOT NULL,
  `qualification` varchar(60) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `job_mode` enum('Home Based','Part Time','Full Time') NOT NULL DEFAULT 'Full Time',
  `vacancies` int(3) NOT NULL,
  `job_description` longtext NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_phone` varchar(30) NOT NULL,
  `viewer_count` int(11) NOT NULL DEFAULT '0',
  `job_slug` varchar(255) DEFAULT NULL,
  `ip_address` varchar(40) DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  `old_id` int(11) DEFAULT NULL,
  `required_skills` varchar(255) DEFAULT NULL,
  `email_queued` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`),
  FULLTEXT KEY `job_search` (`job_title`,`job_description`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_post_jobs
-- ----------------------------
INSERT INTO `tbl_post_jobs` VALUES ('1', '1', 'Web Designer', '1', '22', '81000-100000', '2016-03-11', 'active', 'yes', 'United States', '2016-07-11', '', 'BA', '3', 'New York', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex.', '', '', '', '0', 'mega-technologies-jobs-in-new york-web-designer-1', '115.186.165.234', null, null, 'css, html, js, jquery', '0');
INSERT INTO `tbl_post_jobs` VALUES ('2', '1', 'Php Developer', '1', '22', '41000-50000', '2016-03-11', 'active', 'yes', 'United States', '2016-07-11', '', 'MA', '3', 'New York', 'Full Time', '3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex.', '', '', '', '0', 'mega-technologies-jobs-in-new york-php-developer-2', '115.186.165.234', null, null, 'php, js, jquery, html', '0');
INSERT INTO `tbl_post_jobs` VALUES ('3', '2', 'Java Developer', '2', '22', '16000-20000', '2016-03-11', 'active', 'yes', 'United States', '2016-07-11', '', 'BA', '2', 'New York', 'Part Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in. Nulla at viverra metus, id porttitor nulla. In et arcu id felis eleifend auctor vitae a justo. Nullam eleifend, purus id hendrerit tempus, massa elit vehicula metus, pharetra elementum lectus elit ac felis. Sed fermentum luctus aliquet. Vestibulum pulvinar ornare ipsum, gravida condimentum nulla luctus sit amet. Sed tempor eros a tempor faucibus. Proin orci tortor, placerat sit amet elementum sit amet, ornare vel urna.', '', '', '', '0', 'it-pixels-jobs-in-new york-java-developer-3', '115.186.165.234', null, null, 'js, php, html, css', '0');
INSERT INTO `tbl_post_jobs` VALUES ('4', '3', 'Dot Net Developer', '3', '22', '61000-70000', '2016-03-11', 'active', 'yes', 'Australia', '2016-07-11', '', 'Certification', '4', 'Sydney', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'info-technologies-jobs-in-sydney-dot-net-developer-4', '115.186.165.234', null, null, '.net, mysql, php, html, css', '0');
INSERT INTO `tbl_post_jobs` VALUES ('5', '4', 'Front End Developer', '4', '22', '61000-70000', '2016-03-11', 'active', 'no', 'China', '2016-07-11', '', 'BS', 'Fresh', 'Hong Kong', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'some-it-company-jobs-in-hong kong-front-end-developer-5', '115.186.165.234', null, null, 'html, css, js, jquery, owl, photoshop', '0');
INSERT INTO `tbl_post_jobs` VALUES ('6', '5', 'Head Of Digital Marketing', '5', '5', '21000-25000', '2016-03-11', 'active', 'no', 'United Arab Emirates', '2016-07-11', '', 'MS', 'Fresh', 'Dubai', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'abc-it-tech-jobs-in-dubai-head-of-digital-marketing-6', '101.50.114.8', null, null, 'html, seo, social media', '0');
INSERT INTO `tbl_post_jobs` VALUES ('7', '6', 'Graphic Designer Adobe Indesign Expert', '6', '22', 'Trainee Stipend', '2016-03-11', 'active', 'no', 'United States', '2016-07-11', '', 'BS', '3', 'New York', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'def-it-company-jobs-in-new york-graphic-designer-adobe-indesign-expert-7', '101.50.114.8', null, null, 'photoshop, illustrator, indesign, css, html', '0');
INSERT INTO `tbl_post_jobs` VALUES ('8', '7', 'Teachers And Administration Staff', '7', '5', '41000-50000', '2016-03-11', 'active', 'no', 'United Arab Emirates', '2016-07-11', '', 'Certification', '3', 'Dubai', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'ghi-company-jobs-in-dubai-teachers-and-administration-staff-8', '101.50.114.8', null, null, 'marketing', '0');
INSERT INTO `tbl_post_jobs` VALUES ('9', '8', 'Graphic Designer', '8', '22', '36000-40000', '2016-03-11', 'active', 'no', 'United States', '2016-07-11', '', 'Diploma', '1', 'New York', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'jkl-company-jobs-in-new york-graphic-designer-9', '101.50.114.8', null, null, 'photoshop, illustrator, indesign, html, css', '0');
INSERT INTO `tbl_post_jobs` VALUES ('10', '9', 'Front End Developers', '9', '22', '61000-70000', '2016-03-11', 'active', 'no', 'United States', '2016-07-11', '', 'Certification', '3', 'New York', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'mno-company-jobs-in-new york-front-end-developers-10', '101.50.114.8', null, null, 'html, css, jquery, js', '0');
INSERT INTO `tbl_post_jobs` VALUES ('11', '10', 'Seo Specialist', '10', '5', '36000-40000', '2016-03-11', 'active', 'no', 'Pakistan', '2016-07-11', '', 'BE', '4', 'Islamabad', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'mnt-comapny-jobs-in-islamabad-seo-specialist-11', '101.50.114.8', null, null, 'seo, sem, smm, google adward', '0');
INSERT INTO `tbl_post_jobs` VALUES ('12', '11', 'Web Design / Frontend Developer', '11', '16', '51000-60000', '2016-03-11', 'active', 'no', 'United States', '2016-07-11', '', 'BA', '3', 'New York', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce venenatis arcu est. Phasellus vel dignissim tellus. Aenean fermentum fermentum convallis. Maecenas vitae ipsum sed risus viverra volutpat non ac sapien. Donec viverra massa at dolor imperdiet hendrerit. Nullam quis est vitae dui placerat posuere. Phasellus eget erat sit amet lacus semper consectetur. Sed a nisi nisi. Pellentesque hendrerit est id quam facilisis auctor a ut ante. Etiam metus arcu, sagittis vitae massa ac, faucibus tempus dolor. Sed et tempus ex. Aliquam interdum erat vel convallis tristique. Phasellus lectus eros, interdum ac sollicitudin vestibulum, scelerisque vitae ligula. Cras aliquam est id velit laoreet, et mattis massa ultrices. Ut aliquam mi nunc, et tempor neque malesuada in.', '', '', '', '0', 'mnf-comapny-jobs-in-new york-web-design-frontend-developer-12', '101.50.114.8', null, null, 'html, css, photoshop, illustrator, js', '0');
INSERT INTO `tbl_post_jobs` VALUES ('13', '12', 'Account Officer', '12', '18', '41000-50000', '2016-03-12', 'active', 'no', 'United States', '2016-07-12', '', 'MS', 'Fresh', 'New York', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a velit sed risus pulvinar faucibus. Nulla facilisi. Nullam vehicula nec ligula eu vulputate. Nunc id ultrices mi, ac tristique lectus. Suspendisse porta ultrices ultricies. Sed quis nisi vel magna maximus aliquam a vel nisl. Cras non rutrum diam. Nulla sed ipsum a felis posuere pharetra ut sit amet augue. Sed id nisl sodales, vulputate mi eu, viverra neque. Fusce fermentum, est ut accumsan accumsan, risus ante varius diam, non venenatis eros ligula fermentum leo. Etiam consectetur imperdiet volutpat. Donec ut pharetra nisi, eget pellentesque tortor. Integer eleifend dolor eu ex lobortis, ac gravida augue tristique. Proin placerat consectetur tincidunt. Nullam sollicitudin, neque eget iaculis ultricies, est justo pulvinar turpis, vulputate convallis leo orci at sapien.<br />\n<br />\nQuisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.', '', '', '', '0', 'qwe-company-jobs-in-new york-account-officer-13', '115.186.165.234', null, null, 'accounting, marketing, ms office', '0');
INSERT INTO `tbl_post_jobs` VALUES ('14', '13', 'Call Center Operator', '13', '10', '51000-60000', '2016-03-12', 'active', 'no', 'United States', '2016-07-12', '', 'Certification', '4', 'Los Angeles', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a velit sed risus pulvinar faucibus. Nulla facilisi. Nullam vehicula nec ligula eu vulputate. Nunc id ultrices mi, ac tristique lectus. Suspendisse porta ultrices ultricies. Sed quis nisi vel magna maximus aliquam a vel nisl. Cras non rutrum diam. Nulla sed ipsum a felis posuere pharetra ut sit amet augue. Sed id nisl sodales, vulputate mi eu, viverra neque. Fusce fermentum, est ut accumsan accumsan, risus ante varius diam, non venenatis eros ligula fermentum leo. Etiam consectetur imperdiet volutpat. Donec ut pharetra nisi, eget pellentesque tortor. Integer eleifend dolor eu ex lobortis, ac gravida augue tristique. Proin placerat consectetur tincidunt. Nullam sollicitudin, neque eget iaculis ultricies, est justo pulvinar turpis, vulputate convallis leo orci at sapien.<br />\n<br />\nQuisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.', '', '', '', '0', 'asd-company-jobs-in-los angeles-call-center-operator-14', '115.186.165.234', null, null, 'marketting, ms office, mysql', '0');
INSERT INTO `tbl_post_jobs` VALUES ('15', '14', 'Hr Specilest', '14', '18', '51000-60000', '2016-03-12', 'active', 'no', 'United States', '2016-07-12', '', 'MBA', '3', 'Las Vegas', 'Full Time', '1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi a velit sed risus pulvinar faucibus. Nulla facilisi. Nullam vehicula nec ligula eu vulputate. Nunc id ultrices mi, ac tristique lectus. Suspendisse porta ultrices ultricies. Sed quis nisi vel magna maximus aliquam a vel nisl. Cras non rutrum diam. Nulla sed ipsum a felis posuere pharetra ut sit amet augue. Sed id nisl sodales, vulputate mi eu, viverra neque. Fusce fermentum, est ut accumsan accumsan, risus ante varius diam, non venenatis eros ligula fermentum leo. Etiam consectetur imperdiet volutpat. Donec ut pharetra nisi, eget pellentesque tortor. Integer eleifend dolor eu ex lobortis, ac gravida augue tristique. Proin placerat consectetur tincidunt. Nullam sollicitudin, neque eget iaculis ultricies, est justo pulvinar turpis, vulputate convallis leo orci at sapien.<br />\n<br />\nQuisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.', '', '', '', '0', 'xcv-company-jobs-in-las vegas-hr-specilest-15', '115.186.165.234', null, null, 'ms office, html, css, mysql', '0');

-- ----------------------------
-- Table structure for `tbl_prohibited_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_prohibited_keywords`;
CREATE TABLE `tbl_prohibited_keywords` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(150) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_prohibited_keywords
-- ----------------------------
INSERT INTO `tbl_prohibited_keywords` VALUES ('8', 'idiot');
INSERT INTO `tbl_prohibited_keywords` VALUES ('9', 'fuck');
INSERT INTO `tbl_prohibited_keywords` VALUES ('10', 'bitch');

-- ----------------------------
-- Table structure for `tbl_qualifications`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_qualifications`;
CREATE TABLE `tbl_qualifications` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `val` varchar(25) DEFAULT NULL,
  `text` varchar(25) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_qualifications
-- ----------------------------
INSERT INTO `tbl_qualifications` VALUES ('1', 'BA', 'BA', null);
INSERT INTO `tbl_qualifications` VALUES ('2', 'BE', 'BE', null);
INSERT INTO `tbl_qualifications` VALUES ('3', 'BS', 'BS', null);
INSERT INTO `tbl_qualifications` VALUES ('4', 'CA', 'CA', null);
INSERT INTO `tbl_qualifications` VALUES ('5', 'Certification', 'Certification', null);
INSERT INTO `tbl_qualifications` VALUES ('6', 'Diploma', 'Diploma', null);
INSERT INTO `tbl_qualifications` VALUES ('7', 'HSSC', 'HSSC', null);
INSERT INTO `tbl_qualifications` VALUES ('8', 'MA', 'MA', null);
INSERT INTO `tbl_qualifications` VALUES ('9', 'MBA', 'MBA', null);
INSERT INTO `tbl_qualifications` VALUES ('10', 'MS', 'MS', null);
INSERT INTO `tbl_qualifications` VALUES ('11', 'PhD', 'PhD', null);
INSERT INTO `tbl_qualifications` VALUES ('12', 'SSC', 'SSC', null);
INSERT INTO `tbl_qualifications` VALUES ('13', 'ACMA', 'ACMA', null);
INSERT INTO `tbl_qualifications` VALUES ('14', 'MCS', 'MCS', null);
INSERT INTO `tbl_qualifications` VALUES ('15', 'Does not matter', 'Does not matter', null);
INSERT INTO `tbl_qualifications` VALUES ('16', 'B.Tech', 'B.Tech', null);

-- ----------------------------
-- Table structure for `tbl_salaries`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_salaries`;
CREATE TABLE `tbl_salaries` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `val` varchar(25) DEFAULT NULL,
  `text` varchar(25) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_salaries
-- ----------------------------
INSERT INTO `tbl_salaries` VALUES ('1', 'Trainee Stipend', 'Trainee Stipend', '0');
INSERT INTO `tbl_salaries` VALUES ('2', '5000-10000', '5-10', null);
INSERT INTO `tbl_salaries` VALUES ('3', '11000-15000', '11-15', null);
INSERT INTO `tbl_salaries` VALUES ('4', '16000-20000', '16-20', null);
INSERT INTO `tbl_salaries` VALUES ('5', '21000-25000', '21-25', null);
INSERT INTO `tbl_salaries` VALUES ('6', '26000-30000', '26-30', null);
INSERT INTO `tbl_salaries` VALUES ('7', '31000-35000', '31-35', null);
INSERT INTO `tbl_salaries` VALUES ('8', '36000-40000', '36-40', null);
INSERT INTO `tbl_salaries` VALUES ('9', '41000-50000', '41-50', null);
INSERT INTO `tbl_salaries` VALUES ('10', '51000-60000', '51-60', null);
INSERT INTO `tbl_salaries` VALUES ('11', '61000-70000', '61-70', null);
INSERT INTO `tbl_salaries` VALUES ('12', '71000-80000', '71-80', null);
INSERT INTO `tbl_salaries` VALUES ('13', '81000-100000', '81-100', null);
INSERT INTO `tbl_salaries` VALUES ('14', '100000-120000', '101-120', null);
INSERT INTO `tbl_salaries` VALUES ('15', '120000-140000', '121-140', null);
INSERT INTO `tbl_salaries` VALUES ('16', '140000-160000', '141-160', null);
INSERT INTO `tbl_salaries` VALUES ('17', '160000-200000', '161-200', null);
INSERT INTO `tbl_salaries` VALUES ('18', '200000-240000', '201-240', null);
INSERT INTO `tbl_salaries` VALUES ('19', '240000-280000', '241-280', null);
INSERT INTO `tbl_salaries` VALUES ('20', '281000-350000', '281-350', null);
INSERT INTO `tbl_salaries` VALUES ('21', '350000-450000', '351-450', null);
INSERT INTO `tbl_salaries` VALUES ('22', '450000 or above', '450 or above', null);
INSERT INTO `tbl_salaries` VALUES ('23', 'Discuss', 'Discuss', null);
INSERT INTO `tbl_salaries` VALUES ('24', 'Depends', 'Depends', null);

-- ----------------------------
-- Table structure for `tbl_scam`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_scam`;
CREATE TABLE `tbl_scam` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user_ID` int(11) DEFAULT NULL,
  `job_ID` int(11) DEFAULT NULL,
  `reason` text,
  `dated` datetime DEFAULT NULL,
  `ip_address` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_scam
-- ----------------------------
INSERT INTO `tbl_scam` VALUES ('1', '210', '13', 'gfhgjhgk jbbv', '2016-12-26 04:07:46', '112.133.246.101');
INSERT INTO `tbl_scam` VALUES ('2', '390', '8', 'rrrrrrr', '2017-04-19 10:47:13', '47.11.211.152');

-- ----------------------------
-- Table structure for `tbl_seeker_academic`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_seeker_academic`;
CREATE TABLE `tbl_seeker_academic` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seeker_ID` int(11) DEFAULT NULL,
  `degree_level` varchar(30) DEFAULT NULL,
  `degree_title` varchar(100) DEFAULT NULL,
  `major` varchar(155) DEFAULT NULL,
  `institude` varchar(155) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `completion_year` int(5) DEFAULT NULL,
  `dated` datetime DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  `old_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_seeker_academic
-- ----------------------------
INSERT INTO `tbl_seeker_academic` VALUES ('1', '10', null, 'BA', 'test', 'teste e ere', 'United States of America', 'New york', '2012', '2016-03-12 13:05:55', null, null);

-- ----------------------------
-- Table structure for `tbl_seeker_additional_info`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_seeker_additional_info`;
CREATE TABLE `tbl_seeker_additional_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seeker_ID` int(11) DEFAULT NULL,
  `languages` varchar(255) DEFAULT NULL COMMENT 'JSON data',
  `interest` varchar(155) DEFAULT NULL,
  `awards` varchar(100) DEFAULT NULL,
  `additional_qualities` varchar(155) DEFAULT NULL,
  `convicted_crime` enum('no','yes') DEFAULT 'no',
  `crime_details` text,
  `summary` text,
  `bad_habits` varchar(255) DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`ID`),
  FULLTEXT KEY `resume_search` (`summary`,`keywords`)
) ENGINE=MyISAM AUTO_INCREMENT=350 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_seeker_additional_info
-- ----------------------------
INSERT INTO `tbl_seeker_additional_info` VALUES ('1', '8', null, null, null, null, 'no', null, null, null, null, null, null);
INSERT INTO `tbl_seeker_additional_info` VALUES ('2', '9', null, null, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur massa nisl, porttitor id urna sag', null, 'no', null, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur massa nisl, porttitor id urna sagittis, mollis tristique diam. Donec augue nulla, tempus id egestas finibus, sodales a ligula. Suspendisse lacinia malesuada sapien nec pretium. Curabitur sed augue sed neque vulputate congue at pellentesque ante. Aliquam facilisis cursus eros, in laoreet risus luctus non. Aliquam tincidunt purus in urna molestie, eget aliquet lectus sollicitudin. Proin pretium tellus maximus dolor dapibus aliquet. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam sed bibendum nulla. Nulla ac magna placerat, tristique nisl a, consectetur lectus. Pellentesque quis enim semper, placerat augue vel, faucibus urna. Nullam ut odio volutpat, scelerisque mi ac, ornare libero.', null, null, null, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur massa nisl, porttitor id urna sagittis, mollis tristique diam. Donec augue nulla, tempus id egestas finibus, sodales a ligula. Suspendisse lacinia malesuada sapien nec pretium. Curabitur sed augue sed neque vulputate congue at pellentesque ante. Aliquam facilisis cursus eros, in laoreet risus luctus non. Aliquam tincidunt purus in urna molestie, eget aliquet lectus sollicitudin. Proin pretium tellus maximus dolor dapibus aliquet. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam sed bibendum nulla. Nulla ac magna placerat, tristique nisl a, consectetur lectus. Pellentesque quis enim semper, placerat augue vel, faucibus urna. Nullam ut odio volutpat, scelerisque mi ac, ornare libero.');
INSERT INTO `tbl_seeker_additional_info` VALUES ('3', '10', null, null, 'Quisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convall', null, 'no', null, 'Quisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.', null, null, null, 'Quisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.');
INSERT INTO `tbl_seeker_additional_info` VALUES ('4', '11', null, null, null, null, 'no', null, null, null, null, null, null);
INSERT INTO `tbl_seeker_additional_info` VALUES ('5', '12', null, null, null, null, 'no', null, null, null, null, null, null);
INSERT INTO `tbl_seeker_additional_info` VALUES ('6', '13', null, null, null, null, 'no', null, null, null, null, null, null);
INSERT INTO `tbl_seeker_additional_info` VALUES ('7', '14', null, null, null, null, 'no', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `tbl_seeker_applied_for_job`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_seeker_applied_for_job`;
CREATE TABLE `tbl_seeker_applied_for_job` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seeker_ID` int(11) NOT NULL,
  `job_ID` int(11) NOT NULL,
  `cover_letter` text,
  `expected_salary` varchar(20) DEFAULT NULL,
  `dated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` varchar(40) DEFAULT NULL,
  `employer_ID` int(11) DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  `old_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=221 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_seeker_applied_for_job
-- ----------------------------
INSERT INTO `tbl_seeker_applied_for_job` VALUES ('1', '9', '8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur massa nisl, porttitor id urna sagittis, mollis tristique diam. Donec augue nulla, tempus id egestas finibus, sodales a ligula. Suspendisse lacinia malesuada sapien nec pretium. Curabitur sed augue sed neque vulputate congue at pellentesque ante. Aliquam facilisis cursus eros, in laoreet risus luctus non. Aliquam tincidunt purus in urna molestie, eget aliquet lectus sollicitudin. Proin pretium tellus maximus dolor dapibus aliquet. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam sed bibendum nulla. Nulla ac magna placerat, tristique nisl a, consectetur lectus. Pellentesque quis enim semper, placerat augue vel, faucibus urna. Nullam ut odio volutpat, scelerisque mi ac, ornare libero.', 'Trainee Stipend', '2016-03-12 01:53:57', null, '7', null, null);
INSERT INTO `tbl_seeker_applied_for_job` VALUES ('2', '10', '12', 'Quisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.', '21000-25000', '2016-03-12 13:06:43', null, '11', null, null);
INSERT INTO `tbl_seeker_applied_for_job` VALUES ('3', '10', '9', 'Quisque ac scelerisque libero, nec blandit neque. Nullam felis nisl, elementum eu sapien ut, convallis interdum felis. In turpis odio, fermentum non pulvinar gravida, posuere quis magna. Ut mollis eget neque at euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer faucibus orci a pulvinar malesuada. Aenean at felis vitae lorem venenatis consequat. Nam non nunc euismod, consequat ligula non, tristique odio. Ut leo sapien, aliquet sed ultricies et, scelerisque quis nulla. Aenean non sapien maximus, convallis eros vitae, iaculis massa. In fringilla hendrerit nisi, eu pellentesque massa faucibus molestie. Etiam laoreet eros quis faucibus rutrum. Quisque eleifend purus justo, eget tempus quam interdum non.', 'Trainee Stipend', '2016-03-12 13:07:08', null, '8', null, null);
INSERT INTO `tbl_seeker_applied_for_job` VALUES ('4', '11', '9', 'Test', '5000-10000', '2016-03-28 14:14:16', null, '8', null, null);
INSERT INTO `tbl_seeker_applied_for_job` VALUES ('5', '11', '15', 'Account Officer', 'Trainee Stipend', '2016-03-28 14:14:39', null, '14', null, null);
INSERT INTO `tbl_seeker_applied_for_job` VALUES ('6', '11', '7', 'Account Officer', 'Trainee Stipend', '2016-03-28 14:15:03', null, '6', null, null);
INSERT INTO `tbl_seeker_applied_for_job` VALUES ('7', '12', '15', 'bcchchv', '5000-10000', '2016-03-28 14:47:58', null, '14', null, null);

-- ----------------------------
-- Table structure for `tbl_seeker_experience`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_seeker_experience`;
CREATE TABLE `tbl_seeker_experience` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seeker_ID` int(11) DEFAULT NULL,
  `job_title` varchar(155) DEFAULT NULL,
  `company_name` varchar(155) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `responsibilities` text,
  `dated` datetime DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  `old_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_seeker_experience
-- ----------------------------
INSERT INTO `tbl_seeker_experience` VALUES ('1', '9', 'test', 'testete', '2012-02-16', null, 'New york', 'United States of America', null, '2016-03-12 02:10:41', null, null);

-- ----------------------------
-- Table structure for `tbl_seeker_resumes`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_seeker_resumes`;
CREATE TABLE `tbl_seeker_resumes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seeker_ID` int(11) DEFAULT NULL,
  `is_uploaded_resume` enum('no','yes') DEFAULT 'no',
  `file_name` varchar(155) DEFAULT NULL,
  `resume_name` varchar(40) DEFAULT NULL,
  `dated` datetime DEFAULT NULL,
  `is_default_resume` enum('no','yes') DEFAULT 'no',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=361 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_seeker_resumes
-- ----------------------------
INSERT INTO `tbl_seeker_resumes` VALUES ('1', '8', 'yes', 'test-test-8.docx', null, '2016-03-12 01:44:43', 'no');
INSERT INTO `tbl_seeker_resumes` VALUES ('2', '9', 'yes', 'michel-jen-9.docx', null, '2016-03-12 01:51:56', 'no');
INSERT INTO `tbl_seeker_resumes` VALUES ('4', '10', 'yes', 'jhony-man-JOBPORTAL-101457770070.docx', null, '2016-03-12 13:07:50', 'no');
INSERT INTO `tbl_seeker_resumes` VALUES ('5', '11', 'yes', 'kganxx-11.docx', null, '2016-03-28 14:11:09', 'no');
INSERT INTO `tbl_seeker_resumes` VALUES ('6', '12', 'yes', 'kacykos-12.jpg', null, '2016-03-28 14:46:29', 'no');
INSERT INTO `tbl_seeker_resumes` VALUES ('7', '13', 'yes', 'ajay-13.txt', null, '2016-03-28 17:40:38', 'no');
INSERT INTO `tbl_seeker_resumes` VALUES ('8', '14', 'yes', 'peter-sturm-14.pdf', null, '2016-03-28 18:18:22', 'no');

-- ----------------------------
-- Table structure for `tbl_seeker_skills`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_seeker_skills`;
CREATE TABLE `tbl_seeker_skills` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seeker_ID` int(11) DEFAULT NULL,
  `skill_name` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  FULLTEXT KEY `js_skill_search` (`skill_name`)
) ENGINE=MyISAM AUTO_INCREMENT=981 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_seeker_skills
-- ----------------------------
INSERT INTO `tbl_seeker_skills` VALUES ('1', '8', 'php');
INSERT INTO `tbl_seeker_skills` VALUES ('2', '8', 'java');
INSERT INTO `tbl_seeker_skills` VALUES ('3', '8', 'javascript');
INSERT INTO `tbl_seeker_skills` VALUES ('4', '9', 'html');
INSERT INTO `tbl_seeker_skills` VALUES ('5', '9', 'css');
INSERT INTO `tbl_seeker_skills` VALUES ('6', '9', 'photoshop');
INSERT INTO `tbl_seeker_skills` VALUES ('7', '9', 'illustrator');
INSERT INTO `tbl_seeker_skills` VALUES ('8', '9', 'js');
INSERT INTO `tbl_seeker_skills` VALUES ('9', '9', 'jquery');
INSERT INTO `tbl_seeker_skills` VALUES ('10', '10', 'html');
INSERT INTO `tbl_seeker_skills` VALUES ('11', '10', 'css');
INSERT INTO `tbl_seeker_skills` VALUES ('12', '10', 'js');
INSERT INTO `tbl_seeker_skills` VALUES ('13', '11', 'css');
INSERT INTO `tbl_seeker_skills` VALUES ('14', '11', 'photoshop');
INSERT INTO `tbl_seeker_skills` VALUES ('15', '11', 'designer');
INSERT INTO `tbl_seeker_skills` VALUES ('16', '12', 'prawojazdy c');
INSERT INTO `tbl_seeker_skills` VALUES ('17', '12', 'dobry zawodowo');
INSERT INTO `tbl_seeker_skills` VALUES ('18', '12', 'xdddd d ddd');
INSERT INTO `tbl_seeker_skills` VALUES ('19', '14', 'nothing');
INSERT INTO `tbl_seeker_skills` VALUES ('20', '14', 'more');
INSERT INTO `tbl_seeker_skills` VALUES ('21', '14', 'nix');

-- ----------------------------
-- Table structure for `tbl_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sessions`;
CREATE TABLE `tbl_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_sessions
-- ----------------------------
INSERT INTO `tbl_sessions` VALUES ('11pm2k755m0jpjo485v5g24t34gu4k4s', '::1', '1494503562', 0x5F5F63695F6C6173745F726567656E65726174657C693A313439343530333439303B637074636F64657C733A343A224E325735223B);


-- ----------------------------
-- Table structure for `tbl_settings`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_settings`;
CREATE TABLE `tbl_settings` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `emails_per_hour` int(5) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_settings
-- ----------------------------
INSERT INTO `tbl_settings` VALUES ('1', '300');

-- ----------------------------
-- Table structure for `tbl_skills`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_skills`;
CREATE TABLE `tbl_skills` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(40) DEFAULT NULL,
  `industry_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_skills
-- ----------------------------
INSERT INTO `tbl_skills` VALUES ('1', 'html', null);
INSERT INTO `tbl_skills` VALUES ('2', 'php', null);
INSERT INTO `tbl_skills` VALUES ('3', 'js', null);
INSERT INTO `tbl_skills` VALUES ('4', '.net', null);
INSERT INTO `tbl_skills` VALUES ('6', 'jquery', null);
INSERT INTO `tbl_skills` VALUES ('7', 'java', null);
INSERT INTO `tbl_skills` VALUES ('8', 'photoshop', null);
INSERT INTO `tbl_skills` VALUES ('9', 'illustrator', null);
INSERT INTO `tbl_skills` VALUES ('10', 'Indesign', null);
INSERT INTO `tbl_skills` VALUES ('11', 'mysql', null);
INSERT INTO `tbl_skills` VALUES ('12', 'Ms Office', null);
INSERT INTO `tbl_skills` VALUES ('13', 'Marketting', null);
INSERT INTO `tbl_skills` VALUES ('14', 'informática', null);
INSERT INTO `tbl_skills` VALUES ('15', 'web', null);
INSERT INTO `tbl_skills` VALUES ('16', 'indesing', null);
INSERT INTO `tbl_skills` VALUES ('17', 'developer', null);
INSERT INTO `tbl_skills` VALUES ('19', 'ghjhtrnjh', null);
INSERT INTO `tbl_skills` VALUES ('20', 'htrkfvvf', null);
INSERT INTO `tbl_skills` VALUES ('22', 'corp mkt', null);
INSERT INTO `tbl_skills` VALUES ('23', 'direct mkt', null);
INSERT INTO `tbl_skills` VALUES ('24', 'sales skills', null);
INSERT INTO `tbl_skills` VALUES ('25', 'magento', null);
INSERT INTO `tbl_skills` VALUES ('26', 'indesign', null);
INSERT INTO `tbl_skills` VALUES ('28', 'teaching', null);
INSERT INTO `tbl_skills` VALUES ('29', 'test', null);
INSERT INTO `tbl_skills` VALUES ('30', 'tester', null);
INSERT INTO `tbl_skills` VALUES ('31', 'css', null);

-- ----------------------------
-- Table structure for `tbl_stories`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_stories`;
CREATE TABLE `tbl_stories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seeker_ID` int(11) NOT NULL,
  `is_featured` enum('yes','no') DEFAULT 'no',
  `sts` enum('active','inactive') DEFAULT 'inactive',
  `title` varchar(250) DEFAULT NULL,
  `story` text,
  `dated` datetime DEFAULT NULL,
  `ip_address` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_stories
-- ----------------------------

-- ----------------------------
--  Procedure structure for `count_active_opened_jobs`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_active_opened_jobs`;

CREATE PROCEDURE `count_active_opened_jobs`()
BEGIN
	#Routine body goes here...
	SELECT COUNT(ID) as total
	FROM `tbl_post_jobs` AS pj
	WHERE pj.sts='active' AND CURRENT_DATE < pj.last_date;
END;

-- ----------------------------
--  Procedure structure for `count_active_opened_jobs_by_company_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_active_opened_jobs_by_company_id`;

CREATE PROCEDURE `count_active_opened_jobs_by_company_id`(IN comp_id INT(11))
BEGIN
	#Routine body goes here...
	SELECT COUNT(ID) as total
	FROM `tbl_post_jobs` AS pj
	WHERE pj.company_ID=comp_id AND pj.sts='active';
END
;

-- ----------------------------
--  Procedure structure for `count_active_records_by_city_front_end`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_active_records_by_city_front_end`;

CREATE PROCEDURE `count_active_records_by_city_front_end`(IN city VARCHAR(40))
BEGIN
	#Routine body goes here...
	SELECT COUNT(pj.ID) AS total
	FROM `tbl_post_jobs` AS pj
	INNER JOIN tbl_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.city=city AND pj.sts='active' AND pc.sts = 'active';
END
;

-- ----------------------------
--  Procedure structure for `count_active_records_by_industry_front_end`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_active_records_by_industry_front_end`;

CREATE PROCEDURE `count_active_records_by_industry_front_end`(IN industry_id INT(11))
BEGIN
	SELECT COUNT(pj.ID) AS total
	FROM `tbl_post_jobs` AS pj
	INNER JOIN tbl_companies AS pc ON pj.company_ID=pc.ID
	INNER JOIN tbl_job_industries AS ji ON pj.industry_ID=ji.ID
	WHERE pj.industry_ID=industry_id AND pj.sts='active' AND pc.sts = 'active';
END
;

-- ----------------------------
--  Procedure structure for `count_all_posted_jobs_by_company_id_frontend`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_all_posted_jobs_by_company_id_frontend`;

CREATE PROCEDURE `count_all_posted_jobs_by_company_id_frontend`(IN comp_id INT(11))
BEGIN
	#Routine body goes here...
	SELECT COUNT(pj.ID) AS total
	FROM `tbl_post_jobs` AS pj
	INNER JOIN tbl_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.company_ID=comp_id AND pj.sts='active' AND pc.sts = 'active';
END
;

-- ----------------------------
--  Procedure structure for `count_applied_jobs_by_employer_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_applied_jobs_by_employer_id`;

CREATE PROCEDURE `count_applied_jobs_by_employer_id`(IN employer_id INT(11))
BEGIN
	SELECT COUNT(tbl_seeker_applied_for_job.ID) AS total
	FROM `tbl_seeker_applied_for_job`
	INNER JOIN tbl_post_jobs ON tbl_post_jobs.ID=tbl_seeker_applied_for_job.job_ID
	INNER JOIN tbl_job_seekers ON tbl_job_seekers.ID=tbl_seeker_applied_for_job.seeker_ID
	WHERE tbl_post_jobs.employer_ID=employer_id;
END
;

-- ----------------------------
--  Procedure structure for `count_applied_jobs_by_jobseeker_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_applied_jobs_by_jobseeker_id`;

CREATE PROCEDURE `count_applied_jobs_by_jobseeker_id`(IN jobseeker_id INT(11))
BEGIN
	SELECT COUNT(tbl_seeker_applied_for_job.ID) AS total
	FROM `tbl_seeker_applied_for_job`
	WHERE tbl_seeker_applied_for_job.seeker_ID=jobseeker_id;
END
;

-- ----------------------------
--  Procedure structure for `count_ft_job_search_filter_3`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_ft_job_search_filter_3`;

CREATE PROCEDURE `count_ft_job_search_filter_3`(IN param_city VARCHAR(255), param_company_slug VARCHAR(255), param_title VARCHAR(255))
BEGIN
	SELECT COUNT(pj.ID) as total
	FROM tbl_post_jobs pj
	INNER JOIN tbl_companies pc ON pc.ID = pj.company_ID 
	WHERE (pj.job_title like CONCAT("%",param,"%") OR pj.job_description like CONCAT("%",param,"%") OR pj.required_skills like CONCAT("%",param,"%"))
AND pc.company_slug = param_company_slug AND pj.city = param_city AND pj.sts = 'active' AND pc.sts = 'active';
END
;

-- ----------------------------
--  Procedure structure for `count_ft_search_job`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_ft_search_job`;

CREATE PROCEDURE `count_ft_search_job`(IN param VARCHAR(255), param2 VARCHAR(255))
BEGIN
	SELECT COUNT(pc.ID) as total
	FROM `tbl_post_jobs` pj 
	INNER JOIN tbl_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.sts = 'active' AND pc.sts = 'active'
AND (pj.job_title like CONCAT("%",param,"%") OR pj.job_description like CONCAT("%",param,"%") OR pj.required_skills like CONCAT("%",param,"%"))
AND pj.city like CONCAT("%",param2,"%");
END
;

-- ----------------------------
--  Procedure structure for `count_ft_search_resume`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_ft_search_resume`;

CREATE PROCEDURE `count_ft_search_resume`(IN param VARCHAR(255))
BEGIN
	SELECT COUNT(DISTINCT ss.ID) as total
	FROM `tbl_job_seekers` js 
	INNER JOIN tbl_seeker_skills AS ss ON js.ID=ss.seeker_ID
	WHERE js.sts = 'active' 
AND ss.skill_name like CONCAT('%',param,'%');
END
;

-- ----------------------------
--  Procedure structure for `count_search_posted_jobs`
-- ----------------------------
DROP PROCEDURE IF EXISTS `count_search_posted_jobs`;

CREATE PROCEDURE `count_search_posted_jobs`(IN where_condition VARCHAR(255))
BEGIN
	#Routine body goes here...
SET @query = "SELECT COUNT(pj.ID) as total
	FROM `tbl_post_jobs` pj 
	LEFT JOIN tbl_companies AS pc ON pj.company_ID=pc.ID 
	WHERE
";

SET @where_clause = CONCAT(where_condition);
SET @query = CONCAT(@query, @where_clause);

PREPARE stmt FROM @query;
EXECUTE stmt;

END
;

-- ----------------------------
--  Procedure structure for `ft_job_search_filter_3`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ft_job_search_filter_3`;

CREATE PROCEDURE `ft_job_search_filter_3`(IN param_city VARCHAR(255), param_company_slug VARCHAR(255), param_title VARCHAR(255), from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.job_description, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug, MATCH(pj.job_title, pj.job_description) AGAINST( param_title ) AS score
	FROM tbl_post_jobs pj
	INNER JOIN tbl_companies pc ON pc.ID = pj.company_ID 
	WHERE (pj.job_title like CONCAT("%",param_title,"%") OR pj.job_description like CONCAT("%",param_title,"%") OR pj.required_skills like CONCAT("%",param_title,"%")) 
AND pc.company_slug = param_company_slug AND pj.city = param_city AND pj.sts = 'active' AND pc.sts = 'active'

ORDER BY score DESC
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `ft_search_job`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ft_search_job`;

CREATE PROCEDURE `ft_search_job`(IN param VARCHAR(255), param2 VARCHAR(255), from_limit INT(5), to_limit INT(5))
BEGIN

	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.job_description, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug, MATCH(pj.job_title, pj.job_description) AGAINST(param) AS score
	FROM `tbl_post_jobs` pj 
	INNER JOIN tbl_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.sts = 'active' AND pc.sts = 'active' 
	AND (
			pj.job_title like CONCAT("%",param,"%") 
			OR pj.job_description like CONCAT("%",param,"%") 
			OR pj.required_skills like CONCAT("%",param,"%") 
			OR pj.pay like CONCAT("%",REPLACE(param,' ','-'),"%")
			OR pj.city like CONCAT("%",param,"%")
		)
		AND (pj.city) like CONCAT("%",param2,"%")
ORDER BY pj.ID DESC
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `ft_search_jobs_group_by_city`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ft_search_jobs_group_by_city`;

CREATE PROCEDURE `ft_search_jobs_group_by_city`(IN param VARCHAR(255))
BEGIN
	SELECT city, COUNT(city) as score
	FROM `tbl_post_jobs` pj 
	WHERE pj.sts = 'active' 
AND (
			pj.job_title like CONCAT("%",param,"%") 
			OR pj.job_description like CONCAT("%",param,"%") 
			OR pj.required_skills like CONCAT("%",param,"%") 
			OR pj.pay like CONCAT("%",REPLACE(param,' ','-'),"%")
			OR pj.city like CONCAT("%",param,"%")
		)
	GROUP BY city
	ORDER BY score DESC
	LIMIT 0,5;
END
;

-- ----------------------------
--  Procedure structure for `ft_search_jobs_group_by_company`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ft_search_jobs_group_by_company`;

CREATE PROCEDURE `ft_search_jobs_group_by_company`(IN param VARCHAR(255))
BEGIN
	SELECT  pc.company_name,pc.company_slug, COUNT(pc.company_name) as score
	FROM `tbl_post_jobs` pj 
	INNER JOIN tbl_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.sts = 'active' AND pc.sts = 'active' 
AND (
			pj.job_title like CONCAT("%",param,"%") 
			OR pj.job_description like CONCAT("%",param,"%") 
			OR pj.required_skills like CONCAT("%",param,"%") 
			OR pj.pay like CONCAT("%",REPLACE(param,' ','-'),"%")
			OR pj.city like CONCAT("%",param,"%")
		)
	GROUP BY pc.company_name
	ORDER BY score DESC
	LIMIT 0,5;
END
;

-- ----------------------------
--  Procedure structure for `ft_search_jobs_group_by_salary_range`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ft_search_jobs_group_by_salary_range`;

CREATE PROCEDURE `ft_search_jobs_group_by_salary_range`(IN param VARCHAR(255))
BEGIN
	SELECT pay, COUNT(pay) as score
	FROM `tbl_post_jobs` pj 
	WHERE pj.sts = 'active' 
AND (
			pj.job_title like CONCAT("%",param,"%") 
			OR pj.job_description like CONCAT("%",param,"%") 
			OR pj.required_skills like CONCAT("%",param,"%") 
			OR pj.pay like CONCAT("%",REPLACE(param,' ','-'),"%")
			OR pj.city like CONCAT("%",param,"%")
		)
	GROUP BY pay
	ORDER BY score DESC
	LIMIT 0,5;
END
;

-- ----------------------------
--  Procedure structure for `ft_search_jobs_group_by_title`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ft_search_jobs_group_by_title`;

CREATE PROCEDURE `ft_search_jobs_group_by_title`(IN param VARCHAR(255))
BEGIN
	SELECT job_title, COUNT(job_title) as score
	FROM `tbl_post_jobs` pj 
	WHERE pj.sts = 'active' 
AND (
			pj.job_title like CONCAT("%",param,"%") 
			OR pj.job_description like CONCAT("%",param,"%") 
			OR pj.required_skills like CONCAT("%",param,"%") 
			OR pj.pay like CONCAT("%",REPLACE(param,' ','-'),"%")
			OR pj.city like CONCAT("%",param,"%")
		)

	GROUP BY job_title
	ORDER BY score DESC
	LIMIT 0,5;
END
;

-- ----------------------------
--  Procedure structure for `ft_search_resume`
-- ----------------------------
DROP PROCEDURE IF EXISTS `ft_search_resume`;

CREATE PROCEDURE `ft_search_resume`(IN param VARCHAR(255), from_limit INT(5), to_limit INT(5))
BEGIN
  SELECT js.ID, js.first_name, js.gender, js.dob, js.city, js.photo
	FROM tbl_job_seekers AS js
	INNER JOIN tbl_seeker_skills AS ss ON js.ID=ss.seeker_ID
	WHERE js.sts = 'active' AND ss.skill_name like CONCAT("%",param,"%")
  GROUP BY ss.seeker_ID
	ORDER BY js.ID DESC
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_active_deactive_posted_job_by_company_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_active_deactive_posted_job_by_company_id`;

CREATE PROCEDURE `get_active_deactive_posted_job_by_company_id`(IN comp_id INT(11), from_limit INT(4), to_limit INT(4))
BEGIN
	#Routine body goes here...
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.job_description, pj.employer_ID, pj.last_date, pj.dated, pj.city, pj.is_featured, pj.sts, pc.company_name, pc.company_logo
	FROM `tbl_post_jobs` AS pj
	INNER JOIN tbl_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.company_ID=comp_id AND pj.sts IN ('active', 'inactive', 'pending') AND pc.sts = 'active'
	ORDER BY ID DESC
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_active_featured_job`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_active_featured_job`;

CREATE PROCEDURE `get_active_featured_job`(IN from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug 
	FROM `tbl_post_jobs` pj 
	LEFT JOIN tbl_companies AS pc ON pj.company_ID=pc.ID 
	WHERE pj.is_featured='yes' AND pj.sts='active' AND pc.sts = 'active'
	ORDER BY ID DESC 
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_active_posted_job_by_company_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_active_posted_job_by_company_id`;

CREATE PROCEDURE `get_active_posted_job_by_company_id`(IN comp_id INT(11), from_limit INT(4), to_limit INT(4))
BEGIN
	#Routine body goes here...
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.job_description, pj.employer_ID, pj.last_date, pj.dated, pj.city, pj.is_featured, pj.sts, pc.company_name, pc.company_logo
	FROM `tbl_post_jobs` AS pj
	INNER JOIN tbl_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.company_ID=comp_id AND pj.sts='active' AND pc.sts = 'active'
	ORDER BY ID DESC
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_active_posted_job_by_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_active_posted_job_by_id`;

CREATE PROCEDURE `get_active_posted_job_by_id`(IN job_id INT(11))
BEGIN
	SELECT tbl_post_jobs.*, pc.ID AS CID, emp.first_name, emp.email AS employer_email, tbl_job_industries.industry_name, pc.company_name, pc.company_email, pc.company_ceo, pc.company_description, pc.company_logo, pc.company_phone, pc.company_website, pc.company_fax,pc.no_of_offices, pc.no_of_employees, pc.established_in, pc.industry_ID AS cat_ID, pc.company_location, pc.company_slug
,emp.city as emp_city, emp.country as emp_country	
FROM `tbl_post_jobs` 
	INNER JOIN tbl_companies AS pc ON tbl_post_jobs.company_ID=pc.ID
	INNER JOIN tbl_employers AS emp ON pc.ID=emp.company_ID
	INNER JOIN tbl_job_industries ON tbl_post_jobs.industry_ID=tbl_job_industries.ID
	WHERE tbl_post_jobs.ID=job_id AND tbl_post_jobs.sts='active' AND pc.sts = 'active';
END
;

-- ----------------------------
--  Procedure structure for `get_all_active_employers`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_all_active_employers`;

CREATE PROCEDURE `get_all_active_employers`(IN from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT pc.ID AS CID, pc.company_name, pc.company_logo, pc.company_slug
	FROM `tbl_employers` emp 
	INNER JOIN tbl_companies AS pc ON emp.company_ID=pc.ID
	WHERE emp.sts = 'active'
	ORDER BY emp.ID DESC 
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_all_active_top_employers`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_all_active_top_employers`;

CREATE PROCEDURE `get_all_active_top_employers`(IN from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT pc.ID AS CID, pc.company_name, pc.company_logo, pc.company_slug
	FROM `tbl_employers` emp 
	INNER JOIN tbl_companies AS pc ON emp.company_ID=pc.ID
	WHERE emp.sts = 'active' AND emp.top_employer = 'yes'
	ORDER BY emp.ID DESC 
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_all_opened_jobs`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_all_opened_jobs`;

CREATE PROCEDURE `get_all_opened_jobs`(IN from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.job_description, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug, ji.industry_name 
	FROM `tbl_post_jobs` pj 
	INNER JOIN tbl_companies AS pc ON pj.company_ID=pc.ID
	INNER JOIN tbl_job_industries AS ji ON pj.industry_ID=ji.ID
	WHERE pj.sts = 'active' AND pc.sts='active'
	ORDER BY pj.ID DESC 
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_all_posted_jobs`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_all_posted_jobs`;

CREATE PROCEDURE `get_all_posted_jobs`(IN from_limit INT(5), to_limit INT(5))
BEGIN
	#Routine body goes here...
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.job_description, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug, pj.ip_address 
	FROM `tbl_post_jobs` pj 
	INNER JOIN tbl_companies AS pc ON pj.company_ID=pc.ID 
	ORDER BY ID DESC 
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_all_posted_jobs_by_company_id_frontend`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_all_posted_jobs_by_company_id_frontend`;

CREATE PROCEDURE `get_all_posted_jobs_by_company_id_frontend`(IN comp_id INT(11), from_limit INT(4), to_limit INT(4))
BEGIN
	#Routine body goes here...
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.job_description, pj.employer_ID, pj.last_date, pj.dated, pj.city, pj.is_featured, pj.sts, pc.company_name, pc.company_logo
	FROM `tbl_post_jobs` AS pj
	INNER JOIN tbl_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.company_ID=comp_id AND pj.sts='active' AND pc.sts = 'active'
	ORDER BY ID DESC
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_all_posted_jobs_by_status`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_all_posted_jobs_by_status`;

CREATE PROCEDURE `get_all_posted_jobs_by_status`(IN job_status VARCHAR(10), from_limit INT(5), to_limit INT(5))
BEGIN
	#Routine body goes here...
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.job_description, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug 
	FROM `tbl_post_jobs` pj 
	INNER JOIN tbl_companies AS pc ON pj.company_ID=pc.ID
	WHERE pj.sts = job_status
	ORDER BY ID DESC 
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_applied_jobs_by_employer_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_applied_jobs_by_employer_id`;

CREATE PROCEDURE `get_applied_jobs_by_employer_id`(IN employer_id INT(11), from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT tbl_seeker_applied_for_job.dated AS applied_date, tbl_post_jobs.ID, tbl_post_jobs.job_title, tbl_job_seekers.ID AS job_seeker_ID, tbl_post_jobs.job_slug, tbl_job_seekers.first_name, tbl_job_seekers.last_name, tbl_job_seekers.slug
	FROM `tbl_seeker_applied_for_job`
	INNER JOIN tbl_post_jobs ON tbl_post_jobs.ID=tbl_seeker_applied_for_job.job_ID
	INNER JOIN tbl_job_seekers ON tbl_job_seekers.ID=tbl_seeker_applied_for_job.seeker_ID
	WHERE tbl_post_jobs.employer_ID=employer_id 
	ORDER BY tbl_seeker_applied_for_job.ID DESC 
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_applied_jobs_by_jobseeker_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_applied_jobs_by_jobseeker_id`;

CREATE PROCEDURE `get_applied_jobs_by_jobseeker_id`(IN jobseeker_id INT(11), from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT tbl_seeker_applied_for_job.ID as applied_id, tbl_seeker_applied_for_job.dated AS applied_date, tbl_post_jobs.ID, tbl_post_jobs.job_title, tbl_post_jobs.job_slug, tbl_companies.company_name, tbl_companies.company_slug, tbl_companies.company_logo 
	FROM `tbl_seeker_applied_for_job`
	INNER JOIN tbl_post_jobs ON tbl_post_jobs.ID=tbl_seeker_applied_for_job.job_ID
	INNER JOIN tbl_employers ON tbl_employers.ID=tbl_post_jobs.employer_ID
	INNER JOIN tbl_companies ON tbl_companies.ID=tbl_employers.company_ID
	WHERE tbl_seeker_applied_for_job.seeker_ID=jobseeker_id 
	ORDER BY tbl_seeker_applied_for_job.ID DESC 
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_applied_jobs_by_seeker_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_applied_jobs_by_seeker_id`;

CREATE PROCEDURE `get_applied_jobs_by_seeker_id`(IN applicant_id INT(11), from_limit INT(5), to_limit INT(5))
BEGIN
	#Routine body goes here...
	SELECT aj.*, tbl_post_jobs.ID AS posted_job_id, tbl_post_jobs.employer_ID, tbl_post_jobs.job_title, tbl_post_jobs.job_slug, tbl_post_jobs.city, tbl_post_jobs.is_featured, tbl_post_jobs.sts, tbl_companies.company_name, tbl_companies.company_logo, tbl_job_seekers.first_name, tbl_job_seekers.last_name, tbl_job_seekers.photo
	FROM `tbl_seeker_applied_for_job` aj
	INNER JOIN tbl_job_seekers ON aj.seeker_ID=tbl_job_seekers.ID
	INNER JOIN tbl_post_jobs ON aj.job_ID=tbl_post_jobs.ID
	INNER JOIN tbl_companies ON tbl_post_jobs.company_ID=tbl_companies.ID
	WHERE aj.seeker_ID=applicant_id
	ORDER BY ID DESC
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_company_by_slug`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_company_by_slug`;

CREATE PROCEDURE `get_company_by_slug`(IN slug VARCHAR(70))
BEGIN
	SELECT emp.ID AS empID, pc.ID, emp.country, emp.city, pc.company_name, pc.company_description, pc.company_location, pc.company_website, pc.no_of_employees, pc.established_in, pc.company_logo, pc.company_slug
	FROM `tbl_employers` AS emp 
	INNER JOIN tbl_companies AS pc ON emp.company_ID=pc.ID
	WHERE pc.company_slug=slug AND emp.sts='active';
END
;

-- ----------------------------
--  Procedure structure for `get_experience_by_jobseeker_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_experience_by_jobseeker_id`;

CREATE PROCEDURE `get_experience_by_jobseeker_id`(IN jobseeker_id INT(11))
BEGIN
	SELECT tbl_seeker_experience.* 
	FROM `tbl_seeker_experience`
	WHERE tbl_seeker_experience.seeker_ID=jobseeker_id 
	ORDER BY tbl_seeker_experience.start_date DESC;
END
;

-- ----------------------------
--  Procedure structure for `get_featured_job`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_featured_job`;

CREATE PROCEDURE `get_featured_job`(IN from_limit INT(5), to_limit INT(5))
BEGIN
	#Routine body goes here...
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug 
	FROM `tbl_post_jobs` pj 
	LEFT JOIN tbl_companies AS pc ON pj.company_ID=pc.ID 
	WHERE pj.is_featured='yes'
	ORDER BY ID DESC 
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_latest_posted_job_by_employer_ID`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_latest_posted_job_by_employer_ID`;

CREATE PROCEDURE `get_latest_posted_job_by_employer_ID`(IN emp_id INT(11), from_limit INT(4), to_limit INT(4))
BEGIN
	#Routine body goes here...
	SELECT tbl_post_jobs.ID, tbl_post_jobs.job_title, tbl_post_jobs.job_slug, tbl_post_jobs.employer_ID, tbl_post_jobs.last_date, tbl_post_jobs.dated, tbl_post_jobs.city, tbl_post_jobs.is_featured, tbl_post_jobs.sts, tbl_job_industries.industry_name, pc.company_name, pc.company_logo
	FROM `tbl_post_jobs` 
	INNER JOIN tbl_companies AS pc ON tbl_post_jobs.company_ID=pc.ID
	INNER JOIN tbl_employers AS emp ON tbl_post_jobs.employer_ID=emp.ID
	INNER JOIN tbl_job_industries ON tbl_post_jobs.industry_ID=tbl_job_industries.ID
	WHERE tbl_post_jobs.employer_ID=emp_id
	ORDER BY ID DESC
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_opened_jobs_home_page`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_opened_jobs_home_page`;

CREATE PROCEDURE `get_opened_jobs_home_page`(IN from_limit INT(5), to_limit INT(5))
BEGIN
set @prev := 0, @rownum := '';
SELECT ID, job_title, job_slug, employer_ID, company_ID, job_description, city, dated, last_date, is_featured, sts, company_name, company_logo, company_slug, industry_name 
FROM (
  SELECT ID, job_title, job_slug, employer_ID, company_ID, job_description, city, dated, last_date, is_featured, sts, company_name, company_logo, company_slug, industry_name, 
         IF( @prev <> company_ID, 
             @rownum := 1, 
             @rownum := @rownum+1 
         ) AS rank, 
         @prev := company_ID, 
         @rownum  
			FROM (
					SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.job_description, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, company_name, company_logo, company_slug, industry_name 
					FROM tbl_post_jobs AS pj
					INNER JOIN tbl_companies AS pc ON pj.company_ID=pc.ID
					INNER JOIN tbl_job_industries AS ji ON pj.industry_ID=ji.ID	
					WHERE pj.sts = 'active' AND pc.sts='active'
					ORDER BY company_ID DESC, ID DESC
			) pj
) jobs_ranked 
WHERE jobs_ranked.rank <= 2
ORDER BY jobs_ranked.ID DESC 
LIMIT from_limit,to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_posted_job_by_company_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_posted_job_by_company_id`;

CREATE PROCEDURE `get_posted_job_by_company_id`(IN comp_id INT(11), from_limit INT(4), to_limit INT(4))
BEGIN
	#Routine body goes here...
	SELECT tbl_post_jobs.ID, tbl_post_jobs.job_title, tbl_post_jobs.job_slug, tbl_post_jobs.employer_ID, tbl_post_jobs.last_date, tbl_post_jobs.dated, tbl_post_jobs.city, tbl_post_jobs.job_description, tbl_post_jobs.is_featured, tbl_post_jobs.sts, tbl_job_industries.industry_name, pc.company_name, pc.company_logo
	FROM `tbl_post_jobs` 
	INNER JOIN tbl_companies AS pc ON tbl_post_jobs.company_ID=pc.ID
	INNER JOIN tbl_job_industries ON tbl_post_jobs.industry_ID=tbl_job_industries.ID
	WHERE tbl_post_jobs.company_ID=comp_id
	ORDER BY ID DESC
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_posted_job_by_employer_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_posted_job_by_employer_id`;

CREATE PROCEDURE `get_posted_job_by_employer_id`(IN emp_id INT(11), from_limit INT(4), to_limit INT(4))
BEGIN
	#Routine body goes here...
	SELECT tbl_post_jobs.ID, tbl_post_jobs.job_title, tbl_post_jobs.job_slug, tbl_post_jobs.job_description, tbl_post_jobs.contact_person, tbl_post_jobs.contact_email, tbl_post_jobs.contact_phone, tbl_post_jobs.employer_ID, tbl_post_jobs.last_date, tbl_post_jobs.dated, tbl_post_jobs.city, tbl_post_jobs.is_featured, tbl_post_jobs.sts, tbl_job_industries.industry_name, pc.company_name, pc.company_logo
	FROM `tbl_post_jobs` 
	INNER JOIN tbl_companies AS pc ON tbl_post_jobs.company_ID=pc.ID
	INNER JOIN tbl_employers AS emp ON tbl_post_jobs.employer_ID=emp.ID
	INNER JOIN tbl_job_industries ON tbl_post_jobs.industry_ID=tbl_job_industries.ID
	WHERE tbl_post_jobs.employer_ID=emp_id
	ORDER BY ID DESC
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `get_posted_job_by_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_posted_job_by_id`;

CREATE PROCEDURE `get_posted_job_by_id`(IN job_id INT(11))
BEGIN
	#Routine body goes here...
	SELECT tbl_post_jobs.*, pc.ID AS CID, tbl_job_industries.industry_name, pc.company_name, pc.company_email, pc.company_ceo, pc.company_description, pc.company_logo, pc.company_phone, pc.company_website, pc.company_fax,pc.no_of_offices, pc.no_of_employees, pc.established_in, pc.industry_ID AS cat_ID, pc.company_location, pc.company_slug
,em.city as emp_city, em.country as emp_country
	FROM `tbl_post_jobs` 
	INNER JOIN tbl_companies AS pc ON tbl_post_jobs.company_ID=pc.ID
  INNER JOIN tbl_employers AS em ON pc.ID=em.company_ID
	INNER JOIN tbl_job_industries ON tbl_post_jobs.industry_ID=tbl_job_industries.ID
	WHERE tbl_post_jobs.ID=job_id;
END
;

-- ----------------------------
--  Procedure structure for `get_posted_job_by_id_employer_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_posted_job_by_id_employer_id`;

CREATE PROCEDURE `get_posted_job_by_id_employer_id`(IN job_id INT(11), emp_id INT(11))
BEGIN
	SELECT tbl_post_jobs.*, pc.ID AS CID, tbl_job_industries.industry_name, pc.company_name, pc.company_email, pc.company_ceo, pc.company_description, pc.company_logo, pc.company_phone, pc.company_website, pc.company_fax,pc.no_of_offices, pc.no_of_employees, pc.established_in, pc.industry_ID AS cat_ID, pc.company_location, pc.company_slug
	FROM `tbl_post_jobs` 
	INNER JOIN tbl_companies AS pc ON tbl_post_jobs.company_ID=pc.ID
	INNER JOIN tbl_employers AS emp ON tbl_post_jobs.employer_ID=emp.ID
	INNER JOIN tbl_job_industries ON tbl_post_jobs.industry_ID=tbl_job_industries.ID
	WHERE tbl_post_jobs.ID=job_id AND tbl_post_jobs.employer_ID=emp_id;
END
;

-- ----------------------------
--  Procedure structure for `get_qualification_by_jobseeker_id`
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_qualification_by_jobseeker_id`;

CREATE PROCEDURE `get_qualification_by_jobseeker_id`(IN jobseeker_id INT(11))
BEGIN
	SELECT tbl_seeker_academic.* 
	FROM `tbl_seeker_academic`
	WHERE tbl_seeker_academic.seeker_ID=jobseeker_id 
	ORDER BY tbl_seeker_academic.completion_year DESC;
END
;

-- ----------------------------
--  Procedure structure for `job_search_by_city`
-- ----------------------------
DROP PROCEDURE IF EXISTS `job_search_by_city`;

CREATE PROCEDURE `job_search_by_city`(IN param_city VARCHAR(255), from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.job_description, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug
	FROM tbl_post_jobs pj
	INNER JOIN tbl_companies pc ON pc.ID = pj.company_ID 
	WHERE pj.city = param_city AND pj.sts = 'active' AND pc.sts = 'active'
	ORDER BY pj.dated DESC
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `job_search_by_industry`
-- ----------------------------
DROP PROCEDURE IF EXISTS `job_search_by_industry`;

CREATE PROCEDURE `job_search_by_industry`(IN param VARCHAR(255), from_limit INT(5), to_limit INT(5))
BEGIN
	SELECT pj.ID, pj.job_title, pj.job_slug, pj.employer_ID, pj.company_ID, pj.job_description, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo, pc.company_slug
	FROM tbl_post_jobs pj
	INNER JOIN tbl_companies pc ON pc.ID = pj.company_ID 
	WHERE pj.industry_ID = param AND pj.sts = 'active' AND pc.sts = 'active'
	ORDER BY pj.dated DESC
	LIMIT from_limit, to_limit;
END
;

-- ----------------------------
--  Procedure structure for `search_posted_jobs`
-- ----------------------------
DROP PROCEDURE IF EXISTS `search_posted_jobs`;

CREATE PROCEDURE `search_posted_jobs`(IN where_condition VARCHAR(255), from_limit INT(11), to_limit INT(11))
BEGIN
	#Routine body goes here...
SET @query = "SELECT pj.ID, pj.job_title,  pj.job_slug, pj.employer_ID, pj.company_ID, pj.city, pj.dated, pj.last_date, pj.is_featured, pj.sts, pc.company_name, pc.company_logo 
	FROM `tbl_post_jobs` pj 
	LEFT JOIN tbl_companies AS pc ON pj.company_ID=pc.ID 
	WHERE
";

SET @where_clause = CONCAT(where_condition);
SET @after_where_clause = CONCAT("ORDER BY ID DESC LIMIT ",from_limit,", ",to_limit,"");
SET @full_search_clause = CONCAT(@where_clause, @after_where_clause);
SET @query = CONCAT(@query, @full_search_clause);

PREPARE stmt FROM @query;
EXECUTE stmt;

END
;

SET FOREIGN_KEY_CHECKS = 1;
