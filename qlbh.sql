/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 100136
 Source Host           : localhost:3306
 Source Schema         : qlbh

 Target Server Type    : MySQL
 Target Server Version : 100136
 File Encoding         : 65001

 Date: 03/12/2018 22:09:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chitietdathang
-- ----------------------------
DROP TABLE IF EXISTS `chitietdathang`;
CREATE TABLE `chitietdathang`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DatHangId` int(11) NULL DEFAULT NULL,
  `MaSP` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `SoLuong` int(11) NULL DEFAULT NULL,
  `Gia` decimal(5, 3) NULL DEFAULT NULL,
  `TinhTrang` int(11) NULL DEFAULT NULL,
  `NgayDuKienGiaoHang` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of chitietdathang
-- ----------------------------
INSERT INTO `chitietdathang` VALUES (1, NULL, NULL, 150, 99.999, 0, '2018-12-05 20:49:29.000000');

-- ----------------------------
-- Table structure for danhmuc
-- ----------------------------
DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE `danhmuc`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of danhmuc
-- ----------------------------
INSERT INTO `danhmuc` VALUES (1, 'Nhẫn');
INSERT INTO `danhmuc` VALUES (2, 'Điện Thoại');
INSERT INTO `danhmuc` VALUES (3, 'Bông Tai');
INSERT INTO `danhmuc` VALUES (4, 'Quần Áo');
INSERT INTO `danhmuc` VALUES (5, 'Giày');
INSERT INTO `danhmuc` VALUES (6, 'Dây Chuyền');

-- ----------------------------
-- Table structure for dathang
-- ----------------------------
DROP TABLE IF EXISTS `dathang`;
CREATE TABLE `dathang`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NULL DEFAULT NULL,
  `TongGia` decimal(8, 3) NULL DEFAULT NULL,
  `LoaiGiaoHang` int(11) NULL DEFAULT NULL,
  `TinhTrang` int(255) NULL DEFAULT NULL,
  `NgayTao` datetime(6) NULL DEFAULT NULL,
  `NgayDuKienGiaoHang` datetime(6) NULL DEFAULT NULL,
  `DiaChiNhanHangId` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dathang
-- ----------------------------
INSERT INTO `dathang` VALUES (1, 1, 99.999, 1, 0, '2018-12-03 22:00:47.000000', '2018-12-06 22:03:07.000000', NULL);
INSERT INTO `dathang` VALUES (2, 2, 1200.000, 2, 0, '2018-11-27 22:00:53.000000', '2018-12-07 22:03:12.000000', NULL);
INSERT INTO `dathang` VALUES (3, 3, 758.000, 1, 0, '2018-11-27 22:00:58.000000', '2018-12-10 22:03:18.000000', NULL);
INSERT INTO `dathang` VALUES (4, 4, 125.000, 1, 0, '2018-11-27 22:01:02.000000', '2018-12-09 22:03:24.000000', NULL);
INSERT INTO `dathang` VALUES (5, 5, 2500.000, 1, 0, '2018-11-27 22:01:06.000000', '2018-12-11 22:03:30.000000', NULL);
INSERT INTO `dathang` VALUES (6, 6, 1400.000, 1, 1, '2018-11-26 22:01:11.000000', '2018-12-05 22:03:34.000000', NULL);
INSERT INTO `dathang` VALUES (7, 7, 4200.000, 2, 0, '2018-12-02 22:01:16.000000', '2018-12-10 22:03:43.000000', NULL);
INSERT INTO `dathang` VALUES (8, 8, 4586.000, 2, 1, '2018-12-01 22:01:24.000000', '2018-12-07 22:03:50.000000', NULL);
INSERT INTO `dathang` VALUES (9, 9, 12000.000, 1, 0, '2018-12-02 22:01:30.000000', '2018-12-11 22:03:57.000000', NULL);
INSERT INTO `dathang` VALUES (10, 10, 1500.000, 1, 0, '2018-11-27 22:01:35.000000', '2018-12-07 22:04:02.000000', NULL);

-- ----------------------------
-- Table structure for diachinhanhang
-- ----------------------------
DROP TABLE IF EXISTS `diachinhanhang`;
CREATE TABLE `diachinhanhang`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NguoiDungId` int(11) NULL DEFAULT NULL,
  `TenNguoiNhan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `SoDienThoai` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `DiaChiGiaoHang` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of diachinhanhang
-- ----------------------------
INSERT INTO `diachinhanhang` VALUES (1, 1, ' Võ Văn Quang', '0126958886', '23 Trần Quang Trung, Dĩ An, Bình Dương');
INSERT INTO `diachinhanhang` VALUES (2, 2, 'Trịnh Ngọc Hải', '0124566697', '145/A Nguyễn Huệ, TPHCM');
INSERT INTO `diachinhanhang` VALUES (3, 3, 'Phạm Xuân Quang', '0125999886', '145/A Nguyễn Huệ, TPHCM');
INSERT INTO `diachinhanhang` VALUES (4, 4, 'Trần Văn Thanh', '0925635685', '23 Trần Quang Trung, Dĩ An, Bình Dương');
INSERT INTO `diachinhanhang` VALUES (5, 5, 'Hà Công Sang', '0914555268', '145/A Nguyễn Huệ, TPHCM');
INSERT INTO `diachinhanhang` VALUES (6, 6, 'Nguyễn Đôn', '0125689652', '24 Trung Du, Q.Phú Nhuận,DakLak');
INSERT INTO `diachinhanhang` VALUES (7, 7, 'Nguyễn Tiến Tùng', '0125893455', '23 Trần Quang Trung, Dĩ An, Bình Dương');
INSERT INTO `diachinhanhang` VALUES (8, 8, 'Nguyễn Văn Thắng', '012558966', '24 Trung Du, Q.Phú Nhuận, Phú Yên');
INSERT INTO `diachinhanhang` VALUES (9, 9, 'Lục Trung Tài', '258875255', '24 Nguyễn Du, Q.1, Phú Yên');
INSERT INTO `diachinhanhang` VALUES (10, 10, 'Nguyễn Ngọc Tài', '012589666', '145/A Nguyễn Huệ, TPHCM');

-- ----------------------------
-- Table structure for nguoidung
-- ----------------------------
DROP TABLE IF EXISTS `nguoidung`;
CREATE TABLE `nguoidung`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `PassWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `SoDienThoai` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `DiaChi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `HinhAnh` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Quyen` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nguoidung
-- ----------------------------
INSERT INTO `nguoidung` VALUES (1, 'vovanquang', 'qw', '0924566855', 'daklak', 'vovanquang110@gmail.com', NULL, 1);
INSERT INTO `nguoidung` VALUES (2, 'vovantruong', '23456', '0925489734', 'Lâm Đồng', 'vovantruong@gmail.com', NULL, 0);
INSERT INTO `nguoidung` VALUES (3, 'nguyenvantung', 'scdvfbgnh', '0954126875', 'DakLak', 'truong123@gmail.com', NULL, 1);
INSERT INTO `nguoidung` VALUES (4, 'luctrungtai', 'sdfvbgh', '0126598745', 'Nam Định', 'votai@gmail.com', NULL, 0);
INSERT INTO `nguoidung` VALUES (5, 'nguyendon', 'sfgh44457', '0125969774', 'Phú yên', 'nguyendon@gmail.com', NULL, 0);
INSERT INTO `nguoidung` VALUES (6, 'vanthang', 'dg789', '0125855598', 'bà Rịa VT', 'vanthang@gmail.com', NULL, 0);
INSERT INTO `nguoidung` VALUES (7, 'trinhngochai', 'sdgjdfd', '0015658892', 'Phú yên', 'haingoc@gmail.com', NULL, 0);
INSERT INTO `nguoidung` VALUES (8, 'phamxuanquang', '3576fgfj', '7899635542', 'Bà Rịa VT', 'xuanquang@gmail.com', NULL, 0);
INSERT INTO `nguoidung` VALUES (9, 'trinhuanquynh', '3456sdfg', '0258896545', 'Phú Yên', 'quynh123@gmail.com', NULL, 0);
INSERT INTO `nguoidung` VALUES (10, 'haitrinh123', 'ádfg45678', '0125869856', 'Đà Lạt', 'Quangtrinh@gmail.com', NULL, 0);

