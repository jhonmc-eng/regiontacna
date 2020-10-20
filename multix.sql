/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : multix

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 19/10/2020 22:35:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_category
-- ----------------------------
DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category`  (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_category
-- ----------------------------
INSERT INTO `tbl_category` VALUES (1, 'Economía', 'category-banner-1.jpg', 'Economía', '', '');
INSERT INTO `tbl_category` VALUES (2, 'Seguro', 'category-banner-2.jpg', 'Seguro', '', '');
INSERT INTO `tbl_category` VALUES (3, 'Residencial', 'category-banner-3.jpg', 'Residencial', '', '');
INSERT INTO `tbl_category` VALUES (4, 'Comercial', 'category-banner-4.jpg', 'Comercial', '', '');

-- ----------------------------
-- Table structure for tbl_client
-- ----------------------------
DROP TABLE IF EXISTS `tbl_client`;
CREATE TABLE `tbl_client`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_client
-- ----------------------------
INSERT INTO `tbl_client` VALUES (1, 'Client 1', '', 'client-1.png');
INSERT INTO `tbl_client` VALUES (2, 'Client 2', '', 'client-2.png');
INSERT INTO `tbl_client` VALUES (3, 'Client 3', '', 'client-3.png');
INSERT INTO `tbl_client` VALUES (4, 'Client 4', '', 'client-4.png');
INSERT INTO `tbl_client` VALUES (5, 'Client 5', '', 'client-5.png');
INSERT INTO `tbl_client` VALUES (6, 'Client 6', '', 'client-6.png');
INSERT INTO `tbl_client` VALUES (7, 'Client 7', '', 'client-7.png');

-- ----------------------------
-- Table structure for tbl_comment
-- ----------------------------
DROP TABLE IF EXISTS `tbl_comment`;
CREATE TABLE `tbl_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code_body` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code_main` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_comment
-- ----------------------------
INSERT INTO `tbl_comment` VALUES (1, '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<div class=\"fb-comments\" data-href=\"https://developers.facebook.com/docs/plugins/comments#configurator\" data-numposts=\"5\"></div>');

