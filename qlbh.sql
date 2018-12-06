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

 Date: 06/12/2018 12:50:58
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
  `MaSP` int(11) NULL DEFAULT NULL,
  `SoLuong` int(11) NULL DEFAULT NULL,
  `Gia` decimal(7, 3) NULL DEFAULT NULL,
  `TinhTrang` int(11) NULL DEFAULT NULL,
  `NgayDuKienGiaoHang` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `MaSP`(`MaSP`) USING BTREE,
  INDEX `DatHangId`(`DatHangId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of chitietdathang
-- ----------------------------
INSERT INTO `chitietdathang` VALUES (1, NULL, NULL, 150, 99.999, 0, '2018-12-05 20:49:29.000000');
INSERT INTO `chitietdathang` VALUES (2, NULL, NULL, 450, 142.250, 1, '2018-12-04 10:26:38.000000');
INSERT INTO `chitietdathang` VALUES (3, NULL, NULL, 23, 1522.000, 1, '2018-12-03 10:26:52.000000');
INSERT INTO `chitietdathang` VALUES (4, NULL, NULL, 56, 142.000, 0, '2018-11-30 08:26:56.000000');
INSERT INTO `chitietdathang` VALUES (5, NULL, NULL, 67, 588.000, 2, '2018-12-02 10:27:04.000000');
INSERT INTO `chitietdathang` VALUES (6, NULL, NULL, 34, 1422.000, 1, '2018-12-01 11:27:11.000000');
INSERT INTO `chitietdathang` VALUES (7, NULL, NULL, 47, 452.000, 0, '2018-12-03 14:27:19.000000');
INSERT INTO `chitietdathang` VALUES (8, NULL, NULL, 67, 1422.000, 2, '2018-11-29 10:27:25.000000');
INSERT INTO `chitietdathang` VALUES (9, NULL, NULL, 87, 1425.000, 1, '2018-11-27 10:27:30.000000');

-- ----------------------------
-- Table structure for danhmuc
-- ----------------------------
DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE `danhmuc`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of danhmuc
-- ----------------------------
INSERT INTO `danhmuc` VALUES (1, 'Nhẫn');
INSERT INTO `danhmuc` VALUES (2, 'Điện Thoại');
INSERT INTO `danhmuc` VALUES (3, 'Bông Tai');
INSERT INTO `danhmuc` VALUES (4, 'Quần Áo');
INSERT INTO `danhmuc` VALUES (5, 'Giày');

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
INSERT INTO `dathang` VALUES (1, 1, 99.999, 1, 0, '2018-12-03 22:00:47.000000', '2018-12-06 22:03:07.000000', 1);
INSERT INTO `dathang` VALUES (2, 2, 1200.000, 2, 0, '2018-11-27 22:00:53.000000', '2018-12-07 22:03:12.000000', 2);
INSERT INTO `dathang` VALUES (3, 3, 758.000, 1, 0, '2018-11-27 22:00:58.000000', '2018-12-10 22:03:18.000000', 3);
INSERT INTO `dathang` VALUES (4, 4, 125.000, 1, 0, '2018-11-27 22:01:02.000000', '2018-12-09 22:03:24.000000', 4);
INSERT INTO `dathang` VALUES (5, 5, 2500.000, 1, 0, '2018-11-27 22:01:06.000000', '2018-12-11 22:03:30.000000', 5);
INSERT INTO `dathang` VALUES (6, 6, 1400.000, 1, 1, '2018-11-26 22:01:11.000000', '2018-12-05 22:03:34.000000', 6);
INSERT INTO `dathang` VALUES (7, 7, 4200.000, 2, 0, '2018-12-02 22:01:16.000000', '2018-12-10 22:03:43.000000', 7);
INSERT INTO `dathang` VALUES (8, 8, 4586.000, 2, 1, '2018-12-01 22:01:24.000000', '2018-12-07 22:03:50.000000', 8);
INSERT INTO `dathang` VALUES (9, 9, 12000.000, 1, 0, '2018-12-02 22:01:30.000000', '2018-12-11 22:03:57.000000', 9);
INSERT INTO `dathang` VALUES (10, 10, 1500.000, 1, 0, '2018-11-27 22:01:35.000000', '2018-12-07 22:04:02.000000', 10);

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
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `NguoiDungId`(`NguoiDungId`) USING BTREE
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
  PRIMARY KEY (`Id`) USING BTREE,
  CONSTRAINT `FK_NguoiDung` FOREIGN KEY (`Id`) REFERENCES `diachinhanhang` (`NguoiDungId`) ON DELETE CASCADE ON UPDATE NO ACTION
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
  PRIMARY KEY (`Id`) USING BTREE,
  CONSTRAINT `FK_NSX` FOREIGN KEY (`Id`) REFERENCES `sanpham` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nhasanxuat
-- ----------------------------
INSERT INTO `nhasanxuat` VALUES (1, 'NSX VinMart');
INSERT INTO `nhasanxuat` VALUES (2, 'NSX Hòa Bình');
INSERT INTO `nhasanxuat` VALUES (3, 'NSX Kim Huê');
INSERT INTO `nhasanxuat` VALUES (4, 'NSX Hoa Lan');
INSERT INTO `nhasanxuat` VALUES (5, 'NSX Cẫm Loan');

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
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `NhaSanXuatId`(`NhaSanXuatId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sanpham
-- ----------------------------
INSERT INTO `sanpham` VALUES (1, 'SP001', 'Nhẫn Thu Hà', 1, 4, 'Trung quốc', NULL, '2018-12-03 21:33:53.000000', 20, 'imgs/sp/4/main_thumbs.jpg', 99.999, 15, 0);
INSERT INTO `sanpham` VALUES (2, 'SP002', 'Điện Thoại Lumia 1280', 2, 5, 'Hàn Quốc', NULL, '2018-11-27 21:34:03.000000', 2, 'imgs/sp/4/main_thumbs.jpg', 99.999, 20, 1);
INSERT INTO `sanpham` VALUES (3, 'SP003', 'Điện Thoại trượt nắp ', 2, NULL, 'Việt Nam', NULL, '2018-11-28 21:34:12.000000', 13, 'imgs/sp/dienthoai3/main_thumbs.jpg', 99.999, 48, 1);
INSERT INTO `sanpham` VALUES (4, 'SP004', 'Quần áo em bé 6 tuổi', 4, NULL, 'Việt Nam', NULL, '2018-11-28 21:34:18.000000', 23, 'imgs/sp/8/main_thumbs.jpg', 1.000, 24, 0);
INSERT INTO `sanpham` VALUES (5, 'SP005', 'Giày Tay người lớn', 5, NULL, 'Phú Yên', NULL, '2018-12-01 21:34:23.000000', 140, 'imgs/sp/21/main_thumbs.jpg', 2500.000, 11, 0);
INSERT INTO `sanpham` VALUES (6, 'SP006', 'Quần tây cao cấp', 4, NULL, 'Đà Lạt', NULL, '2018-11-26 21:34:30.000000', 2300, 'imgs/sp/20/main_thumbs.jpg', 150.000, 25, 1);
INSERT INTO `sanpham` VALUES (7, 'SP007', 'Giày em bé', 5, NULL, 'Malaysia', NULL, '2018-12-02 21:34:35.000000', 1200, 'imgs/sp/giay2/main_thumbs.jpg', 175.000, 24, 0);
INSERT INTO `sanpham` VALUES (8, 'SP008', 'Bông tai lexury120', 3, NULL, 'DakLak', NULL, '2018-12-03 21:34:39.000000', 45, 'imgs/sp/3/main_thumbs.jpg', 125.000, 58, 1);
INSERT INTO `sanpham` VALUES (9, 'SP009', 'Điện Thoại SamSung s7', 2, NULL, 'DakLak', NULL, '2018-12-02 21:34:45.000000', 54, 'imgs/sp/dienthoai1/main_thumbs.jpg', 1125.000, 25, 1);
INSERT INTO `sanpham` VALUES (10, 'SP010', 'Điện Thoại Samsung 720', 2, NULL, 'TPHCM', NULL, '2018-12-02 21:34:51.000000', 31, 'imgs/sp/4/main_thumbs.jpgimgs/sp/dienthoai2/main_thumbs.jpg', 750.000, 24, 1);
INSERT INTO `sanpham` VALUES (11, 'SP011', 'Điện Thoại Nokia 230', 2, NULL, 'Nam Định', NULL, '2018-12-03 09:56:44.000000', 1000, 'imgs/sp/dienthoai1/main_thumbs.jpg', 142.000, 25, 1);
INSERT INTO `sanpham` VALUES (12, 'SP012', 'Điện Thoại Nokia S7-230', 2, NULL, 'Hàn Quốc', NULL, '2018-11-26 09:56:49.000000', 20, 'imgs/sp/dienthoai4/main_thumbs.jpg', 1142.000, 45, 0);
INSERT INTO `sanpham` VALUES (13, 'SP013', 'Điện Thoại Nokia Lumia 120SD', 2, NULL, 'TPHCM', NULL, '2018-11-28 10:56:55.000000', 50, 'imgs/sp/30/main_thumbs.jpg', 523.000, 95, 0);
INSERT INTO `sanpham` VALUES (14, 'SP014', 'Điện Thoại Nokia-Lumia 750HD Plus', 2, NULL, 'TPHCM', NULL, '2018-12-04 09:57:03.000000', 55, 'imgs/sp/16/main_thumbs.jpg', 145.250, 68, 1);
INSERT INTO `sanpham` VALUES (15, 'SP015', 'Điện Thoại Nokia 570 Plus', 2, NULL, 'Gia Lai', NULL, '2018-11-28 09:57:08.000000', 25, 'imgs/sp/7/main_thumbs.jpg', 158.250, 14, 0);
INSERT INTO `sanpham` VALUES (16, 'SP016', 'Điện Thoại Nokia - Cao Cấp 702SD', 2, NULL, 'Phú Quốc', NULL, '2018-12-03 09:57:17.000000', 27, 'imgs/sp/5/main_thumbs.jpg', 180.000, 32, 1);
INSERT INTO `sanpham` VALUES (17, 'SP017', 'Nhẫn Cao Cấp Hà Liên', 1, NULL, 'TPHCM', NULL, '2018-12-04 09:46:36.000000', 14, 'imgs/sp/24/main_thumbs.jpg', 456.240, 47, 0);
INSERT INTO `sanpham` VALUES (18, 'SP018', 'Nhẫn 7 màu cao cấp', 1, NULL, 'TPHCM', NULL, '2018-12-04 09:46:42.000000', 19, 'imgs/sp/25/main_thumbs.jpg', 1452.250, 25, 1);
INSERT INTO `sanpham` VALUES (19, 'SP019', 'Nhẫn mạ vàng 9999', 1, NULL, 'Phú yên', NULL, '2018-12-04 09:46:47.000000', 91, 'imgs/sp/26/main_thumbs.jpg', 1258.240, 11, 0);
INSERT INTO `sanpham` VALUES (20, 'SP020', 'Nhẫn kim cương Romatic', 1, NULL, 'Hà Nội', NULL, '2018-11-30 09:46:51.000000', 65, 'imgs/sp/27/main_thumbs.jpg', 9999.999, 35, 0);
INSERT INTO `sanpham` VALUES (21, 'SP021', 'Nhẫn bạc đính vàng', 1, NULL, 'TPHCM', NULL, '2018-12-03 09:46:59.000000', 25, 'imgs/sp/28/main_thumbs.jpg', 2584.280, 25, 1);
INSERT INTO `sanpham` VALUES (22, 'SP022', 'Nhẫn loda', 1, NULL, 'Nha Trang', NULL, '2018-12-09 09:47:04.000000', 14, 'imgs/sp/23/main_thumbs.jpg', 8965.000, 11, 0);
INSERT INTO `sanpham` VALUES (23, 'SP023', 'Bông Tai Em Bé SD120', 3, NULL, 'DakLak', NULL, '2018-12-02 09:47:29.000000', 22, 'imgs/sp/9/main_thumbs.jpg', 5522.500, 254, 1);
INSERT INTO `sanpham` VALUES (24, 'SP024', 'Bông Tai Hà Giang', 3, NULL, 'Bà Rịa Vũng Tàu', NULL, '2018-12-03 09:48:08.000000', 14, 'imgs/sp/11/main_thumbs.jpg', 258.896, 24, 1);
INSERT INTO `sanpham` VALUES (25, 'SP025', 'Bông Tai Đính Hạt Cườm Cao Cấp', 3, NULL, 'TPHCM', NULL, '2018-11-29 09:48:22.000000', 80, 'imgs/sp/17/main_thumbs.jpg', 140.000, 91, 1);
INSERT INTO `sanpham` VALUES (26, 'SP026', 'Bông Tai Hạt Sophie', 3, NULL, 'Hàn Xanh', NULL, '2018-12-03 09:48:30.000000', 14, 'imgs/sp/bongtai1/main_thumbs.jpg', 586.000, 12, 0);
INSERT INTO `sanpham` VALUES (27, 'SP027', 'Bông Tai Hạt Ramot bạc', 3, NULL, 'Nha Trang', NULL, '2018-12-05 09:48:35.000000', 63, 'imgs/sp/bongtai2/main_thumbs.jpg', 1558.000, 2, 0);
INSERT INTO `sanpham` VALUES (28, 'SP028', 'Quần cho baby 8 tuổi', 4, NULL, 'TPHCM', NULL, '2018-11-26 09:49:40.000000', 63, 'imgs/sp/quanao1/main_thumbs.jpg', 152.240, 3, 0);
INSERT INTO `sanpham` VALUES (29, 'SP029', 'Quần freestyle cho bé', 4, NULL, 'Phú Quốc', NULL, '2018-12-03 07:52:27.000000', 25, 'imgs/sp/quanao2/main_thumbs.jpg', 2558.500, 6, 1);
INSERT INTO `sanpham` VALUES (30, 'SP030', 'Quần jean đẹp cao cấp', 4, NULL, 'Bà Rịa Vũng Tàu', NULL, '2018-12-03 09:52:37.000000', 24, 'imgs/sp/quanao4/main_thumbs.jpg', 1558.260, 5, 1);
INSERT INTO `sanpham` VALUES (31, 'SP031', 'Áo thun cho nam vãi nhung', 4, NULL, 'Bà Rịa Vũng Tàu', NULL, '2018-12-02 11:53:25.000000', 27, 'imgs/sp/1/main_thumbs.jpg', 1486.000, 14, 0);
INSERT INTO `sanpham` VALUES (32, 'SP032', 'Áo thun trơn sơ mi', 4, NULL, 'TPHCM', NULL, '2018-12-02 12:53:33.000000', 72, 'imgs/sp/1/2_thumbs.jpg', 15.256, 47, 1);
INSERT INTO `sanpham` VALUES (33, 'SP033', 'Giày nam thể thao đẹp', 5, NULL, 'TPHCM', NULL, '2018-11-30 09:53:46.000000', 84, 'imgs/sp/giay1/main_thumbs.jpg', 5895.560, 24, 0);
INSERT INTO `sanpham` VALUES (34, 'SP034', 'Giày thể thao cao cấp', 5, NULL, 'Phú Quốc', NULL, '2018-12-03 09:54:45.000000', 45, 'imgs/sp/giay3/main_thumbs.jpg', 4785.556, 23, 1);
INSERT INTO `sanpham` VALUES (35, 'SP035', 'Giày nam đẹp cao cấp 230', 5, NULL, 'Bà Rịa Vũng Tàu', NULL, '2018-11-28 09:55:20.000000', 61, 'imgs/sp/giay4/main_thumbs.jpg', 14.599, 2, 1);
INSERT INTO `sanpham` VALUES (36, 'SP036', 'Giày + dây siêu đẹp', 5, NULL, 'Nha Trang', NULL, '2018-12-03 09:00:26.000000', 95, 'imgs/sp/giay5/main_thumbs.jpg', 1583.580, 24, 0);
INSERT INTO `sanpham` VALUES (37, 'SP037', 'Giày sale 20%', 5, NULL, 'Nha Trang', NULL, '2018-12-02 06:55:41.000000', 85, 'imgs/sp/22/main_thumbs.jpg', 4485.000, 24, 1);
INSERT INTO `sanpham` VALUES (38, 'SP038', 'Giày tây cao cấp', 5, NULL, 'Bà Rịa Vũng Tàu', NULL, '2018-12-02 09:55:51.000000', 75, 'imgs/sp/21/main_thumbs.jpg', 1482.000, 25, 0);
INSERT INTO `sanpham` VALUES (39, 'SP039', 'Giày nữ đẹp sale 10%', 5, NULL, 'Phú Quốc', NULL, '2018-12-02 09:55:58.000000', 7, 'imgs/sp/2/main_thumbs.jpg', 149.000, 77, 1);
INSERT INTO `sanpham` VALUES (40, 'SP040', 'Giày sandal cao cấp cho trẻ em', 5, NULL, 'Bà Rịa Vũng Tàu', NULL, '2018-11-26 09:56:06.000000', 31, 'imgs/sp/giay5/main_thumbs.jpg', 4278.000, 21, 1);
INSERT INTO `sanpham` VALUES (41, 'SP030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sanpham` VALUES (43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
