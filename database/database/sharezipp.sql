/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : sharezipp

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 29/10/2019 16:23:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for file_entries
-- ----------------------------
DROP TABLE IF EXISTS `file_entries`;
CREATE TABLE `file_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `folder_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_ext` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of file_entries
-- ----------------------------
BEGIN;
INSERT INTO `file_entries` VALUES (55, 'Screenshot 2019-06-07 at 8.20.21 AM.png', 'image/png', '5688e70e5266027a90a0c9b93a90e78b4af6c9dfb50b1158095477d489da84a1', 71919, '2019-10-29 16:22:53', '2019-10-29 16:22:53', 'Techno_r4Lt6HqoPU833', 'png');
INSERT INTO `file_entries` VALUES (56, 'Screenshot 2019-05-22 at 3.18.14 PM.png', 'image/png', '5688e70e5266027a90a0c9b93a90e78b4af6c9dfb50b1158095477d489da84a1', 75795, '2019-10-29 16:22:53', '2019-10-29 16:22:53', 'Techno_r4Lt6HqoPU833', 'png');
INSERT INTO `file_entries` VALUES (57, 'review protocol.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '1e72e4f3ef5279f63f2e6b6a117a61cbdec4c44f58275d9527c64a2585b00598', 25322, '2019-10-29 16:22:54', '2019-10-29 16:22:54', 'Techno_r4Lt6HqoPU833', 'docx');
INSERT INTO `file_entries` VALUES (58, '283cb3cdfe6533f6329c37c10a6023417c40.pdf', 'application/pdf', '1e72e4f3ef5279f63f2e6b6a117a61cbdec4c44f58275d9527c64a2585b00598', 198812, '2019-10-29 16:22:54', '2019-10-29 16:22:54', 'Techno_r4Lt6HqoPU833', 'pdf');
INSERT INTO `file_entries` VALUES (59, 'eVouchers_Rpt.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '1e72e4f3ef5279f63f2e6b6a117a61cbdec4c44f58275d9527c64a2585b00598', 373667, '2019-10-29 16:22:54', '2019-10-29 16:22:54', 'Techno_r4Lt6HqoPU833', 'docx');
COMMIT;

-- ----------------------------
-- Table structure for folders
-- ----------------------------
DROP TABLE IF EXISTS `folders`;
CREATE TABLE `folders` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `folder_id` varchar(191) NOT NULL,
  `folder_name` varchar(60) DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `status` enum('0','1') DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `folder_user` (`user_id`),
  CONSTRAINT `folder_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of folders
-- ----------------------------
BEGIN;
INSERT INTO `folders` VALUES (32, 'Techno_r4Lt6HqoPU833', 'Techno', 1, '0', '2019-10-29 16:22:53', '2019-10-29 16:22:53');
INSERT INTO `folders` VALUES (33, 'Techno_r4Lt6HqoPU833', 'Techno', 1, '0', '2019-10-29 16:22:53', '2019-10-29 16:22:53');
INSERT INTO `folders` VALUES (34, 'Techno_r4Lt6HqoPU833', 'Techno', 1, '0', '2019-10-29 16:22:54', '2019-10-29 16:22:54');
INSERT INTO `folders` VALUES (35, 'Techno_r4Lt6HqoPU833', 'Techno', 1, '0', '2019-10-29 16:22:54', '2019-10-29 16:22:54');
INSERT INTO `folders` VALUES (36, 'Techno_r4Lt6HqoPU833', 'Techno', 1, '0', '2019-10-29 16:22:54', '2019-10-29 16:22:54');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_10_23_160743_create_file_entries_table', 1);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'emodatt08', 'emodatt08@gmail.com', NULL, '$2y$10$5w1e4hcAQk8OoVLcls1/U.XqhiLgwQAa72T2PEOeQS4EbUgsLy3ky', NULL, '2019-10-24 09:18:24', '2019-10-24 09:18:24');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
