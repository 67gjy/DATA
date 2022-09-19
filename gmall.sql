/*
 Navicat Premium Data Transfer

 Source Server         : gjy
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : gmall

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 19/09/2022 21:07:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '类型'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('custom', 'el-icon-user-solid\r\nel-icon-s-custom', 'icon');
INSERT INTO `sys_dict` VALUES ('grid', 'el-icon-s-grid', 'icon');
INSERT INTO `sys_dict` VALUES ('house', 'el-icon-house', 'icon');
INSERT INTO `sys_dict` VALUES ('menu', 'el-icon-menu', 'icon');
INSERT INTO `sys_dict` VALUES ('platform', 'el-icon-s-platform', 'icon');
INSERT INTO `sys_dict` VALUES ('user', 'el-icon-user', 'icon');
INSERT INTO `sys_dict` VALUES ('tip', 'el-icon-trophy\r\n', 'icon');

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '类型',
  `size` bigint NULL DEFAULT NULL COMMENT '大小',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址',
  `md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_delete` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除',
  `enable` tinyint(1) NULL DEFAULT 1 COMMENT '是否禁用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES (36, '006CHHsBly1h3n1wbxwlkj30u00u0e44.jpg', 'jpg', 884, 'http://localhost:9090/file/e91ee59c07294578bd3ae6096c617362.jpg', '83eb25adce026268fd7f3eda1a4c97d9', 0, 0);
INSERT INTO `sys_file` VALUES (37, '006CHHsBly1h3n1wbxwlkj30u00u0e44 - 副本.jpg', 'jpg', 884, 'http://localhost:9090/file/e91ee59c07294578bd3ae6096c617362.jpg', '83eb25adce026268fd7f3eda1a4c97d9', 0, 0);
INSERT INTO `sys_file` VALUES (38, '006CHHsBly1h3n1wbxwlkj30u00u0e44 - 副本 (2).jpg', 'jpg', 884, 'http://localhost:9090/file/e91ee59c07294578bd3ae6096c617362.jpg', '83eb25adce026268fd7f3eda1a4c97d9', 0, 0);
INSERT INTO `sys_file` VALUES (39, 'qimu.jpg', 'jpg', 57, 'http://localhost:9090/file/6d1f219e0b4743e5be9d4423f7095fb5.jpg', '8e249e2042db13c8480c42de134ff543', 0, 0);
INSERT INTO `sys_file` VALUES (40, 'qimu - 副本.jpg', 'jpg', 57, 'http://localhost:9090/file/6d1f219e0b4743e5be9d4423f7095fb5.jpg', '8e249e2042db13c8480c42de134ff543', 0, 0);
INSERT INTO `sys_file` VALUES (41, '006CHHsBly1h3n1wbxwlkj30u00u0e44 - 副本.jpg', 'jpg', 884, 'http://localhost:9090/file/e91ee59c07294578bd3ae6096c617362.jpg', '83eb25adce026268fd7f3eda1a4c97d9', 0, 1);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pid` int NULL DEFAULT NULL,
  `page_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '主页', '/home', 'el-icon-house', '主页', NULL, 'HomeView');
INSERT INTO `sys_menu` VALUES (2, '系统管理', NULL, 'el-icon-menu', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (3, '用户管理', '/role', 'el-icon-user-solid\r\nel-icon-s-custom', NULL, 2, 'RoleView');
INSERT INTO `sys_menu` VALUES (4, '角色管理', '/user', 'el-icon-user', NULL, 2, 'UserView');
INSERT INTO `sys_menu` VALUES (5, '菜单管理', '/menu', 'el-icon-s-grid', NULL, 2, 'MenuView');
INSERT INTO `sys_menu` VALUES (6, '文件管理', '/file', 'el-icon-s-platform', NULL, 2, 'FileView');
INSERT INTO `sys_menu` VALUES (7, '请作者吃肯德基', '/tip', 'el-icon-trophy\r\n', NULL, NULL, 'TipView');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `flag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '唯一标识',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (4, '管理员', '管理员', 'ROLE_ADMIN');
INSERT INTO `sys_role` VALUES (9, '普通用户', '普通用户', 'ROLE_USER');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` int NOT NULL COMMENT '角色id\r\n',
  `menu_id` int NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (4, 1);
INSERT INTO `sys_role_menu` VALUES (4, 2);
INSERT INTO `sys_role_menu` VALUES (4, 3);
INSERT INTO `sys_role_menu` VALUES (4, 4);
INSERT INTO `sys_role_menu` VALUES (4, 5);
INSERT INTO `sys_role_menu` VALUES (4, 6);
INSERT INTO `sys_role_menu` VALUES (4, 7);
INSERT INTO `sys_role_menu` VALUES (9, 1);
INSERT INTO `sys_role_menu` VALUES (9, 2);
INSERT INTO `sys_role_menu` VALUES (9, 3);
INSERT INTO `sys_role_menu` VALUES (9, 4);
INSERT INTO `sys_role_menu` VALUES (9, 5);
INSERT INTO `sys_role_menu` VALUES (9, 7);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '地址\r\n',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `avatar_Url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色\r\n',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', 'admin', '管理员', 'admin@qq.com', '18362308768', '江苏', '2022-01-01 15:12:24', 'http://localhost:9090/file/ab6feb93f1bc4f6b8398174606f24f07.jpg', 'ROLE_ADMIN');
INSERT INTO `sys_user` VALUES (2, 'gjy', 'gjy', '龚极洋', 'gjy@qq.com', '17551075038', '江苏', '2022-08-18 22:21:54', 'http://localhost:9090/file/e91ee59c07294578bd3ae6096c617362.jpg', 'ROLE_ADMIN');
INSERT INTO `sys_user` VALUES (3, 'user2', '123456', '用户二', 'user2@qq.com', '15722803728', '日本', '2022-02-01 15:01:17', '123', NULL);
INSERT INTO `sys_user` VALUES (4, 'user3', NULL, NULL, NULL, NULL, NULL, '2022-04-01 16:44:00', '1123', NULL);
INSERT INTO `sys_user` VALUES (5, 'user4', NULL, NULL, NULL, NULL, NULL, '2022-08-19 16:44:10', '123', NULL);
INSERT INTO `sys_user` VALUES (6, 'user5', NULL, NULL, NULL, NULL, NULL, '2022-12-01 16:44:18', '231', NULL);
INSERT INTO `sys_user` VALUES (7, 'user6', NULL, NULL, NULL, NULL, NULL, '2022-08-19 16:44:27', '123', NULL);
INSERT INTO `sys_user` VALUES (8, 'user7', NULL, NULL, NULL, NULL, NULL, '2022-06-01 16:44:34', '23', NULL);
INSERT INTO `sys_user` VALUES (20, '121', '121', '12', '12', '1212', '12', '2022-09-08 19:32:10', NULL, 'ROLE_USER');

SET FOREIGN_KEY_CHECKS = 1;
