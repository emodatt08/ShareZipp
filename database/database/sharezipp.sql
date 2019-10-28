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

 Date: 28/10/2019 17:42:58
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
  `folder_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of file_entries
-- ----------------------------
BEGIN;
INSERT INTO `file_entries` VALUES (1, '675cefbf386c7d7095c55ef0aaa4d93bf7cd12e56aad8a2248c4565cd625a79c_1.jpg', 'image/jpeg', 'eeb95268d5011b70f385345c23a1cae7811415c4a0422839663d1b621c210867', 134597, '2019-10-24 13:11:23', '2019-10-24 13:11:23', NULL);
INSERT INTO `file_entries` VALUES (2, '4bd7a868e28922ce4f919a0d4d618a3091b3c86b34a977b3e2128fad411d4c4b_1.jpg', 'image/jpeg', '287fe8249d2f6c8fd344e519eeac15ed77c6987fa189af29d039b45df86bdb10', 62290, '2019-10-24 13:12:53', '2019-10-24 13:12:53', NULL);
INSERT INTO `file_entries` VALUES (3, '45ed02321ed8ace3109d5db5df4ff32e3e4800eb771b938a379cb53b549c9832_1.jpg', 'image/jpeg', '287fe8249d2f6c8fd344e519eeac15ed77c6987fa189af29d039b45df86bdb10', 39795, '2019-10-24 13:12:53', '2019-10-24 13:12:53', NULL);
INSERT INTO `file_entries` VALUES (4, '5cea870d89d5f90d0639149fdf2f0b3a5fb6a1385593bfcdc3ce123673e61b2e_1.jpg', 'image/jpeg', '287fe8249d2f6c8fd344e519eeac15ed77c6987fa189af29d039b45df86bdb10', 39036, '2019-10-24 13:12:53', '2019-10-24 13:12:53', NULL);
INSERT INTO `file_entries` VALUES (5, '4c4d75df0630fb8f3d181dabca6a4c33b378e2d1b054e8da299654c72878af9e_1.jpg', 'image/jpeg', '287fe8249d2f6c8fd344e519eeac15ed77c6987fa189af29d039b45df86bdb10', 93315, '2019-10-24 13:12:53', '2019-10-24 13:12:53', NULL);
INSERT INTO `file_entries` VALUES (6, '56f5ed4da688e0129d2f3cd6247295a1cbde07a6eb3f35c99ef51664f9633117_1.jpg', 'image/jpeg', '287fe8249d2f6c8fd344e519eeac15ed77c6987fa189af29d039b45df86bdb10', 86900, '2019-10-24 13:12:53', '2019-10-24 13:12:53', NULL);
INSERT INTO `file_entries` VALUES (7, '85b93955472ddc66b02cfedd4e0efbfde132e561053b87b11bcf7856d1ee97b3_1.jpg', 'image/jpeg', '287fe8249d2f6c8fd344e519eeac15ed77c6987fa189af29d039b45df86bdb10', 75666, '2019-10-24 13:12:53', '2019-10-24 13:12:53', NULL);
INSERT INTO `file_entries` VALUES (8, '6a522f0a5aafdf498a9b216b9d6a6b7b9b52330e95821f9e6bd6c29f6171e8f6_1.jpg', 'image/jpeg', '287fe8249d2f6c8fd344e519eeac15ed77c6987fa189af29d039b45df86bdb10', 188569, '2019-10-24 13:12:53', '2019-10-24 13:12:53', NULL);
INSERT INTO `file_entries` VALUES (9, '089c4df5223c3f2f8ef3919baf76fadcaf66e391a81b2b3068eb26e4fa989347_1.jpg', 'image/jpeg', '287fe8249d2f6c8fd344e519eeac15ed77c6987fa189af29d039b45df86bdb10', 136016, '2019-10-24 13:12:53', '2019-10-24 13:12:53', NULL);
INSERT INTO `file_entries` VALUES (10, '675cefbf386c7d7095c55ef0aaa4d93bf7cd12e56aad8a2248c4565cd625a79c_1.jpg', 'image/jpeg', '287fe8249d2f6c8fd344e519eeac15ed77c6987fa189af29d039b45df86bdb10', 134597, '2019-10-24 13:12:53', '2019-10-24 13:12:53', NULL);
INSERT INTO `file_entries` VALUES (11, '943f9b2acf86725f6590887202b1ce66e596b67a16b5c747081f77c4410fc8b1_1.jpg', 'image/jpeg', '287fe8249d2f6c8fd344e519eeac15ed77c6987fa189af29d039b45df86bdb10', 145385, '2019-10-24 13:12:53', '2019-10-24 13:12:53', NULL);
INSERT INTO `file_entries` VALUES (12, '63355ce6be0075056501090657f370357cd1a8c4c57248edb8131e2610c5d152_1.jpg', 'image/jpeg', 'a11914facc90a75e4ad834bfa71a12d7df4a044645d534eaa85e458907fc42f9', 84933, '2019-10-24 13:12:54', '2019-10-24 13:12:54', NULL);
INSERT INTO `file_entries` VALUES (13, 'e5a6d1fe62c32ca9fe39a81c8a351d12abe9e48c6302d0b343de817523aecbf3_1.jpg', 'image/jpeg', 'a11914facc90a75e4ad834bfa71a12d7df4a044645d534eaa85e458907fc42f9', 68710, '2019-10-24 13:12:54', '2019-10-24 13:12:54', NULL);
INSERT INTO `file_entries` VALUES (14, '4383fa864129cc73a8b3cd19d1e11f667ca66aca6d4e66c3edf60035b81e0248_1.jpg', 'image/jpeg', 'a11914facc90a75e4ad834bfa71a12d7df4a044645d534eaa85e458907fc42f9', 218036, '2019-10-24 13:12:54', '2019-10-24 13:12:54', NULL);
INSERT INTO `file_entries` VALUES (15, 'e7dfe6b3142420c74961e7e389354fe29805741f20aea48c56fc91faffbb6430_1.jpg', 'image/jpeg', 'a11914facc90a75e4ad834bfa71a12d7df4a044645d534eaa85e458907fc42f9', 67302, '2019-10-24 13:12:54', '2019-10-24 13:12:54', NULL);
INSERT INTO `file_entries` VALUES (16, 'fea0c1de4f0cc96adeaca758d6f459f7557af1e84d8821f4177892bde8288946_1.jpg', 'image/jpeg', 'a11914facc90a75e4ad834bfa71a12d7df4a044645d534eaa85e458907fc42f9', 59726, '2019-10-24 13:12:54', '2019-10-24 13:12:54', NULL);
INSERT INTO `file_entries` VALUES (17, 'ea59aeea0eda48f4a431f6c050cd2efd558ac260df2415246c4113a9cfce43f4_1.jpg', 'image/jpeg', 'a11914facc90a75e4ad834bfa71a12d7df4a044645d534eaa85e458907fc42f9', 66896, '2019-10-24 13:12:54', '2019-10-24 13:12:54', NULL);
INSERT INTO `file_entries` VALUES (18, 'd0fecf28a83c325e72eee960709231dcbe521166a9b3f6bbe0a650814314a58c_1 (1).jpg', 'image/jpeg', 'a11914facc90a75e4ad834bfa71a12d7df4a044645d534eaa85e458907fc42f9', 461650, '2019-10-24 13:12:54', '2019-10-24 13:12:54', NULL);
INSERT INTO `file_entries` VALUES (19, 'd0fecf28a83c325e72eee960709231dcbe521166a9b3f6bbe0a650814314a58c_1.jpg', 'image/jpeg', 'a11914facc90a75e4ad834bfa71a12d7df4a044645d534eaa85e458907fc42f9', 461650, '2019-10-24 13:12:54', '2019-10-24 13:12:54', NULL);
INSERT INTO `file_entries` VALUES (20, 'main-qimg-04fe7732970cde2396f765261a6a6c8d.jpeg', 'image/jpeg', '0ffb75fcecbb56b6bbcc47a15ab6d4ac7d536d7264de52b3b36869d5115565fd', 117797, '2019-10-24 14:54:04', '2019-10-24 14:54:04', NULL);
INSERT INTO `file_entries` VALUES (21, 'Review_Protocol_10805626.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '978966595c32c47ba46ab8d6c1cb864902691edb5d87683cc28dc13aee92a1ed', 96021, '2019-10-28 15:08:01', '2019-10-28 15:08:01', NULL);
INSERT INTO `file_entries` VALUES (22, '675cefbf386c7d7095c55ef0aaa4d93bf7cd12e56aad8a2248c4565cd625a79c_1.jpg', 'image/jpeg', '978966595c32c47ba46ab8d6c1cb864902691edb5d87683cc28dc13aee92a1ed', 134597, '2019-10-28 15:08:01', '2019-10-28 15:08:01', NULL);
INSERT INTO `file_entries` VALUES (23, 'app.css', 'text/css', '978966595c32c47ba46ab8d6c1cb864902691edb5d87683cc28dc13aee92a1ed', 127803, '2019-10-28 15:08:01', '2019-10-28 15:08:01', NULL);
COMMIT;

-- ----------------------------
-- Table structure for folders
-- ----------------------------
DROP TABLE IF EXISTS `folders`;
CREATE TABLE `folders` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `folder_id` text NOT NULL,
  `folder_name` varchar(60) DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `status` enum('0','1') DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `folder_user` (`user_id`),
  CONSTRAINT `folder_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