-- ----------------------------
-- Table structure for tbl_event
-- ----------------------------
DROP TABLE IF EXISTS `tbl_event`;
CREATE TABLE `tbl_event`  (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `event_content` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `event_content_short` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `event_start_date` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `event_end_date` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `event_location` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `event_map` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`event_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_event
-- ----------------------------
INSERT INTO `tbl_event` VALUES (1, 'Lorem ipsum dolor sit amet vel cu habemus', '<p>Eu semper imperdiet duo, eos ut exerci sanctus impedit, sit ne legere maiorum gubergren. Putent accusamus te qui, vero forensibus ei ius. His nostrud singulis forensibus te, in possim gubergren his. Habemus officiis qui te, vix te meliore rationibus. No augue zril reformidans est. Pro ex unum vidit, no est noster discere neglegentur, et dictas tamquam his.</p><p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.<br></p><p>Dicit alterum est no, ea per tale possit, cum ad solum malorum offendit. Ea nam meis novum qualisque, pro alia delicata gubergren ad. Ea error eloquentiam vel, quo iusto iudico in. No mazim alterum dignissim nec. Te postea iisque aperiri eum. Eius inciderint at mel.<br></p>', 'Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut id illum tantas.', '2019-02-22', '2029-07-12', 'Street #233, New York, USA', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3313.3833161665298!2d-118.03745848530627!3d33.85401093559897!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dd2c6c97f8f3ed%3A0x47b1bde165dcc056!2sOak+Dr%2C+La+Palma%2C+CA+90623%2C+USA!5e0!3m2!1sen!2sbd!4v1544238752504\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'event-1.jpg', 'event-banner-1.jpg', 'Lorem ipsum dolor sit amet vel cu habemus', '', '');
INSERT INTO `tbl_event` VALUES (2, 'Ei qui possim abhor reant ei eam iudico disput', '<p>Eu semper imperdiet duo, eos ut exerci sanctus impedit, sit ne legere maiorum gubergren. Putent accusamus te qui, vero forensibus ei ius. His nostrud singulis forensibus te, in possim gubergren his. Habemus officiis qui te, vix te meliore rationibus. No augue zril reformidans est. Pro ex unum vidit, no est noster discere neglegentur, et dictas tamquam his.</p><p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.<br></p><p>Dicit alterum est no, ea per tale possit, cum ad solum malorum offendit. Ea nam meis novum qualisque, pro alia delicata gubergren ad. Ea error eloquentiam vel, quo iusto iudico in. No mazim alterum dignissim nec. Te postea iisque aperiri eum. Eius inciderint at mel.</p>', 'Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut id illum tantas.', '2029-02-06', '2029-07-12', 'Street #233, New York, USA', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3313.3833161665298!2d-118.03745848530627!3d33.85401093559897!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dd2c6c97f8f3ed%3A0x47b1bde165dcc056!2sOak+Dr%2C+La+Palma%2C+CA+90623%2C+USA!5e0!3m2!1sen!2sbd!4v1544238752504\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'event-2.jpg', 'event-banner-2.jpg', 'Ei qui possim abhor reant ei eam iudico disput', '', '');
INSERT INTO `tbl_event` VALUES (3, 'Est ei unum illum mucius, nemore alterum', '<p>Eu semper imperdiet duo, eos ut exerci sanctus impedit, sit ne legere maiorum gubergren. Putent accusamus te qui, vero forensibus ei ius. His nostrud singulis forensibus te, in possim gubergren his. Habemus officiis qui te, vix te meliore rationibus. No augue zril reformidans est. Pro ex unum vidit, no est noster discere neglegentur, et dictas tamquam his.</p><p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.<br></p><p>Dicit alterum est no, ea per tale possit, cum ad solum malorum offendit. Ea nam meis novum qualisque, pro alia delicata gubergren ad. Ea error eloquentiam vel, quo iusto iudico in. No mazim alterum dignissim nec. Te postea iisque aperiri eum. Eius inciderint at mel.</p>', 'Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut id illum tantas.', '2019-02-01', '2019-02-07', 'Street #233, New York, USA', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3313.3833161665298!2d-118.03745848530627!3d33.85401093559897!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dd2c6c97f8f3ed%3A0x47b1bde165dcc056!2sOak+Dr%2C+La+Palma%2C+CA+90623%2C+USA!5e0!3m2!1sen!2sbd!4v1544238752504\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'event-3.jpg', 'event-banner-3.jpg', 'Est ei unum illum mucius, nemore alterum', '', '');

-- ----------------------------
-- Table structure for tbl_faq
-- ----------------------------
DROP TABLE IF EXISTS `tbl_faq`;
CREATE TABLE `tbl_faq`  (
  `faq_id` int(11) NOT NULL AUTO_INCREMENT,
  `faq_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `faq_content` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `show_on_home` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`faq_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_faq
-- ----------------------------
INSERT INTO `tbl_faq` VALUES (1, '¿Cuándo debo hacer la reserva?', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>', 'Yes');
INSERT INTO `tbl_faq` VALUES (2, '¿Como puedo pagar?', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>', 'Yes');
INSERT INTO `tbl_faq` VALUES (3, '¿Puedo traer equipaje extra?', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>', 'Yes');
INSERT INTO `tbl_faq` VALUES (4, '¿Cuántas piezas de equipaje se me permiten?', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>', 'Yes');
INSERT INTO `tbl_faq` VALUES (5, '¿Qué tipo de documentos se requieren para viajar?', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>', 'No');

-- ----------------------------
-- Table structure for tbl_feature
-- ----------------------------
DROP TABLE IF EXISTS `tbl_feature`;
CREATE TABLE `tbl_feature`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_feature
-- ----------------------------
INSERT INTO `tbl_feature` VALUES (1, 'POLÍTICA ECONÓMICA', 'Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an in dolore.', 'fa fa-globe');
INSERT INTO `tbl_feature` VALUES (2, 'MODELO DE NEGOCIO', 'Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno.', 'fa fa-file-text');
INSERT INTO `tbl_feature` VALUES (3, 'PROTECCIÓN DE SEGURIDAD', 'Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no.', 'fa fa-clock-o');
INSERT INTO `tbl_feature` VALUES (4, 'COMUNICACIÓN AGRADABLE', 'Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit.', 'fa fa-shield');
INSERT INTO `tbl_feature` VALUES (5, 'ESTRATEGIA DIGITAL', 'Vis constituto complectitur an, modo falli eirmod ea has. Ex vis indoctum scriptorem appellantur.', 'fa fa-commenting');
INSERT INTO `tbl_feature` VALUES (6, 'CONSULTORÍA INTERNA', 'Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam.', 'fa fa-bullhorn');

-- ----------------------------
-- Table structure for tbl_file
-- ----------------------------
DROP TABLE IF EXISTS `tbl_file`;
CREATE TABLE `tbl_file`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_file
-- ----------------------------
INSERT INTO `tbl_file` VALUES (2, 'Item 2', 'file-2.pdf');
INSERT INTO `tbl_file` VALUES (3, 'Item 3', 'file-3.docx');
INSERT INTO `tbl_file` VALUES (4, 'Item 4', 'file-4.xlsx');
INSERT INTO `tbl_file` VALUES (5, 'Item 5', 'file-5.csv');
INSERT INTO `tbl_file` VALUES (6, 'word', 'file-6.docx');

-- ----------------------------
-- Table structure for tbl_lang
-- ----------------------------
DROP TABLE IF EXISTS `tbl_lang`;
CREATE TABLE `tbl_lang`  (
  `lang_id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_short_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_default` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_lang
-- ----------------------------
INSERT INTO `tbl_lang` VALUES (5, 'English', 'EN', '');
INSERT INTO `tbl_lang` VALUES (6, 'Bengali', 'BN', '');
INSERT INTO `tbl_lang` VALUES (7, 'French', 'FR', '');
INSERT INTO `tbl_lang` VALUES (8, 'Español', 'ES', 'Yes');

-- ----------------------------
-- Table structure for tbl_lang_detail
-- ----------------------------
DROP TABLE IF EXISTS `tbl_lang_detail`;
CREATE TABLE `tbl_lang_detail`  (
  `lang_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_string` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_string_value` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang_id` int(11) NOT NULL,
  PRIMARY KEY (`lang_detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 251 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_lang_detail
-- ----------------------------
INSERT INTO `tbl_lang_detail` VALUES (3, 'HOME', 'Home', 5);
INSERT INTO `tbl_lang_detail` VALUES (4, 'ABOUT', 'About', 5);
INSERT INTO `tbl_lang_detail` VALUES (5, 'TEAM', 'Team', 5);
INSERT INTO `tbl_lang_detail` VALUES (6, 'PAGE', 'Page', 5);
INSERT INTO `tbl_lang_detail` VALUES (7, 'EVENT', 'Event', 5);
INSERT INTO `tbl_lang_detail` VALUES (8, 'PHOTO_GALLERY', 'Photo Gallery', 5);
INSERT INTO `tbl_lang_detail` VALUES (9, 'TESTIMONIAL', 'Testimonial', 5);
INSERT INTO `tbl_lang_detail` VALUES (10, 'FAQ', 'FAQ', 5);
INSERT INTO `tbl_lang_detail` VALUES (11, 'PRICING_TABLE', 'Pricing Table', 5);
INSERT INTO `tbl_lang_detail` VALUES (12, 'SERVICE', 'Service', 5);
INSERT INTO `tbl_lang_detail` VALUES (13, 'PORTFOLIO', 'Portfolio', 5);
INSERT INTO `tbl_lang_detail` VALUES (14, 'NEWS', 'News', 5);
INSERT INTO `tbl_lang_detail` VALUES (15, 'CONTACT', 'Contact', 5);
INSERT INTO `tbl_lang_detail` VALUES (16, 'SEARCH_FOR', 'Search for ...', 5);
INSERT INTO `tbl_lang_detail` VALUES (17, 'READ_MORE', 'Read More', 5);
INSERT INTO `tbl_lang_detail` VALUES (18, 'SUBMIT', 'Submit', 5);
INSERT INTO `tbl_lang_detail` VALUES (19, 'FIRST_NAME', 'First Name', 5);
INSERT INTO `tbl_lang_detail` VALUES (20, 'LAST_NAME', 'Last Name', 5);
INSERT INTO `tbl_lang_detail` VALUES (21, 'PHONE_NUMBER', 'Phone Number', 5);
INSERT INTO `tbl_lang_detail` VALUES (22, 'EMAIL_ADDRESS', 'Email Address', 5);
INSERT INTO `tbl_lang_detail` VALUES (23, 'ADDRESS', 'Address', 5);
INSERT INTO `tbl_lang_detail` VALUES (24, 'MESSAGE', 'Message', 5);
INSERT INTO `tbl_lang_detail` VALUES (25, 'START_DATE', 'Start Date', 5);
INSERT INTO `tbl_lang_detail` VALUES (26, 'END_DATE', 'End Date', 5);
INSERT INTO `tbl_lang_detail` VALUES (27, 'EVENT_START_DATE', 'Event Start Date', 5);
INSERT INTO `tbl_lang_detail` VALUES (28, 'EVENT_END_DATE', 'Event End Date', 5);
INSERT INTO `tbl_lang_detail` VALUES (29, 'EVENT_LOCATION_MAP', 'Event Location Map', 5);
INSERT INTO `tbl_lang_detail` VALUES (30, 'SHARE_THIS_EVENT', 'Share This Event', 5);
INSERT INTO `tbl_lang_detail` VALUES (31, 'SHARE_THIS_NEWS', 'Share This News', 5);
INSERT INTO `tbl_lang_detail` VALUES (32, 'COMMENT', 'Comment', 5);
INSERT INTO `tbl_lang_detail` VALUES (33, 'NAME', 'Name', 5);
INSERT INTO `tbl_lang_detail` VALUES (34, 'ALL', 'All', 5);
INSERT INTO `tbl_lang_detail` VALUES (35, 'PROJECT_OVERVIEW', 'Project Overview', 5);
INSERT INTO `tbl_lang_detail` VALUES (36, 'CATEGORY', 'Category', 5);
INSERT INTO `tbl_lang_detail` VALUES (37, 'CLIENT_NAME', 'Client Name', 5);
INSERT INTO `tbl_lang_detail` VALUES (38, 'CLIENT_COMPANY_NAME', 'Client Company Name', 5);
INSERT INTO `tbl_lang_detail` VALUES (39, 'PROJECT_START_DATE', 'Project Start Date', 5);
INSERT INTO `tbl_lang_detail` VALUES (40, 'PROJECT_END_DATE', 'Project End Date', 5);
INSERT INTO `tbl_lang_detail` VALUES (41, 'CLIENT_COMMENT', 'Client Comment', 5);
INSERT INTO `tbl_lang_detail` VALUES (42, 'NEWS_DATE', 'News Date', 5);
INSERT INTO `tbl_lang_detail` VALUES (43, 'RECENT_PORTFOLIO', 'Recent Portfolio', 5);
INSERT INTO `tbl_lang_detail` VALUES (44, 'RECENT_PORTFOLIO_SUBTITLE', 'See all our works that we do for our clients', 5);
INSERT INTO `tbl_lang_detail` VALUES (45, 'CONTACT_FORM', 'Contact Form', 5);
INSERT INTO `tbl_lang_detail` VALUES (46, 'SEND_MESSAGE', 'Send Message', 5);
INSERT INTO `tbl_lang_detail` VALUES (47, 'SUBJECT', 'Subject', 5);
INSERT INTO `tbl_lang_detail` VALUES (48, 'NO_RESULT_FOUND', 'No Result is Found', 5);
INSERT INTO `tbl_lang_detail` VALUES (49, 'TERMS_AND_CONDITIONS', 'Terms and Conditions', 5);
INSERT INTO `tbl_lang_detail` VALUES (50, 'PRIVACY_POLICY', 'Privacy Policy', 5);
INSERT INTO `tbl_lang_detail` VALUES (51, 'SUBSCRIPTION_SUCCESS', 'Subscription is Successful', 5);
INSERT INTO `tbl_lang_detail` VALUES (52, 'FOOTER_1_HEADING', 'Newsletter', 5);
INSERT INTO `tbl_lang_detail` VALUES (53, 'FOOTER_2_HEADING', 'Recent Post', 5);
INSERT INTO `tbl_lang_detail` VALUES (54, 'FOOTER_3_HEADING', 'Project', 5);
INSERT INTO `tbl_lang_detail` VALUES (55, 'FOOTER_4_HEADING', 'Address', 5);
INSERT INTO `tbl_lang_detail` VALUES (56, 'FOOTER_CTA_BUTTON', 'Contact Us', 5);
INSERT INTO `tbl_lang_detail` VALUES (57, 'SIDEBAR_NEWS_HEADING_1', 'Categories', 5);
INSERT INTO `tbl_lang_detail` VALUES (58, 'SIDEBAR_NEWS_HEADING_2', 'Recent Posts', 5);
INSERT INTO `tbl_lang_detail` VALUES (59, 'SIDEBAR_EVENT_HEADING_1', 'Upcoming Events', 5);
INSERT INTO `tbl_lang_detail` VALUES (60, 'SIDEBAR_EVENT_HEADING_2', 'Past Events', 5);
INSERT INTO `tbl_lang_detail` VALUES (61, 'SIDEBAR_SERVICE_HEADING_1', 'Our Services', 5);
INSERT INTO `tbl_lang_detail` VALUES (62, 'SIDEBAR_SERVICE_HEADING_2', 'Quick Contact', 5);
INSERT INTO `tbl_lang_detail` VALUES (63, 'SIDEBAR_PORTFOLIO_HEADING_1', 'Project Detail', 5);
INSERT INTO `tbl_lang_detail` VALUES (64, 'SIDEBAR_PORTFOLIO_HEADING_2', 'Quick Contact', 5);
INSERT INTO `tbl_lang_detail` VALUES (65, 'HOME', 'প্রধান পাতা', 6);
INSERT INTO `tbl_lang_detail` VALUES (66, 'ABOUT', 'সম্পর্কে', 6);
INSERT INTO `tbl_lang_detail` VALUES (67, 'TEAM', 'দল', 6);
INSERT INTO `tbl_lang_detail` VALUES (68, 'PAGE', 'পেজ', 6);
INSERT INTO `tbl_lang_detail` VALUES (69, 'EVENT', 'ইভেন্ট', 6);
INSERT INTO `tbl_lang_detail` VALUES (70, 'PHOTO_GALLERY', 'ছবি গ্যালারি', 6);
INSERT INTO `tbl_lang_detail` VALUES (71, 'TESTIMONIAL', 'মন্তব্য', 6);
INSERT INTO `tbl_lang_detail` VALUES (72, 'FAQ', 'প্রশ্ন ও উত্তর', 6);
INSERT INTO `tbl_lang_detail` VALUES (73, 'PRICING_TABLE', 'মূল্য তালিকা', 6);
INSERT INTO `tbl_lang_detail` VALUES (74, 'SERVICE', 'সেবা', 6);
INSERT INTO `tbl_lang_detail` VALUES (75, 'PORTFOLIO', 'পোর্টফোলিও', 6);
INSERT INTO `tbl_lang_detail` VALUES (76, 'NEWS', 'সংবাদ', 6);
INSERT INTO `tbl_lang_detail` VALUES (77, 'CONTACT', 'যোগাযোগ', 6);
INSERT INTO `tbl_lang_detail` VALUES (78, 'SEARCH_FOR', 'খুজুন...', 6);
INSERT INTO `tbl_lang_detail` VALUES (79, 'READ_MORE', 'বিস্তারিত পড়ুন', 6);
INSERT INTO `tbl_lang_detail` VALUES (80, 'SUBMIT', 'সাবমিট করুন', 6);
INSERT INTO `tbl_lang_detail` VALUES (81, 'FIRST_NAME', 'প্রথম নাম', 6);
INSERT INTO `tbl_lang_detail` VALUES (82, 'LAST_NAME', 'শেষ নাম', 6);
INSERT INTO `tbl_lang_detail` VALUES (83, 'PHONE_NUMBER', 'ফোন নম্বর', 6);
INSERT INTO `tbl_lang_detail` VALUES (84, 'EMAIL_ADDRESS', 'ইমেইল ঠিকানা', 6);
INSERT INTO `tbl_lang_detail` VALUES (85, 'ADDRESS', 'ঠিকানা', 6);
INSERT INTO `tbl_lang_detail` VALUES (86, 'MESSAGE', 'মেসেজ', 6);
INSERT INTO `tbl_lang_detail` VALUES (87, 'START_DATE', 'শুরু তারিখ', 6);
INSERT INTO `tbl_lang_detail` VALUES (88, 'END_DATE', 'শেষ তারিখ', 6);
INSERT INTO `tbl_lang_detail` VALUES (89, 'EVENT_START_DATE', 'ইভেন্ট শুরুর তারিখ', 6);
INSERT INTO `tbl_lang_detail` VALUES (90, 'EVENT_END_DATE', 'ইভেন্ট শেষের তারিখ', 6);
INSERT INTO `tbl_lang_detail` VALUES (91, 'EVENT_LOCATION_MAP', 'ইভেন্ট স্থানের ম্যাপ', 6);
INSERT INTO `tbl_lang_detail` VALUES (92, 'SHARE_THIS_EVENT', 'ইভেন্টটি শেয়ার করুন', 6);
INSERT INTO `tbl_lang_detail` VALUES (93, 'SHARE_THIS_NEWS', 'সংবাদটি শেয়ার করুন', 6);
INSERT INTO `tbl_lang_detail` VALUES (94, 'COMMENT', 'মন্তব্য', 6);
INSERT INTO `tbl_lang_detail` VALUES (95, 'NAME', 'নাম', 6);
INSERT INTO `tbl_lang_detail` VALUES (96, 'ALL', 'সকল', 6);
INSERT INTO `tbl_lang_detail` VALUES (97, 'PROJECT_OVERVIEW', 'প্রজেক্ট এক নজরে', 6);
INSERT INTO `tbl_lang_detail` VALUES (98, 'CATEGORY', 'ক্যাটাগরি', 6);
INSERT INTO `tbl_lang_detail` VALUES (99, 'CLIENT_NAME', 'ক্লায়েন্টের নাম', 6);
INSERT INTO `tbl_lang_detail` VALUES (100, 'CLIENT_COMPANY_NAME', 'ক্লায়েন্টের কোম্পানির নাম', 6);
INSERT INTO `tbl_lang_detail` VALUES (101, 'PROJECT_START_DATE', 'প্রজেক্ট শুরুর তারিখ', 6);
INSERT INTO `tbl_lang_detail` VALUES (102, 'PROJECT_END_DATE', 'প্রজেক্ট শেষের তারিখ', 6);
INSERT INTO `tbl_lang_detail` VALUES (103, 'CLIENT_COMMENT', 'ক্লায়েন্টের মন্তব্য', 6);
INSERT INTO `tbl_lang_detail` VALUES (104, 'NEWS_DATE', 'নিউজ প্রকাশের তারিখ', 6);
INSERT INTO `tbl_lang_detail` VALUES (105, 'RECENT_PORTFOLIO', 'সাম্প্রতিক পোর্টফোলিও', 6);
INSERT INTO `tbl_lang_detail` VALUES (106, 'RECENT_PORTFOLIO_SUBTITLE', 'আমরা ক্লায়েন্টের জন্য যে কাজ করেছি তা দেখুন', 6);
INSERT INTO `tbl_lang_detail` VALUES (107, 'CONTACT_FORM', 'যোগাযোগের ফর্ম', 6);
INSERT INTO `tbl_lang_detail` VALUES (108, 'SEND_MESSAGE', 'মেসেজ পাঠান', 6);
INSERT INTO `tbl_lang_detail` VALUES (109, 'SUBJECT', 'বিষয়', 6);
INSERT INTO `tbl_lang_detail` VALUES (110, 'NO_RESULT_FOUND', 'কোন ফলাফল পাওয়া যায়নি', 6);
INSERT INTO `tbl_lang_detail` VALUES (111, 'TERMS_AND_CONDITIONS', 'টার্মসমূহ', 6);
INSERT INTO `tbl_lang_detail` VALUES (112, 'PRIVACY_POLICY', 'পলিসিসমূহ', 6);
INSERT INTO `tbl_lang_detail` VALUES (113, 'SUBSCRIPTION_SUCCESS', 'সাবস্ক্রিপশন সঠিকভাবে হয়েছে', 6);
INSERT INTO `tbl_lang_detail` VALUES (114, 'FOOTER_1_HEADING', 'নিউজলেটার', 6);
INSERT INTO `tbl_lang_detail` VALUES (115, 'FOOTER_2_HEADING', 'সাম্প্রতিক পোষ্টসমূহ', 6);
INSERT INTO `tbl_lang_detail` VALUES (116, 'FOOTER_3_HEADING', 'প্রজেক্ট', 6);
INSERT INTO `tbl_lang_detail` VALUES (117, 'FOOTER_4_HEADING', 'ঠিকানা', 6);
INSERT INTO `tbl_lang_detail` VALUES (118, 'FOOTER_CTA_BUTTON', 'যোগাযোগ করুন', 6);
INSERT INTO `tbl_lang_detail` VALUES (119, 'SIDEBAR_NEWS_HEADING_1', 'ক্যাটাগরিসমূহ', 6);
INSERT INTO `tbl_lang_detail` VALUES (120, 'SIDEBAR_NEWS_HEADING_2', 'সাম্প্রতিক পোষ্টসমূহ', 6);
INSERT INTO `tbl_lang_detail` VALUES (121, 'SIDEBAR_EVENT_HEADING_1', 'আসছে ইভেন্টসমূহ', 6);
INSERT INTO `tbl_lang_detail` VALUES (122, 'SIDEBAR_EVENT_HEADING_2', 'পুরানো ইভেন্টসমূহ', 6);
INSERT INTO `tbl_lang_detail` VALUES (123, 'SIDEBAR_SERVICE_HEADING_1', 'আমাদের সেবাসমূহ', 6);
INSERT INTO `tbl_lang_detail` VALUES (124, 'SIDEBAR_SERVICE_HEADING_2', 'দ্রুত যোগাযোগ করুন', 6);
INSERT INTO `tbl_lang_detail` VALUES (125, 'SIDEBAR_PORTFOLIO_HEADING_1', 'প্রজেক্টের বিস্তারিত', 6);
INSERT INTO `tbl_lang_detail` VALUES (126, 'SIDEBAR_PORTFOLIO_HEADING_2', 'দ্রুত যোগাযোগ করুন', 6);
INSERT INTO `tbl_lang_detail` VALUES (127, 'HOME', 'Accueil', 7);
INSERT INTO `tbl_lang_detail` VALUES (128, 'ABOUT', 'À propos', 7);
INSERT INTO `tbl_lang_detail` VALUES (129, 'TEAM', 'Équipe', 7);
INSERT INTO `tbl_lang_detail` VALUES (130, 'PAGE', 'Page', 7);
INSERT INTO `tbl_lang_detail` VALUES (131, 'EVENT', 'Un événement', 7);
INSERT INTO `tbl_lang_detail` VALUES (132, 'PHOTO_GALLERY', 'Galerie de photos', 7);
INSERT INTO `tbl_lang_detail` VALUES (133, 'TESTIMONIAL', 'Témoignage', 7);
INSERT INTO `tbl_lang_detail` VALUES (134, 'FAQ', 'FAQ', 7);
INSERT INTO `tbl_lang_detail` VALUES (135, 'PRICING_TABLE', 'Tableau de tarification', 7);
INSERT INTO `tbl_lang_detail` VALUES (136, 'SERVICE', 'Un service', 7);
INSERT INTO `tbl_lang_detail` VALUES (137, 'PORTFOLIO', 'Portefeuille', 7);
INSERT INTO `tbl_lang_detail` VALUES (138, 'NEWS', 'Nouvelles', 7);
INSERT INTO `tbl_lang_detail` VALUES (139, 'CONTACT', 'Contact', 7);
INSERT INTO `tbl_lang_detail` VALUES (140, 'SEARCH_FOR', 'Rechercher...', 7);
INSERT INTO `tbl_lang_detail` VALUES (141, 'READ_MORE', 'Lire la suite', 7);
INSERT INTO `tbl_lang_detail` VALUES (142, 'SUBMIT', 'Soumettre', 7);
INSERT INTO `tbl_lang_detail` VALUES (143, 'FIRST_NAME', 'Prénom', 7);
INSERT INTO `tbl_lang_detail` VALUES (144, 'LAST_NAME', 'Nom de famille', 7);
INSERT INTO `tbl_lang_detail` VALUES (145, 'PHONE_NUMBER', 'Numéro de téléphone', 7);
INSERT INTO `tbl_lang_detail` VALUES (146, 'EMAIL_ADDRESS', 'Adresse e-mail', 7);
INSERT INTO `tbl_lang_detail` VALUES (147, 'ADDRESS', 'Adresse', 7);
INSERT INTO `tbl_lang_detail` VALUES (148, 'MESSAGE', 'Message', 7);
INSERT INTO `tbl_lang_detail` VALUES (149, 'START_DATE', 'Date de début', 7);
INSERT INTO `tbl_lang_detail` VALUES (150, 'END_DATE', 'Date de fin', 7);
INSERT INTO `tbl_lang_detail` VALUES (151, 'EVENT_START_DATE', 'Date de début de l\'événement', 7);
INSERT INTO `tbl_lang_detail` VALUES (152, 'EVENT_END_DATE', 'Date de fin de l\'événement', 7);
INSERT INTO `tbl_lang_detail` VALUES (153, 'EVENT_LOCATION_MAP', 'Carte de localisation de l\'événement', 7);
INSERT INTO `tbl_lang_detail` VALUES (154, 'SHARE_THIS_EVENT', 'Partager cet événement', 7);
INSERT INTO `tbl_lang_detail` VALUES (155, 'SHARE_THIS_NEWS', 'Partager cette nouvelle', 7);
INSERT INTO `tbl_lang_detail` VALUES (156, 'COMMENT', 'Commentaire', 7);
INSERT INTO `tbl_lang_detail` VALUES (157, 'NAME', 'Nom', 7);
INSERT INTO `tbl_lang_detail` VALUES (158, 'ALL', 'Tout', 7);
INSERT INTO `tbl_lang_detail` VALUES (159, 'PROJECT_OVERVIEW', 'Aperçu du projet', 7);
INSERT INTO `tbl_lang_detail` VALUES (160, 'CATEGORY', 'Catégorie', 7);
INSERT INTO `tbl_lang_detail` VALUES (161, 'CLIENT_NAME', 'Nom du client', 7);
INSERT INTO `tbl_lang_detail` VALUES (162, 'CLIENT_COMPANY_NAME', 'Nom de l\'entreprise cliente', 7);
INSERT INTO `tbl_lang_detail` VALUES (163, 'PROJECT_START_DATE', 'Date de début du projet', 7);
INSERT INTO `tbl_lang_detail` VALUES (164, 'PROJECT_END_DATE', 'Date de fin du projet', 7);
INSERT INTO `tbl_lang_detail` VALUES (165, 'CLIENT_COMMENT', 'Commentaire du client', 7);
INSERT INTO `tbl_lang_detail` VALUES (166, 'NEWS_DATE', 'Date de nouvelles', 7);
INSERT INTO `tbl_lang_detail` VALUES (167, 'RECENT_PORTFOLIO', 'Portefeuille récent', 7);
INSERT INTO `tbl_lang_detail` VALUES (168, 'RECENT_PORTFOLIO_SUBTITLE', 'Voir tous nos travaux que nous faisons pour nos clients', 7);
INSERT INTO `tbl_lang_detail` VALUES (169, 'CONTACT_FORM', 'Formulaire de contact', 7);
INSERT INTO `tbl_lang_detail` VALUES (170, 'SEND_MESSAGE', 'Envoyer le message', 7);
INSERT INTO `tbl_lang_detail` VALUES (171, 'SUBJECT', 'Matière', 7);
INSERT INTO `tbl_lang_detail` VALUES (172, 'NO_RESULT_FOUND', 'Aucun résultat trouvé', 7);
INSERT INTO `tbl_lang_detail` VALUES (173, 'TERMS_AND_CONDITIONS', 'Termes et conditions', 7);
INSERT INTO `tbl_lang_detail` VALUES (174, 'PRIVACY_POLICY', 'Politique de confidentialité', 7);
INSERT INTO `tbl_lang_detail` VALUES (175, 'SUBSCRIPTION_SUCCESS', 'L\'abonnement est réussi', 7);
INSERT INTO `tbl_lang_detail` VALUES (176, 'FOOTER_1_HEADING', 'Bulletin', 7);
INSERT INTO `tbl_lang_detail` VALUES (177, 'FOOTER_2_HEADING', 'Post récent', 7);
INSERT INTO `tbl_lang_detail` VALUES (178, 'FOOTER_3_HEADING', 'Projet', 7);
INSERT INTO `tbl_lang_detail` VALUES (179, 'FOOTER_4_HEADING', 'Adresse', 7);
INSERT INTO `tbl_lang_detail` VALUES (180, 'FOOTER_CTA_BUTTON', 'Contactez-nous', 7);
INSERT INTO `tbl_lang_detail` VALUES (181, 'SIDEBAR_NEWS_HEADING_1', 'Les catégories', 7);
INSERT INTO `tbl_lang_detail` VALUES (182, 'SIDEBAR_NEWS_HEADING_2', 'Messages récents', 7);
INSERT INTO `tbl_lang_detail` VALUES (183, 'SIDEBAR_EVENT_HEADING_1', 'Évènements à venir', 7);
INSERT INTO `tbl_lang_detail` VALUES (184, 'SIDEBAR_EVENT_HEADING_2', 'Événements passés', 7);
INSERT INTO `tbl_lang_detail` VALUES (185, 'SIDEBAR_SERVICE_HEADING_1', 'Nos services', 7);
INSERT INTO `tbl_lang_detail` VALUES (186, 'SIDEBAR_SERVICE_HEADING_2', 'Contact rapide', 7);
INSERT INTO `tbl_lang_detail` VALUES (187, 'SIDEBAR_PORTFOLIO_HEADING_1', 'Détail du projet', 7);
INSERT INTO `tbl_lang_detail` VALUES (188, 'SIDEBAR_PORTFOLIO_HEADING_2', 'Contact rapide', 7);
INSERT INTO `tbl_lang_detail` VALUES (189, 'HOME', 'Inicio', 8);
INSERT INTO `tbl_lang_detail` VALUES (190, 'ABOUT', 'Acerca de ', 8);
INSERT INTO `tbl_lang_detail` VALUES (191, 'TEAM', 'Equipo', 8);
INSERT INTO `tbl_lang_detail` VALUES (192, 'PAGE', 'Página', 8);
INSERT INTO `tbl_lang_detail` VALUES (193, 'EVENT', 'Evento', 8);
INSERT INTO `tbl_lang_detail` VALUES (194, 'PHOTO_GALLERY', 'Galeria de Fotos', 8);
INSERT INTO `tbl_lang_detail` VALUES (195, 'TESTIMONIAL', 'Testimonios', 8);
INSERT INTO `tbl_lang_detail` VALUES (196, 'FAQ', 'Preguntas Frecuentes', 8);
INSERT INTO `tbl_lang_detail` VALUES (197, 'PRICING_TABLE', 'Tabla de Precios', 8);
INSERT INTO `tbl_lang_detail` VALUES (198, 'SERVICE', 'Servicios', 8);
INSERT INTO `tbl_lang_detail` VALUES (199, 'PORTFOLIO', 'Portafolio', 8);
INSERT INTO `tbl_lang_detail` VALUES (200, 'NEWS', 'Noticias', 8);
INSERT INTO `tbl_lang_detail` VALUES (201, 'CONTACT', 'Contacto', 8);
INSERT INTO `tbl_lang_detail` VALUES (202, 'SEARCH_FOR', 'Buscar por', 8);
INSERT INTO `tbl_lang_detail` VALUES (203, 'READ_MORE', 'Leer Más', 8);
INSERT INTO `tbl_lang_detail` VALUES (204, 'SUBMIT', 'Enviar', 8);
INSERT INTO `tbl_lang_detail` VALUES (205, 'FIRST_NAME', 'Nombre', 8);
INSERT INTO `tbl_lang_detail` VALUES (206, 'LAST_NAME', 'Apellido', 8);
INSERT INTO `tbl_lang_detail` VALUES (207, 'PHONE_NUMBER', 'Celular', 8);
INSERT INTO `tbl_lang_detail` VALUES (208, 'EMAIL_ADDRESS', 'Correo Electrónico', 8);
INSERT INTO `tbl_lang_detail` VALUES (209, 'ADDRESS', 'Dirección', 8);
INSERT INTO `tbl_lang_detail` VALUES (210, 'MESSAGE', 'Mensaje', 8);
INSERT INTO `tbl_lang_detail` VALUES (211, 'START_DATE', 'Fecha de Inicio', 8);
INSERT INTO `tbl_lang_detail` VALUES (212, 'END_DATE', 'Fecha de Fin', 8);
INSERT INTO `tbl_lang_detail` VALUES (213, 'EVENT_START_DATE', 'Inicio del Evento', 8);
INSERT INTO `tbl_lang_detail` VALUES (214, 'EVENT_END_DATE', 'Fin del Evento', 8);
INSERT INTO `tbl_lang_detail` VALUES (215, 'EVENT_LOCATION_MAP', 'Dirección del Evento en el Mapa', 8);
INSERT INTO `tbl_lang_detail` VALUES (216, 'SHARE_THIS_EVENT', 'Compartir Evento', 8);
INSERT INTO `tbl_lang_detail` VALUES (217, 'SHARE_THIS_NEWS', 'Compartir Noticias', 8);
INSERT INTO `tbl_lang_detail` VALUES (218, 'COMMENT', 'Comentar', 8);
INSERT INTO `tbl_lang_detail` VALUES (219, 'NAME', 'Nombre', 8);
INSERT INTO `tbl_lang_detail` VALUES (220, 'ALL', 'Todo', 8);
INSERT INTO `tbl_lang_detail` VALUES (221, 'PROJECT_OVERVIEW', 'Descripción del Proyecto', 8);
INSERT INTO `tbl_lang_detail` VALUES (222, 'CATEGORY', 'Categoria', 8);
INSERT INTO `tbl_lang_detail` VALUES (223, 'CLIENT_NAME', 'Nombre del Cliente', 8);
INSERT INTO `tbl_lang_detail` VALUES (224, 'CLIENT_COMPANY_NAME', 'Nombre de la Empresa del Cliente', 8);
INSERT INTO `tbl_lang_detail` VALUES (225, 'PROJECT_START_DATE', 'Fecha de Inicio del Proyecto', 8);
INSERT INTO `tbl_lang_detail` VALUES (226, 'PROJECT_END_DATE', 'Fecha de Fin del proyecto', 8);
INSERT INTO `tbl_lang_detail` VALUES (227, 'CLIENT_COMMENT', 'Comentarios del cliente', 8);
INSERT INTO `tbl_lang_detail` VALUES (228, 'NEWS_DATE', 'Fecha de Noticias', 8);
INSERT INTO `tbl_lang_detail` VALUES (229, 'RECENT_PORTFOLIO', 'Portafolio Reciente', 8);
INSERT INTO `tbl_lang_detail` VALUES (230, 'RECENT_PORTFOLIO_SUBTITLE', 'Ver todos nuestros trabajos que hacemos para nuestros clientes', 8);
INSERT INTO `tbl_lang_detail` VALUES (231, 'CONTACT_FORM', 'Formulario de Contacto', 8);
INSERT INTO `tbl_lang_detail` VALUES (232, 'SEND_MESSAGE', 'Enviar Mensaje', 8);
INSERT INTO `tbl_lang_detail` VALUES (233, 'SUBJECT', 'Sujeto', 8);
INSERT INTO `tbl_lang_detail` VALUES (234, 'NO_RESULT_FOUND', 'No se encontró ningún resultado', 8);
INSERT INTO `tbl_lang_detail` VALUES (235, 'TERMS_AND_CONDITIONS', 'Términos y Condiciones', 8);
INSERT INTO `tbl_lang_detail` VALUES (236, 'PRIVACY_POLICY', 'Politicas de privacidad', 8);
INSERT INTO `tbl_lang_detail` VALUES (237, 'SUBSCRIPTION_SUCCESS', 'La suscripción es exitosa', 8);
INSERT INTO `tbl_lang_detail` VALUES (238, 'FOOTER_1_HEADING', 'Boletin informativo', 8);
INSERT INTO `tbl_lang_detail` VALUES (239, 'FOOTER_2_HEADING', 'Publicación reciente', 8);
INSERT INTO `tbl_lang_detail` VALUES (240, 'FOOTER_3_HEADING', 'Proyecto', 8);
INSERT INTO `tbl_lang_detail` VALUES (241, 'FOOTER_4_HEADING', 'Dirección', 8);
INSERT INTO `tbl_lang_detail` VALUES (242, 'FOOTER_CTA_BUTTON', 'Contáctanos', 8);
INSERT INTO `tbl_lang_detail` VALUES (243, 'SIDEBAR_NEWS_HEADING_1', 'Categorias', 8);
INSERT INTO `tbl_lang_detail` VALUES (244, 'SIDEBAR_NEWS_HEADING_2', 'Publicaciones Recientes', 8);
INSERT INTO `tbl_lang_detail` VALUES (245, 'SIDEBAR_EVENT_HEADING_1', 'Próximos Eventos', 8);
INSERT INTO `tbl_lang_detail` VALUES (246, 'SIDEBAR_EVENT_HEADING_2', 'Eventos pasados', 8);
INSERT INTO `tbl_lang_detail` VALUES (247, 'SIDEBAR_SERVICE_HEADING_1', 'Nuestros Servicios', 8);
INSERT INTO `tbl_lang_detail` VALUES (248, 'SIDEBAR_SERVICE_HEADING_2', 'Contacto rápido', 8);
INSERT INTO `tbl_lang_detail` VALUES (249, 'SIDEBAR_PORTFOLIO_HEADING_1', 'Detalle del proyecto', 8);
INSERT INTO `tbl_lang_detail` VALUES (250, 'SIDEBAR_PORTFOLIO_HEADING_2', 'Contacto rápido', 8);

-- ----------------------------
-- Table structure for tbl_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `menu_status` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES (1, 'Inicio', 'Show');
INSERT INTO `tbl_menu` VALUES (2, 'Acerca de', 'Show');
INSERT INTO `tbl_menu` VALUES (3, 'Equipo', 'Show');
INSERT INTO `tbl_menu` VALUES (4, 'Eventos', 'Show');
INSERT INTO `tbl_menu` VALUES (5, 'Galeria de Fotos', 'Show');
INSERT INTO `tbl_menu` VALUES (6, 'Testimonios', 'Show');
INSERT INTO `tbl_menu` VALUES (7, 'Preguntas Frecuentes', 'Show');
INSERT INTO `tbl_menu` VALUES (8, 'Tabla de Precios', 'Show');
INSERT INTO `tbl_menu` VALUES (9, 'Servicios', 'Show');
INSERT INTO `tbl_menu` VALUES (10, 'Portafolio', 'Show');
INSERT INTO `tbl_menu` VALUES (11, 'Noticias', 'Show');
INSERT INTO `tbl_menu` VALUES (12, 'Contáctanos', 'Show');

-- ----------------------------
-- Table structure for tbl_news
-- ----------------------------
DROP TABLE IF EXISTS `tbl_news`;
CREATE TABLE `tbl_news`  (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `news_content` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `news_content_short` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `news_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `comment` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`news_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_news
-- ----------------------------
INSERT INTO `tbl_news` VALUES (1, 'Vis nostro nominati electram ex aeterno voluptatum', '<p>Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut. Id illum tantas gloriatur duo. Vis ne prima cetero, erant iusto democritum at vim. Ne integre vivendum delicata eum, ei erat senserit qui.</p><p>Eu semper imperdiet duo, eos ut exerci sanctus impedit, sit ne legere maiorum gubergren. Putent accusamus te qui, vero forensibus ei ius. His nostrud singulis forensibus te, in possim gubergren his. Habemus officiis qui te, vix te meliore rationibus. No augue zril reformidans est. Pro ex unum vidit, no est noster discere neglegentur, et dictas tamquam his.<br></p><p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.<br></p><p>Dicit alterum est no, ea per tale possit, cum ad solum malorum offendit. Ea nam meis novum qualisque, pro alia delicata gubergren ad. Ea error eloquentiam vel, quo iusto iudico in. No mazim alterum dignissim nec. Te postea iisque aperiri eum. Eius inciderint at mel.<br></p>', 'Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut id illum tantas.', '2018-12-03', 'news-1.jpg', 'news-banner-1.jpg', 2, 'On', 'Vis nostro nominati electram ex aeterno voluptatum', '', '');
INSERT INTO `tbl_news` VALUES (2, 'An usu natum aperiri accommodare hendrerit', '<p>Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut. Id illum tantas gloriatur duo. Vis ne prima cetero, erant iusto democritum at vim. Ne integre vivendum delicata eum, ei erat senserit qui.</p><p>Eu semper imperdiet duo, eos ut exerci sanctus impedit, sit ne legere maiorum gubergren. Putent accusamus te qui, vero forensibus ei ius. His nostrud singulis forensibus te, in possim gubergren his. Habemus officiis qui te, vix te meliore rationibus. No augue zril reformidans est. Pro ex unum vidit, no est noster discere neglegentur, et dictas tamquam his.<br></p><p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.<br></p><p>Dicit alterum est no, ea per tale possit, cum ad solum malorum offendit. Ea nam meis novum qualisque, pro alia delicata gubergren ad. Ea error eloquentiam vel, quo iusto iudico in. No mazim alterum dignissim nec. Te postea iisque aperiri eum. Eius inciderint at mel.<br></p>', 'Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut id illum tantas.', '2018-12-03', 'news-2.jpg', 'news-banner-2.jpg', 1, 'On', 'An usu natum aperiri accommodare hendrerit', '', '');
INSERT INTO `tbl_news` VALUES (3, 'Est ei unum illum mucius, nemore alterum', '<p>Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut. Id illum tantas gloriatur duo. Vis ne prima cetero, erant iusto democritum at vim. Ne integre vivendum delicata eum, ei erat senserit qui.</p><p>Eu semper imperdiet duo, eos ut exerci sanctus impedit, sit ne legere maiorum gubergren. Putent accusamus te qui, vero forensibus ei ius. His nostrud singulis forensibus te, in possim gubergren his. Habemus officiis qui te, vix te meliore rationibus. No augue zril reformidans est. Pro ex unum vidit, no est noster discere neglegentur, et dictas tamquam his.<br></p><p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.<br></p><p>Dicit alterum est no, ea per tale possit, cum ad solum malorum offendit. Ea nam meis novum qualisque, pro alia delicata gubergren ad. Ea error eloquentiam vel, quo iusto iudico in. No mazim alterum dignissim nec. Te postea iisque aperiri eum. Eius inciderint at mel.<br></p>', 'Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut id illum tantas.', '2018-12-03', 'news-3.jpg', 'news-banner-3.jpg', 3, 'On', 'Est ei unum illum mucius, nemore alterum', '', '');
INSERT INTO `tbl_news` VALUES (4, 'Ei qui possim abhorreant ei eam iudico disputando', '<p>Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut. Id illum tantas gloriatur duo. Vis ne prima cetero, erant iusto democritum at vim. Ne integre vivendum delicata eum, ei erat senserit qui.</p><p>Eu semper imperdiet duo, eos ut exerci sanctus impedit, sit ne legere maiorum gubergren. Putent accusamus te qui, vero forensibus ei ius. His nostrud singulis forensibus te, in possim gubergren his. Habemus officiis qui te, vix te meliore rationibus. No augue zril reformidans est. Pro ex unum vidit, no est noster discere neglegentur, et dictas tamquam his.<br></p><p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.<br></p><p>Dicit alterum est no, ea per tale possit, cum ad solum malorum offendit. Ea nam meis novum qualisque, pro alia delicata gubergren ad. Ea error eloquentiam vel, quo iusto iudico in. No mazim alterum dignissim nec. Te postea iisque aperiri eum. Eius inciderint at mel.<br></p>', 'Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut id illum tantas.', '2018-12-03', 'news-4.jpg', 'news-banner-4.jpg', 4, 'On', 'Ei qui possim abhorreant ei eam iudico disputando', '', '');
INSERT INTO `tbl_news` VALUES (5, 'Lorem ipsum dolor sit amet vel cu habemus', '<p>Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut. Id illum tantas gloriatur duo. Vis ne prima cetero, erant iusto democritum at vim. Ne integre vivendum delicata eum, ei erat senserit qui.</p><p>Eu semper imperdiet duo, eos ut exerci sanctus impedit, sit ne legere maiorum gubergren. Putent accusamus te qui, vero forensibus ei ius. His nostrud singulis forensibus te, in possim gubergren his. Habemus officiis qui te, vix te meliore rationibus. No augue zril reformidans est. Pro ex unum vidit, no est noster discere neglegentur, et dictas tamquam his.<br></p><p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.<br></p><p>Dicit alterum est no, ea per tale possit, cum ad solum malorum offendit. Ea nam meis novum qualisque, pro alia delicata gubergren ad. Ea error eloquentiam vel, quo iusto iudico in. No mazim alterum dignissim nec. Te postea iisque aperiri eum. Eius inciderint at mel.</p>', 'Ex usu vero quaerendum, mei no falli denique. Purto consul voluptua eos cu, ludus option sensibus ne quo, nec tantas quodsi id. Posse nostro liberavisse eum ut id illum tantas.', '2019-02-19', 'news-5.jpg', 'news-banner-5.jpg', 2, 'On', 'Lorem ipsum dolor sit amet vel cu habemus', '', '');

-- ----------------------------
-- Table structure for tbl_page_about
-- ----------------------------
DROP TABLE IF EXISTS `tbl_page_about`;
CREATE TABLE `tbl_page_about`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `about_content` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mt_about` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mk_about` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `md_about` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_page_about
-- ----------------------------
INSERT INTO `tbl_page_about` VALUES (1, 'Sobre nosotros', '<h3>Nuestra misi&oacute;n</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Nuestra visi&oacute;n</h3>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n\r\n<p><a href=\"http://localhost/z/public/uploads/file-2.pdf\">Download this</a></p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 11px; top: 219.406px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>\r\n', 'CMS de sitio web multipropósito con Codeigniter', '', '');

-- ----------------------------
-- Table structure for tbl_page_contact
-- ----------------------------
DROP TABLE IF EXISTS `tbl_page_contact`;
CREATE TABLE `tbl_page_contact`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contact_address` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contact_phone` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contact_map` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mt_contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mk_contact` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `md_contact` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_page_contact
-- ----------------------------
INSERT INTO `tbl_page_contact` VALUES (1, 'Contácto', '3153 Foley Street\r\nMiami, FL 33176', 'sales@yourwebsite.com\r\nsupport@yourwebsite.com', 'Office 1: 954-648-1802\r\nOffice 2: 963-612-1782', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3313.3833161665298!2d-118.03745848530627!3d33.85401093559897!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80dd2c6c97f8f3ed%3A0x47b1bde165dcc056!2sOak+Dr%2C+La+Palma%2C+CA+90623%2C+USA!5e0!3m2!1sen!2sbd!4v1544238752504\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'CMS de sitio web multipropósito con Codeigniter', '', '');

-- ----------------------------
-- Table structure for tbl_page_event
-- ----------------------------
DROP TABLE IF EXISTS `tbl_page_event`;
CREATE TABLE `tbl_page_event`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mt_event` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mk_event` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `md_event` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_page_event
-- ----------------------------
INSERT INTO `tbl_page_event` VALUES (1, 'Eventos', 'CMS de sitio web multipropósito con Codeigniter', '', '');

-- ----------------------------
-- Table structure for tbl_page_faq
-- ----------------------------
DROP TABLE IF EXISTS `tbl_page_faq`;
CREATE TABLE `tbl_page_faq`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faq_heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mt_faq` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mk_faq` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `md_faq` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_page_faq
-- ----------------------------
INSERT INTO `tbl_page_faq` VALUES (1, 'Preguntas Frecuentes', 'CMS de sitio web multipropósito con Codeigniter', '', '');

-- ----------------------------
-- Table structure for tbl_page_home
-- ----------------------------
DROP TABLE IF EXISTS `tbl_page_home`;
CREATE TABLE `tbl_page_home`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_welcome_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_welcome_subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_welcome_text` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_welcome_video` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_welcome_pbar1_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_welcome_pbar1_value` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_welcome_pbar2_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_welcome_pbar2_value` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_welcome_pbar3_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_welcome_pbar3_value` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_welcome_pbar4_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_welcome_pbar4_value` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_welcome_pbar5_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_welcome_pbar5_value` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_welcome_status` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_welcome_video_bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_why_choose_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_why_choose_subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_why_choose_status` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_feature_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_feature_subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_feature_status` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_service_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_service_subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_service_status` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `counter_1_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `counter_1_value` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `counter_1_icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `counter_2_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `counter_2_value` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `counter_2_icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `counter_3_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `counter_3_value` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `counter_3_icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `counter_4_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `counter_4_value` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `counter_4_icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `counter_photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `counter_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_portfolio_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_portfolio_subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_portfolio_status` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_booking_form_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_booking_faq_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_booking_status` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_booking_photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_team_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_team_subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_team_status` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_ptable_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_ptable_subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_ptable_status` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_testimonial_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_testimonial_subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_testimonial_photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_testimonial_status` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_blog_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_blog_subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_blog_item` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_blog_status` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_cta_text` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_cta_button_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `home_cta_button_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_page_home
-- ----------------------------
INSERT INTO `tbl_page_home` VALUES (1, 'DE21 -CMS de sitio web multipropósito con Codeigniter', '', '', 'UN VERDADERO LÍDER PUEDE', 'AYUDARLE EN LOS NEGOCIOS', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne.</p>\r\n', '<iframe src=\"https://player.vimeo.com/video/43982091\" style=\"position:absolute;width:100%;height:100%;left:0\" width=\"480\" height=\"360\" allowfullscreen></iframe>', 'Administración de Empresas', '95', 'Gestión financiera', '70', 'Gestión de proyectos', '88', '', '', '', '', 'Show', 'home_welcome_video_bg.jpg', 'POR QUÉ ELEGIRNOS', 'Tenemos unos criterios especiales que te ayudarán', 'Show', 'CARACTERÍSTICAS ESPECIALES', 'Ofrecemos algunas funciones increíbles que te ayudarán', 'Show', 'NUESTROS SERVICIOS', 'Siempre estamos aquí para brindarle servicios increíbles.', 'Show', 'Proyectos', '150', 'fa fa-user', 'Reseñas', '300', 'fa fa-bar-chart', 'Clientes', '250', 'fa fa-users', 'Premios', '120', 'fa fa-trophy', 'counter.jpg', 'Show', 'PORTAFOLIO DE TRABAJO', 'Vea lo que hacemos por nuestros valiosos clientes', 'Show', 'FORMULARIO DE RESERVA', 'PREGUNTAS FRECUENTES', 'Show', 'home_booking_photo.jpg', 'NUESTRO EQUIPO', 'Todos los miembros de nuestro equipo capacitado se enumeran a continuación', 'Show', 'TABLA DE PRECIOS', 'Los precios de nuestros servicios de consultoría detallados se enumeran a continuación', 'Show', 'Nuestros clientes', 'Vea lo que nuestros valiosos clientes dicen sobre nosotros', 'home_testimonial_photo.jpg', 'Show', 'ÚLTIMAS NOTICIAS', 'Todas nuestras últimas noticias se enumeran a continuación', '10', 'Show', 'Do you want to get our quality service for your business?', 'Contact Us', '#');

-- ----------------------------
-- Table structure for tbl_page_news
-- ----------------------------
DROP TABLE IF EXISTS `tbl_page_news`;
CREATE TABLE `tbl_page_news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mt_news` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mk_news` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `md_news` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_page_news
-- ----------------------------
INSERT INTO `tbl_page_news` VALUES (1, 'Noticias', 'CMS de sitio web multipropósito con Codeigniter', '', '');

-- ----------------------------
-- Table structure for tbl_page_photo_gallery
-- ----------------------------
DROP TABLE IF EXISTS `tbl_page_photo_gallery`;
CREATE TABLE `tbl_page_photo_gallery`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_gallery_heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mt_photo_gallery` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mk_photo_gallery` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `md_photo_gallery` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_page_photo_gallery
-- ----------------------------
INSERT INTO `tbl_page_photo_gallery` VALUES (1, 'PHOTO GALLERY', 'Photo Gallery - Multix - Multipurpose Website CMS with Codeigniter', '', '');

-- ----------------------------
-- Table structure for tbl_page_portfolio
-- ----------------------------
DROP TABLE IF EXISTS `tbl_page_portfolio`;
CREATE TABLE `tbl_page_portfolio`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `portfolio_heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mt_portfolio` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mk_portfolio` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `md_portfolio` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_page_portfolio
-- ----------------------------
INSERT INTO `tbl_page_portfolio` VALUES (1, 'Portafolio', 'CMS de sitio web multipropósito con Codeigniter', '', '');

-- ----------------------------
-- Table structure for tbl_page_pricing
-- ----------------------------
DROP TABLE IF EXISTS `tbl_page_pricing`;
CREATE TABLE `tbl_page_pricing`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pricing_heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mt_pricing` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mk_pricing` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `md_pricing` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_page_pricing
-- ----------------------------
INSERT INTO `tbl_page_pricing` VALUES (1, 'PRICING', 'Pricing - Multix - Multipurpose Website CMS with Codeigniter', '', '');

-- ----------------------------
-- Table structure for tbl_page_privacy
-- ----------------------------
DROP TABLE IF EXISTS `tbl_page_privacy`;
CREATE TABLE `tbl_page_privacy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privacy_heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `privacy_content` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mt_privacy` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mk_privacy` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `md_privacy` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_page_privacy
-- ----------------------------
INSERT INTO `tbl_page_privacy` VALUES (1, 'Políticas de Privacidad', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n\r\n<p>Duo purto pertinax in. Ea noluisse mediocrem qui, nobis melius vis et. Iudico delicatissimi no qui, quando fastidii nam et, ne eum rationibus deseruisse neglegentur. Ei eum populo viderer reprimique, tantas homero abhorreant usu ei, at postulant gloriatur vituperata sit.</p>\r\n', 'CMS de sitio web multipropósito con Codeigniter', '', '');

-- ----------------------------
-- Table structure for tbl_page_search
-- ----------------------------
DROP TABLE IF EXISTS `tbl_page_search`;
CREATE TABLE `tbl_page_search`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `search_heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mt_search` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mk_search` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `md_search` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_page_search
-- ----------------------------
INSERT INTO `tbl_page_search` VALUES (1, 'Buscar por:', 'CMS de sitio web multipropósito con Codeigniter', '', '');

-- ----------------------------
-- Table structure for tbl_page_service
-- ----------------------------
DROP TABLE IF EXISTS `tbl_page_service`;
CREATE TABLE `tbl_page_service`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mt_service` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mk_service` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `md_service` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_page_service
-- ----------------------------
INSERT INTO `tbl_page_service` VALUES (1, 'Nuestros Servicios', 'CMS de sitio web multipropósito con Codeigniter', '', '');

-- ----------------------------
-- Table structure for tbl_page_team
-- ----------------------------
DROP TABLE IF EXISTS `tbl_page_team`;
CREATE TABLE `tbl_page_team`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mt_team` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mk_team` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `md_team` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_page_team
-- ----------------------------
INSERT INTO `tbl_page_team` VALUES (1, 'Nuestro Equipo', 'CMS de sitio web multipropósito con Codeigniter', '', '');

-- ----------------------------
-- Table structure for tbl_page_term
-- ----------------------------
DROP TABLE IF EXISTS `tbl_page_term`;
CREATE TABLE `tbl_page_term`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `term_heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `term_content` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mt_term` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mk_term` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `md_term` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_page_term
-- ----------------------------
INSERT INTO `tbl_page_term` VALUES (1, 'Términos y Condiciones', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>\r\n\r\n<p>Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>\r\n\r\n<p>Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei. At his ludus nonumes gloriatur. Ne vim tamquam nonumes.</p>\r\n\r\n<p>Duo purto pertinax in. Ea noluisse mediocrem qui, nobis melius vis et. Iudico delicatissimi no qui, quando fastidii nam et, ne eum rationibus deseruisse neglegentur. Ei eum populo viderer reprimique, tantas homero abhorreant usu ei, at postulant gloriatur vituperata sit.</p>\r\n', 'CMS de sitio web multipropósito con Codeigniter', '', '');

-- ----------------------------
-- Table structure for tbl_page_testimonial
-- ----------------------------
DROP TABLE IF EXISTS `tbl_page_testimonial`;
CREATE TABLE `tbl_page_testimonial`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `testimonial_heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mt_testimonial` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mk_testimonial` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `md_testimonial` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_page_testimonial
-- ----------------------------
INSERT INTO `tbl_page_testimonial` VALUES (1, 'Testimonios', 'CMS de sitio web multipropósito con Codeigniter', '', '');

-- ----------------------------
-- Table structure for tbl_photo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_photo`;
CREATE TABLE `tbl_photo`  (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`photo_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_photo
-- ----------------------------
INSERT INTO `tbl_photo` VALUES (2, 'photo-2.jpg');
INSERT INTO `tbl_photo` VALUES (3, 'photo-3.jpg');
INSERT INTO `tbl_photo` VALUES (4, 'photo-4.jpg');
INSERT INTO `tbl_photo` VALUES (5, 'photo-5.jpg');
INSERT INTO `tbl_photo` VALUES (6, 'photo-6.jpg');
INSERT INTO `tbl_photo` VALUES (7, 'photo-7.jpg');
INSERT INTO `tbl_photo` VALUES (8, 'photo-8.jpg');
INSERT INTO `tbl_photo` VALUES (9, 'photo-9.jpg');
INSERT INTO `tbl_photo` VALUES (10, 'photo-10.jpg');

-- ----------------------------
-- Table structure for tbl_portfolio
-- ----------------------------
DROP TABLE IF EXISTS `tbl_portfolio`;
CREATE TABLE `tbl_portfolio`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `short_content` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `client_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `client_company` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `start_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `end_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cost` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `client_comment` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_portfolio
-- ----------------------------
INSERT INTO `tbl_portfolio` VALUES (1, 'Trabajo Corporativo 1', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.</p>', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>', 'Darrell S. McClain', 'Waves Music', '01-07-2018', '04-07-2018', 'http://www.abc.com', '$3000', '<p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.</p>\r\n', '1', 'portfolio-1.jpg', 'Corporate Work 1', '', '');
INSERT INTO `tbl_portfolio` VALUES (2, 'Trabajo empresarial 1', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.</p>', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>', 'Richard R. Caldwell', 'Grey Fade', '29-08-2018', '07-09-2018', 'http://www.abc.com', '$2000', '<p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.</p>\r\n', '2', 'portfolio-2.jpg', 'Business Work 1', '', '');
INSERT INTO `tbl_portfolio` VALUES (3, 'Trabajo de ingeniería 1', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.</p>', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>', 'Nicholas Y. Coleman', 'Baltimore Markets', '08-04-2018', '22-06-2018', 'http://www.abc.com', '$3400', '<p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.</p>\r\n', '3', 'portfolio-3.jpg', 'Engineering Work 1', '', '');
INSERT INTO `tbl_portfolio` VALUES (4, 'Trabajo empresarial 2', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.</p>', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>', 'John A. Flesher', 'Magna Solution', '10-04-2018', '25-05-2018', 'http://www.abc.com', '$2300', '<p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.</p>\r\n', '2', 'portfolio-4.jpg', 'Business Work 2', '', '');
INSERT INTO `tbl_portfolio` VALUES (5, 'Trabajo Corporativo 2', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.</p>', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>', 'Brandon J. Erwin', 'Custom Sound', '15-06-2018', '05-07-2018', 'http://www.abc.com', '$5000', '<p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.</p>\r\n', '1', 'portfolio-5.jpg', 'Corporate Work 2', '', '');
INSERT INTO `tbl_portfolio` VALUES (6, 'Trabajo de ingeniería 2', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis.</p>', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Liber utroque vim an, ne his brute vivendo, est fabulas consetetur appellantur an. In dolore legendos quo, ne ferri noluisse sed. Tantas eligendi at ius. Purto ipsum nemore sit ad.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum.</p>', 'George L. Perryman', 'The Own Hardware', '05-02-2018', '20-04-2018', 'http://www.abc.com', '$1900', '<p>Ancillae interpretaris ea has. Id amet impedit qui, eripuit mnesarchum percipitur in eam. Ne sit habeo inimicus, no his liber regione volutpat. Ex quot voluptaria usu, dolor vivendo docendi nec ea. Et atqui vocent integre vim, quod cibo recusabo ei usu, soleat deseruisse percipitur pri no. Aeterno theophrastus id pro.</p>\r\n', '3', 'portfolio-6.jpg', 'Engineering Work 2', '', '');

-- ----------------------------
-- Table structure for tbl_portfolio_category
-- ----------------------------
DROP TABLE IF EXISTS `tbl_portfolio_category`;
CREATE TABLE `tbl_portfolio_category`  (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_portfolio_category
-- ----------------------------
INSERT INTO `tbl_portfolio_category` VALUES (1, 'Corporativo', 'Active');
INSERT INTO `tbl_portfolio_category` VALUES (2, 'Negocio', 'Active');
INSERT INTO `tbl_portfolio_category` VALUES (3, 'Ingenieria', 'Active');

-- ----------------------------
-- Table structure for tbl_portfolio_photo
-- ----------------------------
DROP TABLE IF EXISTS `tbl_portfolio_photo`;
CREATE TABLE `tbl_portfolio_photo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `portfolio_id` int(11) NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_portfolio_photo
-- ----------------------------
INSERT INTO `tbl_portfolio_photo` VALUES (17, 7, '17.jpg');
INSERT INTO `tbl_portfolio_photo` VALUES (18, 7, '18.jpg');
INSERT INTO `tbl_portfolio_photo` VALUES (24, 1, '24.jpg');
INSERT INTO `tbl_portfolio_photo` VALUES (26, 1, '26.jpg');
INSERT INTO `tbl_portfolio_photo` VALUES (27, 2, '27.jpg');
INSERT INTO `tbl_portfolio_photo` VALUES (28, 2, '28.jpg');
INSERT INTO `tbl_portfolio_photo` VALUES (29, 3, '29.jpg');
INSERT INTO `tbl_portfolio_photo` VALUES (30, 4, '30.jpg');
INSERT INTO `tbl_portfolio_photo` VALUES (31, 4, '31.jpg');
INSERT INTO `tbl_portfolio_photo` VALUES (32, 5, '32.jpg');
INSERT INTO `tbl_portfolio_photo` VALUES (33, 5, '33.jpg');
INSERT INTO `tbl_portfolio_photo` VALUES (34, 6, '34.jpg');
INSERT INTO `tbl_portfolio_photo` VALUES (35, 6, '35.jpg');

-- ----------------------------
-- Table structure for tbl_pricing_table
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pricing_table`;
CREATE TABLE `tbl_pricing_table`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `button_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `button_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_pricing_table
-- ----------------------------
INSERT INTO `tbl_pricing_table` VALUES (1, 'fa fa-shield', 'Estándar', '$99', 'por mes', '<ul>\r\n	<li>Dominio &uacute;nico</li>\r\n	<li>10 GB de ancho de banda / mes</li>\r\n	<li>Activaci&oacute;n SSL gratuita</li>\r\n	<li>Sin creador de sitios web</li>\r\n	<li>No hay soporte por correo electr&oacute;nico</li>\r\n	<li>Sin soporte de chat</li>\r\n</ul>', 'Elegirnos', '#');
INSERT INTO `tbl_pricing_table` VALUES (2, 'fa fa-globe', 'Profesional', '$299', 'por mes', '<ul>\r\n	<li>5 dominios</li>\r\n	<li>100 GB de ancho de banda / mes</li>\r\n	<li>Activaci&oacute;n SSL gratuita</li>\r\n	<li>Creador de sitios web gratuito</li>\r\n	<li>Soporte gratuito por correo electr&oacute;nico</li>\r\n	<li>Sin soporte de chat</li>\r\n</ul>', 'Elegirnos', '#');
INSERT INTO `tbl_pricing_table` VALUES (3, 'fa fa-diamond', 'Negocio', '$499', 'por mes', '<ul>\r\n	<li>Dominios ilimitados</li>\r\n	<li>Ancho de banda ilimitado / mes</li>\r\n	<li>Activaci&oacute;n SSL gratuita</li>\r\n	<li>Creador de sitios web gratuito</li>\r\n	<li>Soporte gratuito por correo electr&oacute;nico</li>\r\n	<li>Soporte de chat gratuito</li>\r\n</ul>', 'Elegirnos', '#');

-- ----------------------------
-- Table structure for tbl_service
-- ----------------------------
DROP TABLE IF EXISTS `tbl_service`;
CREATE TABLE `tbl_service`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `short_description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_service
-- ----------------------------
INSERT INTO `tbl_service` VALUES (1, 'COORDINACIÓN DE CONSULTORES', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum. Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argum entum has. Latine propriae quo no unum.', 'service-1.jpg', 'Consultant Coordination', '', '');
INSERT INTO `tbl_service` VALUES (2, 'MANEJO DE COSTOS', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum. Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argum entum has. Latine propriae quo no unum.', 'service-2.jpg', 'Cost Management', '', '');
INSERT INTO `tbl_service` VALUES (3, 'PROGRAMA DE ENTRENAMIENTO', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum. Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argum entum has. Latine propriae quo no unum.', 'service-3.jpg', 'Training Program', '', '');
INSERT INTO `tbl_service` VALUES (4, 'GESTIÓN DE PROYECTOS', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum. Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argum entum has. Latine propriae quo no unum.', 'service-4.jpg', 'Project Management', '', '');
INSERT INTO `tbl_service` VALUES (5, 'SEGURO DE CALIDAD', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum. Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argum entum has. Latine propriae quo no unum.', 'service-5.jpg', 'Quality Assurance', '', '');
INSERT INTO `tbl_service` VALUES (6, 'INFORMES', '<p>Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, at usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. Per ad ullum lobortis. Duo volutpat imperdiet ut, postea salutatus imperdiet ut per, ad utinam debitis invenire has.</p>\r\n\r\n<p>Vix tale noluisse voluptua ad, ne brute altera democritum cum. Omnes ornatus qui et, te aeterno discere ocurreret sea. Tollit cetero cu usu, etiam evertitur id nec. Id pro unum pertinax oportere, vel ad ridens mollis. Ad ius meis suavitate voluptaria.</p>\r\n\r\n<p>Mei ut errem legimus periculis, eos liber epicurei necessitatibus eu, facilisi postulant vel no. Ad mea commune disputando, cu vel choro exerci. Pri et oratio iisque atomorum, enim detracto mei ne, id eos soleat iudicabit. Ne reque reformidans mei, rebum delicata consequuntur an sit. Sea ad audire utamur. Ut mei ridens minimum intellegat, perpetua euripidis te qui, ad consul intellegebat comprehensam eum. Ex vix alienum sadipscing, quod melius philosophia id has. Ad qui quem reprimique, quo possit detracto reprimique no, sint reque officiis ei per. Ea regione commune volutpat pro, fabulas facilis omnesque mei ne. Cu unum detracto comprehensam sea, ad vim ancillae principes, ex usu fugit consulatu. Vis te purto equidem voluptatum.</p>', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argum entum has. Latine propriae quo no unum.', 'service-6.jpg', 'Reporting', '', '');

-- ----------------------------
-- Table structure for tbl_settings
-- ----------------------------
DROP TABLE IF EXISTS `tbl_settings`;
CREATE TABLE `tbl_settings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `favicon` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `footer_copyright` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `footer_address` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `footer_email` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `footer_phone` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `footer_recent_news_item` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `footer_recent_portfolio_item` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `newsletter_text` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cta_text` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cta_button_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cta_background` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `top_bar_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `top_bar_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `send_email_from` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `receive_email_to` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `smtp_active` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `smtp_ssl` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `smtp_host` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `smtp_port` int(4) NOT NULL,
  `smtp_username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `smtp_password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner_about` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner_faq` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner_service` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner_testimonial` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner_news` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner_event` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner_contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner_search` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner_terms` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner_privacy` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner_team` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner_portfolio` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner_verify_subscriber` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner_pricing` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `banner_photo_gallery` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `front_end_color` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sidebar_total_recent_post` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sidebar_total_upcoming_event` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sidebar_total_past_event` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `website_name` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `language_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_settings
-- ----------------------------
INSERT INTO `tbl_settings` VALUES (1, 'logo.png', 'favicon.png', 'Copyright © 2020, Todos los derechos reservados.', '3153 Foley Street\r\nMiami, FL 33176', 'sales@yourwebsite.com\r\nsupport@yourwebsite.com', 'Sales: 954-648-1802\r\nSupport: 963-612-1782', '4', '9', 'Detracto contentiones te est, brute ipsum consul an vis. Mea ei regione blandit ullamcorper, definiebas constituam vix ei.', '¿Quiere obtener nuestro servicio de calidad para su negocio?', '#', 'cta_background.jpg', 'info@yourwebsite.com', '954-648-1802', 'contact@yourwebsite.com', 'youremail@gmail.com', 'Yes', 'Yes', 'smtp_host', 465, 'smtp_username', 'smtp_password', 'banner_about.jpg', 'banner_faq.jpg', 'banner_service.jpg', 'banner_testimonial.jpg', 'banner_news.jpg', 'banner_event.jpg', 'banner_contact.jpg', 'banner_search.jpg', 'banner_terms.jpg', 'banner_privacy.jpg', 'banner_team.jpg', 'banner_portfolio.jpg', 'banner_verify_subscriber.jpg', 'banner_pricing.jpg', 'banner_photo_gallery.jpg', '3367C1', '3', '5', '5', 'MultiX', 'Show');

-- ----------------------------
-- Table structure for tbl_slider
-- ----------------------------
DROP TABLE IF EXISTS `tbl_slider`;
CREATE TABLE `tbl_slider`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `heading` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `button1_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `button1_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `button2_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `button2_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_slider
-- ----------------------------
INSERT INTO `tbl_slider` VALUES (1, 'slider-1.jpg', 'SOMOS LA FIRMA DE CONSULTA NÚMERO UNO', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit.', 'Leer Más', '#', 'Contáctanos', '#', 'Left');
INSERT INTO `tbl_slider` VALUES (2, 'slider-2.jpg', 'TRABAJAMOS PARA TU ÉXITO EN REALIDAD', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit.', 'Leer Más', '#', 'Contáctanos', '#', 'Right');

-- ----------------------------
-- Table structure for tbl_social
-- ----------------------------
DROP TABLE IF EXISTS `tbl_social`;
CREATE TABLE `tbl_social`  (
  `social_id` int(11) NOT NULL AUTO_INCREMENT,
  `social_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `social_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `social_icon` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`social_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_social
-- ----------------------------
INSERT INTO `tbl_social` VALUES (1, 'Facebook', '#', 'fa fa-facebook');
INSERT INTO `tbl_social` VALUES (2, 'Twitter', '#', 'fa fa-twitter');
INSERT INTO `tbl_social` VALUES (3, 'LinkedIn', '#', 'fa fa-linkedin');
INSERT INTO `tbl_social` VALUES (4, 'Google Plus', '#', 'fa fa-google-plus');
INSERT INTO `tbl_social` VALUES (5, 'Pinterest', '#', 'fa fa-pinterest');
INSERT INTO `tbl_social` VALUES (6, 'YouTube', '#', 'fa fa-youtube');
INSERT INTO `tbl_social` VALUES (7, 'Instagram', '', 'fa fa-instagram');
INSERT INTO `tbl_social` VALUES (8, 'Tumblr', '', 'fa fa-tumblr');
INSERT INTO `tbl_social` VALUES (9, 'Flickr', '', 'fa fa-flickr');
INSERT INTO `tbl_social` VALUES (10, 'Reddit', '', 'fa fa-reddit');
INSERT INTO `tbl_social` VALUES (11, 'Snapchat', '', 'fa fa-snapchat');
INSERT INTO `tbl_social` VALUES (12, 'WhatsApp', '', 'fa fa-whatsapp');
INSERT INTO `tbl_social` VALUES (13, 'Quora', '', 'fa fa-quora');
INSERT INTO `tbl_social` VALUES (14, 'StumbleUpon', '', 'fa fa-stumbleupon');
INSERT INTO `tbl_social` VALUES (15, 'Delicious', '', 'fa fa-delicious');
INSERT INTO `tbl_social` VALUES (16, 'Digg', '', 'fa fa-digg');

-- ----------------------------
-- Table structure for tbl_subscriber
-- ----------------------------
DROP TABLE IF EXISTS `tbl_subscriber`;
CREATE TABLE `tbl_subscriber`  (
  `subs_id` int(11) NOT NULL AUTO_INCREMENT,
  `subs_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subs_date` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subs_date_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subs_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subs_active` int(11) NOT NULL,
  PRIMARY KEY (`subs_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_subscriber
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_team_member
-- ----------------------------
DROP TABLE IF EXISTS `tbl_team_member`;
CREATE TABLE `tbl_team_member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `detail` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `google_plus` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `flickr` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_team_member
-- ----------------------------
INSERT INTO `tbl_team_member` VALUES (1, 'Danny Ashton', 'Presidente', 'team-member-1.jpg', '<p>Lorem ipsum dolor sit amet, ea eos viderer electram quaerendum, id eam mundi oblique docendi. Ex per dicta vitae persius, volumus suavitate elaboraret eos in. Fugit quaeque suavitate qui an, no discere noluisse sea. At vim sanctus scaevola consetetur, ius falli appellantur ad. Per virtute inermis neglegentur cu. Eius meis voluptua te nec, ne eam aperiam accommodare complectitur.</p>\r\n\r\n<p>Cu dicat partem verterem mel. Integre repudiandae nam ea, nam corpora salutatus ea, laudem neglegentur nam no. Ne alii nominati assentior mei, has decore molestie cu, ea pri oportere consetetur. Ex virtute complectitur eum, vel facilis efficiantur concludaturque ne, ad mea graeco nostro. In alia stet definiebas sed, soluta reprimique nec cu.</p>\r\n\r\n<p>Melius pertinax pri id, ea mea alterum scripserit, ipsum officiis evertitur et sed. Eu qui lorem eirmod, vix odio tacimates in, mei cu phaedrum deserunt theophrastus. Duo ex elit iriure intellegam, eos quis indoctum definitiones eu, ex vix quaeque eligendi accommodare. Enim recteque gloriatur cu qui. Qui sint honestatis ullamcorper te, in vim suas esse eius, per an equidem habemus ancillae.</p>\r\n\r\n<p>Eu assum soluta ancillae per, pri ut mutat errem homero, no eum eros argumentum. Congue civibus accusam ei qui, mei harum labore vidisse no. Ei utinam legere periculis eam, vide ponderum interpretaris ei quo. Ad duo paulo nihil laoreet, ea per delectus expetendis. Dicam platonem periculis eos in, dicat nihil conceptam est ut.</p>\r\n', '#', '#', '#', '#', '', '', '', '111-222-3333', 'member@yourwebsite.com', 'http://www.yourwebsite.com', 'Danny Ashton', '', '');
INSERT INTO `tbl_team_member` VALUES (2, 'Brent Grundy', 'Director Gerente', 'team-member-2.jpg', '<p>Lorem ipsum dolor sit amet, ea eos viderer electram quaerendum, id eam mundi oblique docendi. Ex per dicta vitae persius, volumus suavitate elaboraret eos in. Fugit quaeque suavitate qui an, no discere noluisse sea. At vim sanctus scaevola consetetur, ius falli appellantur ad. Per virtute inermis neglegentur cu. Eius meis voluptua te nec, ne eam aperiam accommodare complectitur.</p>\r\n\r\n<p>Cu dicat partem verterem mel. Integre repudiandae nam ea, nam corpora salutatus ea, laudem neglegentur nam no. Ne alii nominati assentior mei, has decore molestie cu, ea pri oportere consetetur. Ex virtute complectitur eum, vel facilis efficiantur concludaturque ne, ad mea graeco nostro. In alia stet definiebas sed, soluta reprimique nec cu.</p>\r\n\r\n<p>Melius pertinax pri id, ea mea alterum scripserit, ipsum officiis evertitur et sed. Eu qui lorem eirmod, vix odio tacimates in, mei cu phaedrum deserunt theophrastus. Duo ex elit iriure intellegam, eos quis indoctum definitiones eu, ex vix quaeque eligendi accommodare. Enim recteque gloriatur cu qui. Qui sint honestatis ullamcorper te, in vim suas esse eius, per an equidem habemus ancillae.</p>\r\n\r\n<p>Eu assum soluta ancillae per, pri ut mutat errem homero, no eum eros argumentum. Congue civibus accusam ei qui, mei harum labore vidisse no. Ei utinam legere periculis eam, vide ponderum interpretaris ei quo. Ad duo paulo nihil laoreet, ea per delectus expetendis. Dicam platonem periculis eos in, dicat nihil conceptam est ut.</p>\r\n', '#', '#', '#', '#', '', '', '', '111-222-3333', 'member@yourwebsite.com', 'http://www.yourwebsite.com', 'Brent Grundy', '', '');
INSERT INTO `tbl_team_member` VALUES (3, 'Scott Ford', 'CEO', 'team-member-3.jpg', '<p>Lorem ipsum dolor sit amet, ea eos viderer electram quaerendum, id eam mundi oblique docendi. Ex per dicta vitae persius, volumus suavitate elaboraret eos in. Fugit quaeque suavitate qui an, no discere noluisse sea. At vim sanctus scaevola consetetur, ius falli appellantur ad. Per virtute inermis neglegentur cu. Eius meis voluptua te nec, ne eam aperiam accommodare complectitur.</p><p>Cu dicat partem verterem mel. Integre repudiandae nam ea, nam corpora salutatus ea, laudem neglegentur nam no. Ne alii nominati assentior mei, has decore molestie cu, ea pri oportere consetetur. Ex virtute complectitur eum, vel facilis efficiantur concludaturque ne, ad mea graeco nostro. In alia stet definiebas sed, soluta reprimique nec cu.<br></p><p>Melius pertinax pri id, ea mea alterum scripserit, ipsum officiis evertitur et sed. Eu qui lorem eirmod, vix odio tacimates in, mei cu phaedrum deserunt theophrastus. Duo ex elit iriure intellegam, eos quis indoctum definitiones eu, ex vix quaeque eligendi accommodare. Enim recteque gloriatur cu qui. Qui sint honestatis ullamcorper te, in vim suas esse eius, per an equidem habemus ancillae.<br></p><p>Eu assum soluta ancillae per, pri ut mutat errem homero, no eum eros argumentum. Congue civibus accusam ei qui, mei harum labore vidisse no. Ei utinam legere periculis eam, vide ponderum interpretaris ei quo. Ad duo paulo nihil laoreet, ea per delectus expetendis. Dicam platonem periculis eos in, dicat nihil conceptam est ut.</p>', '#', '#', '#', '#', '', '', '', '111-222-3333', 'member@yourwebsite.com', 'http://www.yourwebsite.com', 'Scott Ford', '', '');
INSERT INTO `tbl_team_member` VALUES (4, 'Robert Krol', 'CTO', 'team-member-4.jpg', '<p>Lorem ipsum dolor sit amet, ea eos viderer electram quaerendum, id eam mundi oblique docendi. Ex per dicta vitae persius, volumus suavitate elaboraret eos in. Fugit quaeque suavitate qui an, no discere noluisse sea. At vim sanctus scaevola consetetur, ius falli appellantur ad. Per virtute inermis neglegentur cu. Eius meis voluptua te nec, ne eam aperiam accommodare complectitur.</p><p>Cu dicat partem verterem mel. Integre repudiandae nam ea, nam corpora salutatus ea, laudem neglegentur nam no. Ne alii nominati assentior mei, has decore molestie cu, ea pri oportere consetetur. Ex virtute complectitur eum, vel facilis efficiantur concludaturque ne, ad mea graeco nostro. In alia stet definiebas sed, soluta reprimique nec cu.<br></p><p>Melius pertinax pri id, ea mea alterum scripserit, ipsum officiis evertitur et sed. Eu qui lorem eirmod, vix odio tacimates in, mei cu phaedrum deserunt theophrastus. Duo ex elit iriure intellegam, eos quis indoctum definitiones eu, ex vix quaeque eligendi accommodare. Enim recteque gloriatur cu qui. Qui sint honestatis ullamcorper te, in vim suas esse eius, per an equidem habemus ancillae.<br></p><p>Eu assum soluta ancillae per, pri ut mutat errem homero, no eum eros argumentum. Congue civibus accusam ei qui, mei harum labore vidisse no. Ei utinam legere periculis eam, vide ponderum interpretaris ei quo. Ad duo paulo nihil laoreet, ea per delectus expetendis. Dicam platonem periculis eos in, dicat nihil conceptam est ut.</p>', '#', '#', '#', '#', '', '', '', '111-222-3333', 'member@yourwebsite.com', 'http://www.yourwebsite.com', 'Robert Krol', '', '');
INSERT INTO `tbl_team_member` VALUES (5, 'Sal Harvey', 'Diseñador gráfico', 'team-member-5.jpg', '<p>Lorem ipsum dolor sit amet, ea eos viderer electram quaerendum, id eam mundi oblique docendi. Ex per dicta vitae persius, volumus suavitate elaboraret eos in. Fugit quaeque suavitate qui an, no discere noluisse sea. At vim sanctus scaevola consetetur, ius falli appellantur ad. Per virtute inermis neglegentur cu. Eius meis voluptua te nec, ne eam aperiam accommodare complectitur.</p>\r\n\r\n<p>Cu dicat partem verterem mel. Integre repudiandae nam ea, nam corpora salutatus ea, laudem neglegentur nam no. Ne alii nominati assentior mei, has decore molestie cu, ea pri oportere consetetur. Ex virtute complectitur eum, vel facilis efficiantur concludaturque ne, ad mea graeco nostro. In alia stet definiebas sed, soluta reprimique nec cu.</p>\r\n\r\n<p>Melius pertinax pri id, ea mea alterum scripserit, ipsum officiis evertitur et sed. Eu qui lorem eirmod, vix odio tacimates in, mei cu phaedrum deserunt theophrastus. Duo ex elit iriure intellegam, eos quis indoctum definitiones eu, ex vix quaeque eligendi accommodare. Enim recteque gloriatur cu qui. Qui sint honestatis ullamcorper te, in vim suas esse eius, per an equidem habemus ancillae.</p>\r\n\r\n<p>Eu assum soluta ancillae per, pri ut mutat errem homero, no eum eros argumentum. Congue civibus accusam ei qui, mei harum labore vidisse no. Ei utinam legere periculis eam, vide ponderum interpretaris ei quo. Ad duo paulo nihil laoreet, ea per delectus expetendis. Dicam platonem periculis eos in, dicat nihil conceptam est ut.</p>\r\n', '#', '#', '#', '#', '', '', '', '111-222-3333', 'member@yourwebsite.com', 'http://www.yourwebsite.com', 'Sal Harvey', '', '');
INSERT INTO `tbl_team_member` VALUES (7, 'Harold Hayes', 'Diseñador web', 'team-member-7.jpg', '<p>Lorem ipsum dolor sit amet, ea eos viderer electram quaerendum, id eam mundi oblique docendi. Ex per dicta vitae persius, volumus suavitate elaboraret eos in. Fugit quaeque suavitate qui an, no discere noluisse sea. At vim sanctus scaevola consetetur, ius falli appellantur ad. Per virtute inermis neglegentur cu. Eius meis voluptua te nec, ne eam aperiam accommodare complectitur.</p>\r\n\r\n<p>Cu dicat partem verterem mel. Integre repudiandae nam ea, nam corpora salutatus ea, laudem neglegentur nam no. Ne alii nominati assentior mei, has decore molestie cu, ea pri oportere consetetur. Ex virtute complectitur eum, vel facilis efficiantur concludaturque ne, ad mea graeco nostro. In alia stet definiebas sed, soluta reprimique nec cu.</p>\r\n\r\n<p>Melius pertinax pri id, ea mea alterum scripserit, ipsum officiis evertitur et sed. Eu qui lorem eirmod, vix odio tacimates in, mei cu phaedrum deserunt theophrastus. Duo ex elit iriure intellegam, eos quis indoctum definitiones eu, ex vix quaeque eligendi accommodare. Enim recteque gloriatur cu qui. Qui sint honestatis ullamcorper te, in vim suas esse eius, per an equidem habemus ancillae.</p>\r\n\r\n<p>Eu assum soluta ancillae per, pri ut mutat errem homero, no eum eros argumentum. Congue civibus accusam ei qui, mei harum labore vidisse no. Ei utinam legere periculis eam, vide ponderum interpretaris ei quo. Ad duo paulo nihil laoreet, ea per delectus expetendis. Dicam platonem periculis eos in, dicat nihil conceptam est ut.</p>\r\n', '#', '#', '#', '#', '', '', '', '111-222-3333', 'member@yourwebsite.com', 'http://www.yourwebsite.com', 'Harold Hayes', '', '');
INSERT INTO `tbl_team_member` VALUES (8, 'Terry Spain', 'Desarrollador de WordPress', 'team-member-8.jpg', '<p>Lorem ipsum dolor sit amet, ea eos viderer electram quaerendum, id eam mundi oblique docendi. Ex per dicta vitae persius, volumus suavitate elaboraret eos in. Fugit quaeque suavitate qui an, no discere noluisse sea. At vim sanctus scaevola consetetur, ius falli appellantur ad. Per virtute inermis neglegentur cu. Eius meis voluptua te nec, ne eam aperiam accommodare complectitur.</p>\r\n\r\n<p>Cu dicat partem verterem mel. Integre repudiandae nam ea, nam corpora salutatus ea, laudem neglegentur nam no. Ne alii nominati assentior mei, has decore molestie cu, ea pri oportere consetetur. Ex virtute complectitur eum, vel facilis efficiantur concludaturque ne, ad mea graeco nostro. In alia stet definiebas sed, soluta reprimique nec cu.</p>\r\n\r\n<p>Melius pertinax pri id, ea mea alterum scripserit, ipsum officiis evertitur et sed. Eu qui lorem eirmod, vix odio tacimates in, mei cu phaedrum deserunt theophrastus. Duo ex elit iriure intellegam, eos quis indoctum definitiones eu, ex vix quaeque eligendi accommodare. Enim recteque gloriatur cu qui. Qui sint honestatis ullamcorper te, in vim suas esse eius, per an equidem habemus ancillae.</p>\r\n\r\n<p>Eu assum soluta ancillae per, pri ut mutat errem homero, no eum eros argumentum. Congue civibus accusam ei qui, mei harum labore vidisse no. Ei utinam legere periculis eam, vide ponderum interpretaris ei quo. Ad duo paulo nihil laoreet, ea per delectus expetendis. Dicam platonem periculis eos in, dicat nihil conceptam est ut.</p>\r\n', '#', '#', '#', '#', '', '', '', '111-222-3333', 'member@yourwebsite.com', 'http://www.yourwebsite.com', 'Terry Spain', '', '');
INSERT INTO `tbl_team_member` VALUES (9, 'Bryan Dolan', 'Desarrollador PHP', 'team-member-9.jpg', '<p>Lorem ipsum dolor sit amet, ea eos viderer electram quaerendum, id eam mundi oblique docendi. Ex per dicta vitae persius, volumus suavitate elaboraret eos in. Fugit quaeque suavitate qui an, no discere noluisse sea. At vim sanctus scaevola consetetur, ius falli appellantur ad. Per virtute inermis neglegentur cu. Eius meis voluptua te nec, ne eam aperiam accommodare complectitur.</p>\r\n\r\n<p>Cu dicat partem verterem mel. Integre repudiandae nam ea, nam corpora salutatus ea, laudem neglegentur nam no. Ne alii nominati assentior mei, has decore molestie cu, ea pri oportere consetetur. Ex virtute complectitur eum, vel facilis efficiantur concludaturque ne, ad mea graeco nostro. In alia stet definiebas sed, soluta reprimique nec cu.</p>\r\n\r\n<p>Melius pertinax pri id, ea mea alterum scripserit, ipsum officiis evertitur et sed. Eu qui lorem eirmod, vix odio tacimates in, mei cu phaedrum deserunt theophrastus. Duo ex elit iriure intellegam, eos quis indoctum definitiones eu, ex vix quaeque eligendi accommodare. Enim recteque gloriatur cu qui. Qui sint honestatis ullamcorper te, in vim suas esse eius, per an equidem habemus ancillae.</p>\r\n\r\n<p>Eu assum soluta ancillae per, pri ut mutat errem homero, no eum eros argumentum. Congue civibus accusam ei qui, mei harum labore vidisse no. Ei utinam legere periculis eam, vide ponderum interpretaris ei quo. Ad duo paulo nihil laoreet, ea per delectus expetendis. Dicam platonem periculis eos in, dicat nihil conceptam est ut.</p>\r\n', '#', '#', '#', '#', '', '', '', '111-222-3333', 'member@yourwebsite.com', 'http://www.yourwebsite.com', 'Bryan Dolan', '', '');

-- ----------------------------
-- Table structure for tbl_testimonial
-- ----------------------------
DROP TABLE IF EXISTS `tbl_testimonial`;
CREATE TABLE `tbl_testimonial`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_testimonial
-- ----------------------------
INSERT INTO `tbl_testimonial` VALUES (2, 'Robert Krol', 'CEO, ABC Company', 'testimonial-2.jpg', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.');
INSERT INTO `tbl_testimonial` VALUES (3, 'Sal Harvey', 'Director, DEF Company', 'testimonial-3.jpg', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.');
INSERT INTO `tbl_testimonial` VALUES (4, 'Terry Spain', 'Founder, XYZ Company', 'testimonial-4.jpg', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.');
INSERT INTO `tbl_testimonial` VALUES (5, 'John Hilton', 'CEO, AAA Company', 'testimonial-5.jpg', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.');
INSERT INTO `tbl_testimonial` VALUES (6, 'Arthur Cox', 'Chairman, RR Company', 'testimonial-6.jpg', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.');
INSERT INTO `tbl_testimonial` VALUES (7, 'David Moore', 'HR Manager, DSF Company', 'testimonial-7.jpg', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user-.jpg', '5a9015567006d6afc894b004d393f910', 'Admin', 'Active');

-- ----------------------------
-- Table structure for tbl_why_choose
-- ----------------------------
DROP TABLE IF EXISTS `tbl_why_choose`;
CREATE TABLE `tbl_why_choose`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_why_choose
-- ----------------------------
INSERT INTO `tbl_why_choose` VALUES (1, 'RESPUESTA RÁPIDA', 'Iisque persius ne sit, simul zril vix eu. Qui ne iusto epicuri suscipiantur, sit ne probo adhuc. Liber verterem interpretaris nam et, ea pro solum expetendis.', 'fa fa-clock-o', 'why-choose-1.jpg');
INSERT INTO `tbl_why_choose` VALUES (7, '100% SATISFACCIÓN', 'Duo luptatum delicata evertitur ad. Usu te quaerendum definitiones, ne mundi volutpat duo, in dissentias temporibus pri. Duo ferri dicant definitionem te.', 'fa fa-thumbs-up', 'why-choose-7.jpg');
INSERT INTO `tbl_why_choose` VALUES (8, 'SERVICIO CREATIVO', 'Amet dolor oratio ex has, stet repudiare definiebas vim ne. Id probo facilisis usu, pri aliquam omnesque cu. Vide assentior id qui, quando possim eos.', 'fa fa-globe', 'why-choose-8.jpg');

SET FOREIGN_KEY_CHECKS = 1;