-- ----------------------------
-- Table structure for nhasanxuat
-- ----------------------------
DROP TABLE IF EXISTS `nhasanxuat`;
CREATE TABLE `nhasanxuat`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nhasanxuat
-- ----------------------------
INSERT INTO `nhasanxuat` VALUES (1, 'NSX VinMart');
INSERT INTO `nhasanxuat` VALUES (2, 'NSX Hòa Bình');
INSERT INTO `nhasanxuat` VALUES (3, 'NSX Kim Huê');

-- ----------------------------
-- Table structure for sanpham
-- ----------------------------
DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE `sanpham`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MaSP` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `TenSP` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `LoaiSP` int(11) NULL DEFAULT NULL,
  `NhaSanXuatId` int(11) NULL DEFAULT NULL,
  `XuatSu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `MoTa` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `NgayTao` datetime(6) NULL DEFAULT NULL,
  `SoLuong` int(11) NULL DEFAULT NULL,
  `HinhAnh` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Gia` decimal(7, 3) NULL DEFAULT NULL,
  `LuotXem` int(11) NULL DEFAULT NULL,
  `TinhTrang` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sanpham
-- ----------------------------
INSERT INTO `sanpham` VALUES (1, 'SP001', 'Nhẫn Thu Hà', 1, NULL, 'Trung quốc', NULL, '2018-12-03 21:33:53.000000', 20, NULL, 99.999, NULL, NULL);
INSERT INTO `sanpham` VALUES (2, 'SP002', 'Điện Thoại Lumia 1280', 2, NULL, 'Hàn Quốc', NULL, '2018-11-27 21:34:03.000000', 2, NULL, 99.999, NULL, NULL);
INSERT INTO `sanpham` VALUES (3, 'SP003', 'Điện Thoại trượt nắp ', 2, NULL, 'Việt Nam', NULL, '2018-11-28 21:34:12.000000', 13, NULL, 99.999, NULL, NULL);
INSERT INTO `sanpham` VALUES (4, 'SP004', 'Quần áo em bé 6 tuổi', 4, NULL, 'Việt Nam', NULL, '2018-11-28 21:34:18.000000', 23, NULL, 1.000, NULL, NULL);
INSERT INTO `sanpham` VALUES (5, 'SP005', 'Giày Tay người lớn', 5, NULL, 'Phú Yên', NULL, '2018-12-01 21:34:23.000000', 140, NULL, 2500.000, NULL, NULL);
INSERT INTO `sanpham` VALUES (6, 'SP006', 'Dây chuyền sophie cao cấp', 6, NULL, 'Đà Lạt', NULL, '2018-11-26 21:34:30.000000', 2300, NULL, 150.000, NULL, NULL);
INSERT INTO `sanpham` VALUES (7, 'SP007', 'Giày em bé', 5, NULL, 'Malaysia', NULL, '2018-12-02 21:34:35.000000', 1200, NULL, 175.000, NULL, NULL);
INSERT INTO `sanpham` VALUES (8, 'SP008', 'Bông tai lexury120', 3, NULL, 'DakLak', NULL, '2018-12-03 21:34:39.000000', 45, NULL, 125.000, NULL, NULL);
INSERT INTO `sanpham` VALUES (9, 'SP009', 'Dây chuyền vàng premium', 6, NULL, 'DakLak', NULL, '2018-12-02 21:34:45.000000', 54, NULL, 1125.000, NULL, NULL);
INSERT INTO `sanpham` VALUES (10, 'SP010', 'Điện Thoại Samsung 720', 2, NULL, 'SaiGon', NULL, '2018-12-02 21:34:51.000000', 31, NULL, 750.000, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
