/*
 Navicat Premium Data Transfer

 Source Server         : hosossss
 Source Server Type    : MySQL
 Source Server Version : 80300
 Source Host           : 10.177.1.220:8888
 Source Schema         : ware

 Target Server Type    : MySQL
 Target Server Version : 80300
 File Encoding         : 65001

 Date: 01/04/2024 17:13:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tab_dep
-- ----------------------------
DROP TABLE IF EXISTS `tab_dep`;
CREATE TABLE `tab_dep`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `addr` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `info` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `status` int NULL DEFAULT NULL,
  `create_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for tab_model
-- ----------------------------
DROP TABLE IF EXISTS `tab_model`;
CREATE TABLE `tab_model`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `create_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for tab_part
-- ----------------------------
DROP TABLE IF EXISTS `tab_part`;
CREATE TABLE `tab_part`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `img` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sid` int NULL DEFAULT NULL,
  `mid` int NULL DEFAULT NULL,
  `info` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `status` int NULL DEFAULT 0,
  `qrcode` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `create_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2575 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for tab_part_copy1
-- ----------------------------
DROP TABLE IF EXISTS `tab_part_copy1`;
CREATE TABLE `tab_part_copy1`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `img` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `sid` int NULL DEFAULT NULL,
  `mid` int NULL DEFAULT NULL,
  `info` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `status` int NULL DEFAULT 0,
  `create_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2006 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for tab_site
-- ----------------------------
DROP TABLE IF EXISTS `tab_site`;
CREATE TABLE `tab_site`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `dep_id` int NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `manager` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `addr` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `info` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `status` int NULL DEFAULT NULL,
  `create_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for tab_stock
-- ----------------------------
DROP TABLE IF EXISTS `tab_stock`;
CREATE TABLE `tab_stock`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ware_id` int NULL DEFAULT NULL,
  `part_id` int NULL DEFAULT NULL,
  `num` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL COMMENT '0 正常 1 待核查',
  `create_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for tab_stock_io
-- ----------------------------
DROP TABLE IF EXISTS `tab_stock_io`;
CREATE TABLE `tab_stock_io`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `recept_code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `out_dep_id` int NULL DEFAULT NULL,
  `out_ware_id` int NULL DEFAULT NULL,
  `in_dep_id` int NULL DEFAULT NULL,
  `in_ware_id` int NULL DEFAULT NULL,
  `part_id` int NULL DEFAULT NULL,
  `num` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `state` int NULL DEFAULT 0,
  `remark` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 80 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for tab_supply
-- ----------------------------
DROP TABLE IF EXISTS `tab_supply`;
CREATE TABLE `tab_supply`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `img` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `addr` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `info` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `status` int NULL DEFAULT 0,
  `create_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 409 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for tab_user
-- ----------------------------
DROP TABLE IF EXISTS `tab_user`;
CREATE TABLE `tab_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `dep_id` int NULL DEFAULT NULL,
  `usr` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `pwd` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `role` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `create_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Table structure for tab_ware
-- ----------------------------
DROP TABLE IF EXISTS `tab_ware`;
CREATE TABLE `tab_ware`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `dep_id` int NULL DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `addr` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `manager` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `info` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `status` int NULL DEFAULT 0,
  `create_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- View structure for view_model
-- ----------------------------
DROP VIEW IF EXISTS `view_model`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_model` AS select `tab_model`.`id` AS `id`,`tab_model`.`name` AS `name`,`tab_model`.`status` AS `status`,`tab_model`.`create_name` AS `create_name`,`tab_model`.`create_time` AS `create_time` from `tab_model` where (`tab_model`.`status` = 0) order by `tab_model`.`id` desc;

-- ----------------------------
-- View structure for view_part
-- ----------------------------
DROP VIEW IF EXISTS `view_part`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_part` AS select `w`.`id` AS `id`,`w`.`code` AS `code`,`w`.`name` AS `name`,`w`.`img` AS `img`,`w`.`sid` AS `sid`,`w`.`mid` AS `mid`,`w`.`info` AS `info`,`w`.`status` AS `status`,`w`.`create_name` AS `create_name`,`w`.`create_time` AS `create_time`,`s`.`name` AS `sup_name`,`s`.`phone` AS `sup_phone`,`s`.`addr` AS `sup_addr`,`s`.`info` AS `sup_info`,`m`.`name` AS `mod_name`,`w`.`qrcode` AS `qrcode` from ((`tab_part` `w` join `tab_supply` `s`) join `tab_model` `m`) where ((`w`.`sid` = `s`.`id`) and (`w`.`mid` = `m`.`id`) and (`w`.`status` = 0)) order by `w`.`id` desc;

-- ----------------------------
-- View structure for view_part_export
-- ----------------------------
DROP VIEW IF EXISTS `view_part_export`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_part_export` AS select `w`.`id` AS `id`,`w`.`code` AS `code`,`w`.`name` AS `name`,`w`.`img` AS `img`,`w`.`info` AS `info`,`s`.`name` AS `sup_name`,`s`.`phone` AS `sup_phone`,`s`.`addr` AS `sup_addr`,`s`.`info` AS `sup_info`,`m`.`name` AS `mod_name`,`w`.`create_name` AS `create_name`,date_format(`w`.`create_time`,'%Y-%m-%d %H:%i:%s') AS `create_time`,(case `w`.`status` when 0 then '正常' when 1 then '刪除' else '未知' end) AS `status_text` from ((`tab_part` `w` join `tab_supply` `s`) join `tab_model` `m`) where ((`w`.`sid` = `s`.`id`) and (`w`.`mid` = `m`.`id`) and (`w`.`status` = 0));

-- ----------------------------
-- View structure for view_site
-- ----------------------------
DROP VIEW IF EXISTS `view_site`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_site` AS select `w`.`id` AS `id`,`w`.`dep_id` AS `dep_id`,`w`.`name` AS `name`,`w`.`manager` AS `manager`,`w`.`phone` AS `phone`,`w`.`addr` AS `addr`,`w`.`info` AS `info`,`w`.`status` AS `status`,`w`.`create_name` AS `create_name`,`w`.`create_time` AS `create_time`,`d`.`name` AS `dep_name` from (`tab_site` `w` join `tab_dep` `d`) where ((`w`.`dep_id` = `d`.`id`) and (`w`.`status` = 0)) order by `w`.`id` desc;

-- ----------------------------
-- View structure for view_stock
-- ----------------------------
DROP VIEW IF EXISTS `view_stock`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_stock` AS select `s`.`id` AS `id`,`w`.`code` AS `ware_code`,`w`.`name` AS `ware_name`,`p`.`code` AS `part_code`,`p`.`name` AS `part_name`,`p`.`img` AS `part_img`,`m`.`name` AS `model_name`,`su`.`name` AS `supply_name`,`s`.`num` AS `num`,`s`.`status` AS `status` from ((((`tab_stock` `s` left join `tab_part` `p` on((`s`.`part_id` = `p`.`id`))) left join `tab_ware` `w` on((`s`.`ware_id` = `w`.`id`))) left join `tab_model` `m` on((`p`.`mid` = `m`.`id`))) left join `tab_supply` `su` on((`p`.`sid` = `su`.`id`))) order by `s`.`id` desc;

-- ----------------------------
-- View structure for view_stock_io
-- ----------------------------
DROP VIEW IF EXISTS `view_stock_io`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_stock_io` AS select `t`.`recept_code` AS `recept_code`,`t`.`type` AS `type`,`t`.`out_dep_id` AS `out_dep_id`,`t`.`out_ware_id` AS `out_ware_id`,`d1`.`name` AS `out_dep_name`,`w1`.`name` AS `out_ware_name`,`t`.`in_dep_id` AS `in_dep_id`,`t`.`in_ware_id` AS `in_ware_id`,`d2`.`name` AS `in_dep_name`,`w2`.`name` AS `in_ware_name`,`t`.`state_list` AS `state_list`,`t`.`remark` AS `remark` from (((((select group_concat(`s`.`state` separator ',') AS `state_list`,group_concat(`s`.`remark` separator ',') AS `remark`,`s`.`recept_code` AS `recept_code`,`s`.`type` AS `type`,`s`.`out_dep_id` AS `out_dep_id`,`s`.`out_ware_id` AS `out_ware_id`,`s`.`in_dep_id` AS `in_dep_id`,`s`.`in_ware_id` AS `in_ware_id` from `tab_stock_io` `s` where (`s`.`status` = 0) group by `s`.`recept_code`,`s`.`type`,`s`.`out_dep_id`,`s`.`out_ware_id`,`s`.`in_dep_id`,`s`.`in_ware_id`) `t` left join `view_ware` `w1` on((`t`.`out_ware_id` = `w1`.`id`))) left join `tab_dep` `d1` on((`t`.`out_dep_id` = `d1`.`id`))) left join `view_ware` `w2` on((`t`.`in_ware_id` = `w2`.`id`))) left join `tab_dep` `d2` on((`t`.`in_dep_id` = `d2`.`id`))) order by substr(`t`.`recept_code`,-(14)) desc;

-- ----------------------------
-- View structure for view_supply
-- ----------------------------
DROP VIEW IF EXISTS `view_supply`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_supply` AS select `tab_supply`.`id` AS `id`,`tab_supply`.`name` AS `name`,`tab_supply`.`img` AS `img`,`tab_supply`.`phone` AS `phone`,`tab_supply`.`addr` AS `addr`,`tab_supply`.`info` AS `info`,`tab_supply`.`status` AS `status`,`tab_supply`.`create_name` AS `create_name`,`tab_supply`.`create_time` AS `create_time` from `tab_supply` where (`tab_supply`.`status` = 0) order by `tab_supply`.`id` desc;

-- ----------------------------
-- View structure for view_user
-- ----------------------------
DROP VIEW IF EXISTS `view_user`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_user` AS select `t`.`id` AS `id`,`t`.`dep_id` AS `dep_id`,`t`.`usr` AS `usr`,`t`.`name` AS `name`,`t`.`pwd` AS `pwd`,`t`.`role` AS `role`,`t`.`status` AS `status`,`t`.`create_name` AS `create_name`,`t`.`create_time` AS `create_time`,`d`.`name` AS `dep_name` from (`tab_user` `t` join `tab_dep` `d`) where ((`t`.`dep_id` = `d`.`id`) and (`t`.`status` = 0)) order by `t`.`id` desc;

-- ----------------------------
-- View structure for view_ware
-- ----------------------------
DROP VIEW IF EXISTS `view_ware`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_ware` AS select `w`.`id` AS `id`,`w`.`dep_id` AS `dep_id`,`w`.`code` AS `code`,`w`.`name` AS `name`,`w`.`addr` AS `addr`,`w`.`manager` AS `manager`,`w`.`info` AS `info`,`w`.`status` AS `status`,`w`.`create_name` AS `create_name`,`w`.`create_time` AS `create_time`,`d`.`name` AS `dep_name` from (`tab_ware` `w` join `tab_dep` `d`) where ((`w`.`dep_id` = `d`.`id`) and (`w`.`status` = 0)) order by `w`.`id` desc;

-- ----------------------------
-- Procedure structure for DEBUG_MSG
-- ----------------------------
DROP PROCEDURE IF EXISTS `DEBUG_MSG`;
delimiter ;;
CREATE PROCEDURE `DEBUG_MSG`(msg VARCHAR(21812))
BEGIN
    select concat('**', msg) AS '** DEBUG:';
END
;;
delimiter ;

-- ----------------------------
-- Function structure for FN_DATA_EXIST
-- ----------------------------
DROP FUNCTION IF EXISTS `FN_DATA_EXIST`;
delimiter ;;
CREATE FUNCTION `FN_DATA_EXIST`(`_dt` varchar(20), `_code` varchar(50))
 RETURNS int
  DETERMINISTIC
BEGIN
	DECLARE cnt BIGINT UNSIGNED;
	select count(*) into cnt from tab_sys where code=_code and dt=_dt;
	return cnt;
END
;;
delimiter ;

-- ----------------------------
-- Function structure for FN_PART_EXIST
-- ----------------------------
DROP FUNCTION IF EXISTS `FN_PART_EXIST`;
delimiter ;;
CREATE FUNCTION `FN_PART_EXIST`(`_part_id` varchar(50), `_ware_id` varchar(50))
 RETURNS int
  DETERMINISTIC
BEGIN
	DECLARE cnt BIGINT UNSIGNED;
	select count(*) into cnt from tab_stock where part_id=_part_id and ware_id=_ware_id;
	return cnt;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_AUDIT_STOCK_IO
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_AUDIT_STOCK_IO`;
delimiter ;;
CREATE PROCEDURE `PROC_AUDIT_STOCK_IO`(IN jsonData TEXT)
BEGIN

    -- 解析JSON数据
    SET @recept_code = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.recept_code'));
		SET @remark = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.remark'));
    SET @state = JSON_EXTRACT(jsonData, '$.state');
	
		UPDATE tab_stock_io SET state = @state, remark=@remark WHERE recept_code = @recept_code;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_CHECK_STOCK
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_CHECK_STOCK`;
delimiter ;;
CREATE PROCEDURE `PROC_CHECK_STOCK`(IN `jsonData` text)
BEGIN
	SET @in_list = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.in_list'));

	
	set @sql = CONCAT( 'UPDATE tab_stock SET status = 1 where id in ',@in_list);
	call DEBUG_MSG(@sql);
	
	PREPARE stmt FROM @sql;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_CHECK_STOCK_BY_ID
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_CHECK_STOCK_BY_ID`;
delimiter ;;
CREATE PROCEDURE `PROC_CHECK_STOCK_BY_ID`(IN `jsonData` text)
BEGIN
	SET @id = JSON_EXTRACT(jsonData, '$.id');
	SET @mode = JSON_EXTRACT(jsonData, '$.mode');
	
	
	UPDATE tab_stock SET status = @mode where id = @id;
	select * from view_stock;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_DEL_BY_ID
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_DEL_BY_ID`;
delimiter ;;
CREATE PROCEDURE `PROC_DEL_BY_ID`(IN `data` varchar(20000))
BEGIN
	
	SET @id = JSON_UNQUOTE(JSON_EXTRACT(data, '$.id'));
	SET @tab = JSON_UNQUOTE(JSON_EXTRACT(data, '$.tab'));
	SET @view = JSON_UNQUOTE(JSON_EXTRACT(data, '$.view'));

	SET @query1 = CONCAT('update ', @tab, ' set status = 1 where id = ', @id);
	PREPARE stmt FROM @query1;
	EXECUTE stmt;
	SET @query2 = CONCAT('SELECT id as `key`,t.* FROM ', @view, ' t');
	PREPARE stmt FROM @query2;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_DEL_DEP
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_DEL_DEP`;
delimiter ;;
CREATE PROCEDURE `PROC_DEL_DEP`(IN `data` text)
BEGIN
	
	DECLARE user_exists INT;
	DECLARE ware_exists INT;

  SET @dep_id = JSON_UNQUOTE(JSON_EXTRACT(data, '$.id'));


	SELECT COUNT(*) INTO user_exists FROM tab_user WHERE dep_id = @dep_id;
	SELECT COUNT(*) INTO ware_exists FROM tab_ware WHERE dep_id = @dep_id;

	IF user_exists = 0 AND ware_exists = 0 THEN
			UPDATE tab_dep SET status = 1 WHERE id = @dep_id;
			SELECT id AS `key`, t.* FROM tab_dep t WHERE status = 0 order by id desc;
	ELSE
		SELECT NULL INTO @result;
	END IF;

	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_DEL_MODEL
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_DEL_MODEL`;
delimiter ;;
CREATE PROCEDURE `PROC_DEL_MODEL`(IN `data` varchar(20000))
BEGIN
	
	SET @id = JSON_UNQUOTE(JSON_EXTRACT(data, '$.id'));
	SET @tab = JSON_UNQUOTE(JSON_EXTRACT(data, '$.tab'));
	SET @view = JSON_UNQUOTE(JSON_EXTRACT(data, '$.view'));

	SET @query1 = CONCAT('update ', @tab, ' set status = 1 where id = ', @id);
	PREPARE stmt FROM @query1;
	EXECUTE stmt;
	SET @query2 = CONCAT('SELECT id as `key`,t.* FROM ', @view, ' t');
	PREPARE stmt FROM @query2;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_DEL_SITE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_DEL_SITE`;
delimiter ;;
CREATE PROCEDURE `PROC_DEL_SITE`(IN `data` varchar(20000))
BEGIN
	SET @id = JSON_UNQUOTE(JSON_EXTRACT(data, '$.id'));
	
	UPDATE tab_site set status = 1 where id = @id;
-- 	SELECT id as `key`,t.* FROM tab_ware t where status = 0;
select * from view_site;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_DEL_STOCK_IO
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_DEL_STOCK_IO`;
delimiter ;;
CREATE PROCEDURE `PROC_DEL_STOCK_IO`(IN `data` varchar(20000))
BEGIN
	
	SET @recept_code = JSON_UNQUOTE(JSON_EXTRACT(data, '$.recept_code'));
	
	UPDATE tab_stock_io set status = 1 where recept_code = @recept_code;
	SELECT * from view_stock_io;
	

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_DEL_SUPPLY
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_DEL_SUPPLY`;
delimiter ;;
CREATE PROCEDURE `PROC_DEL_SUPPLY`(IN `data` varchar(20000))
BEGIN
	
	SET @id = JSON_UNQUOTE(JSON_EXTRACT(data, '$.id'));
	
	UPDATE tab_supply set status = 1 where id = @id;
	SELECT id as `key`,t.* FROM view_supply t;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_DEL_USER
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_DEL_USER`;
delimiter ;;
CREATE PROCEDURE `PROC_DEL_USER`(IN `data` varchar(20000))
BEGIN
	SET @id = JSON_UNQUOTE(JSON_EXTRACT(data, '$.id'));
	
	UPDATE tab_user set status = 1 where id = @id;
-- 	SELECT id as `key`,t.* FROM tab_ware t where status = 0;
	select * from view_user;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_DEL_WARE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_DEL_WARE`;
delimiter ;;
CREATE PROCEDURE `PROC_DEL_WARE`(IN `data` varchar(20000))
BEGIN
	SET @id = JSON_UNQUOTE(JSON_EXTRACT(data, '$.id'));
	
	UPDATE tab_ware set status = 1 where id = @id;
-- 	SELECT id as `key`,t.* FROM tab_ware t where status = 0;
	select * from view_ware;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_IMPORT_MODEL
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_IMPORT_MODEL`;
delimiter ;;
CREATE PROCEDURE `PROC_IMPORT_MODEL`(IN jsonData TEXT)
BEGIN
    DECLARE i INT DEFAULT 0;
    SET @len  = JSON_LENGTH(jsonData);
		
    WHILE i < @len DO
			SET @name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, CONCAT('$[', i, ']')));
			IF NOT EXISTS (SELECT * FROM tab_model WHERE name = @name) THEN
				INSERT INTO tab_model (name,status) VALUES (@name,0);
			END IF;
			SET i = i + 1;
		END WHILE;
		select * from view_model;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_IMPORT_PART
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_IMPORT_PART`;
delimiter ;;
CREATE PROCEDURE `PROC_IMPORT_PART`(IN jsonData TEXT)
BEGIN
    DECLARE i INT DEFAULT 0;
    SET @len  = JSON_LENGTH(jsonData);
		
    WHILE i < @len DO
			SET @code = JSON_UNQUOTE(JSON_EXTRACT(jsonData, CONCAT('$[', i, '].code')));
			SET @name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, CONCAT('$[', i, '].name')));
			SET @sid = JSON_EXTRACT(jsonData, CONCAT('$[', i, '].sid'));
			SET @mid = JSON_EXTRACT(jsonData, CONCAT('$[', i, '].mid'));
			SET @info = JSON_UNQUOTE(JSON_EXTRACT(jsonData, CONCAT('$[', i, '].info')));
			SET @qrcode = JSON_UNQUOTE(JSON_EXTRACT(jsonData, CONCAT('$[', i, '].qrcode')));
			
			
			INSERT INTO tab_part (code,name,img,sid,mid,qrcode,info,status) VALUES (@code,@name,'/img/image.svg',@sid,@mid,@qrcode,@info,0);
			
			SET i = i + 1;
		END WHILE;
		select * from view_part;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_IMPORT_SUPPLY
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_IMPORT_SUPPLY`;
delimiter ;;
CREATE PROCEDURE `PROC_IMPORT_SUPPLY`(IN jsonData TEXT)
BEGIN
    DECLARE i INT DEFAULT 0;
    SET @len  = JSON_LENGTH(jsonData);
		
    WHILE i < @len DO
			SET @name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, CONCAT('$[', i, ']')));
			IF NOT EXISTS (SELECT * FROM tab_supply WHERE name = @name) THEN
				INSERT INTO tab_supply (name,status,info) VALUES (@name,0,'[]');
			END IF;
			SET i = i + 1;
		END WHILE;
		select * from view_supply;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_LOGIN
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_LOGIN`;
delimiter ;;
CREATE PROCEDURE `PROC_LOGIN`(IN `data` varchar(20000))
BEGIN
	DECLARE _usr  varchar(20) 	default null;
  DECLARE _pwd 	varchar(50) 	default null;

	SET _usr = JSON_UNQUOTE(JSON_EXTRACT(data,'$.usr'));
	SET _pwd = JSON_UNQUOTE(JSON_EXTRACT(data,'$.pwd'));
	
	SELECT 
		u.usr,u.name,u.role,u.dep_id, d.name as dep_name 
	FROM 
		tab_user u,tab_dep d
	where  
		u.usr = _usr AND u.pwd = _pwd and u.dep_id = d.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_PROC_STOCK_IO
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_PROC_STOCK_IO`;
delimiter ;;
CREATE PROCEDURE `PROC_PROC_STOCK_IO`(IN jsonData TEXT)
BEGIN
	DECLARE i INT DEFAULT 0;
	
	SET @mode = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.mode'));
	SET @num = JSON_EXTRACT(jsonData, '$.num');
	SET @num_real = JSON_EXTRACT(jsonData, '$.num_real');
	SET @id = JSON_EXTRACT(jsonData, '$.id');
	SET @type = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.type'));
	SET @recept_code = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.recept_code'));
	SET @part_id = JSON_EXTRACT(jsonData, '$.part_id');
	SET @remark = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.remark'));
	SET @create_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.create_name'));
	SET @create_time = DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s');
	
  -- 入库
	IF @mode = 'in' THEN
		SET @in_dep_id = JSON_EXTRACT(jsonData, '$.in_dep_id');
		SET @in_ware_id = JSON_EXTRACT(jsonData, '$.in_ware_id');
		
		IF @num = @num_real THEN 
			-- 	全部入库
			update tab_stock_io set state = 22, remark=@remark, create_name=@create_name, create_time=@create_time where id =@id;
			-- 更新库存数量
			if FN_PART_EXIST(@part_id,@in_ware_id)>0 then 
				update tab_stock set num = num + @num where ware_id = @in_ware_id and part_id=@part_id;
			else
				insert into tab_stock (ware_id,part_id,num,status,create_name,create_time) 
					VALUES (@in_ware_id, @part_id,@num, 0, @create_name, @create_time);
			end if;
		ELSE 
      -- 	部分入库
			SET @num = @num - @num_real;
			UPDATE tab_stock_io set num = @num, remark=@remark, create_name=@create_name, create_time=@create_time where id =@id;
			INSERT INTO tab_stock_io (recept_code,type,in_dep_id, in_ware_id, part_id, num, status, state, remark, create_name, create_time)
				VALUES (@recept_code,@type,@in_dep_id, @in_ware_id, @part_id, @num_real, 0, 22, @remark, @create_name, @create_time);
			
			-- 更新库存数量
			if FN_PART_EXIST(@part_id,@in_ware_id)>0 then 
				update tab_stock set num = num + @num_real where ware_id = @in_ware_id and part_id=@part_id;
			else
				insert into tab_stock (ware_id,part_id,num,status,create_name,create_time) 
					VALUES (@in_ware_id, @part_id,@num_real, 0, @create_name, @create_time);
			end if;
		END IF;
	ELSEIF @mode = 'in_err' THEN
		-- 	入库错误
		update tab_stock_io set state = 23, remark=@remark, create_name=@create_name, create_time=@create_time where id =@id;
	END IF;
	
	-- 移动
	IF @mode = 'mov' THEN
		SET @in_ware_id = JSON_EXTRACT(jsonData, '$.in_ware_id');
		SET @out_ware_id = JSON_EXTRACT(jsonData, '$.out_ware_id');
		
    -- 修改入库库存数量 
		update tab_stock_io set state = 32, remark=@remark, create_name=@create_name, create_time=@create_time where id =@id;
		if FN_PART_EXIST(@part_id,@in_ware_id)>0 then 
			update tab_stock set num = num + @num where ware_id = @in_ware_id and part_id=@part_id;
		else
			insert into tab_stock (ware_id,part_id,num,status,create_name,create_time) 
				VALUES (@in_ware_id, @part_id,@num, 0, @create_name, @create_time);
		end if;
		-- 修改出库库存数量 
		update tab_stock set num = num - @num,create_name=@create_name, create_time=@create_time where ware_id = @out_ware_id and part_id=@part_id;
		
	ELSEIF @mode = 'mov_err' THEN
		-- 	移动错误
		update tab_stock_io set state = 33, remark=@remark, create_name=@create_name, create_time=@create_time where id =@id;
	END IF;
	
	
	-- 出库
	IF @mode = 'out' THEN
		SET @out_ware_id = JSON_EXTRACT(jsonData, '$.out_ware_id');
		
		update tab_stock_io set state = 12, remark=@remark, create_name=@create_name, create_time=@create_time where id =@id;
		-- 修改出库库存数量 
		update tab_stock set num = num - @num,create_name=@create_name, create_time=@create_time where ware_id = @out_ware_id and part_id=@part_id;
	ELSEIF @mode = 'out_err' THEN
		-- 	移动错误
		update tab_stock_io set state = 13, remark=@remark, create_name=@create_name, create_time=@create_time where id =@id;
	END IF;
	
	SELECT 
			t.*, 
			t.num as io_num,
			p.name as part_name,
			p.code as part_code,
			w1.name as out_ware_name,
			w2.name as in_ware_name 
		from  tab_stock_io t
		LEFT JOIN tab_ware w1 ON t.out_ware_id = w1.id
		LEFT JOIN tab_ware w2 ON t.in_ware_id = w2.id
		LEFT JOIN tab_part p on t.part_id = p.id
		where t.recept_code = @recept_code;
	
	
    
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_DEP
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_DEP`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_DEP`(IN `data` varchar(20000))
BEGIN
	
	select u.id as `key`, u.* from tab_dep u where status = 0 order by id desc;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_MODEL
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_MODEL`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_MODEL`(IN `data` varchar(20000))
BEGIN
	
	select * from view_model ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_PART
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_PART`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_PART`(IN `data` varchar(20000))
BEGIN
	
	select * from view_part_export;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_PART_DESC
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_PART_DESC`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_PART_DESC`(IN `data` varchar(20000))
BEGIN
	
	select * from view_part_export ORDER BY id DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_PART_SEL
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_PART_SEL`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_PART_SEL`(IN `data` varchar(20000))
BEGIN
	
	select id,code,name from tab_part;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_SITE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_SITE`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_SITE`(IN `data` varchar(20000))
BEGIN
	
	select * from view_site;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_STOCK
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_STOCK`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_STOCK`(IN `data` varchar(20000))
BEGIN
	
	select * from view_stock;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_STOCK_BY_WARE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_STOCK_BY_WARE`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_STOCK_BY_WARE`(IN `data` varchar(20000))
BEGIN
	SET @ware_id = JSON_EXTRACT(data, '$.ware_id');
	
	SELECT 
		s.*, 
		p.code,
		p.name,
		p.id as part_id
	FROM tab_stock s	
	LEFT JOIN tab_part p ON s.part_id = p.id
	where s.ware_id = @ware_id;

	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_STOCK_IO
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_STOCK_IO`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_STOCK_IO`(IN `data` varchar(20000))
BEGIN
	select * from view_stock_io;
	
-- 		select * from tab_stock_io;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_STOCK_IO_BY_CODE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_STOCK_IO_BY_CODE`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_STOCK_IO_BY_CODE`(IN `data` varchar(20000))
BEGIN
	SET @recept_code = JSON_UNQUOTE(JSON_EXTRACT(data, '$.recept_code'));
	SET @io = JSON_UNQUOTE(JSON_EXTRACT(data, '$.io'));
	
	if (@IO= 'in') THEN 
		SELECT 
			t.*, 
			s.num as stock_num,
			t.num as io_num,
			p.name as part_name,
			p.code as part_code,
			w1.name as out_ware_name,
			w2.name as in_ware_name 
		from  tab_stock_io t
		LEFT JOIN tab_ware w1 ON t.out_ware_id = w1.id
		LEFT JOIN tab_ware w2 ON t.in_ware_id = w2.id
		LEFT JOIN tab_stock s on s.ware_id = t.in_ware_id and s.part_id = t.part_id
		LEFT JOIN tab_part p on s.part_id = p.id
		where t.recept_code = @recept_code;
	ELSE 
		SELECT 
			t.*, 
			s.num as stock_num,
			t.num as io_num,
			p.name as part_name,
			p.code as part_code,
			w1.name as out_ware_name,
			w2.name as in_ware_name 
		from  tab_stock_io t
		LEFT JOIN tab_ware w1 ON t.out_ware_id = w1.id
		LEFT JOIN tab_ware w2 ON t.in_ware_id = w2.id
		LEFT JOIN tab_stock s on s.ware_id = t.out_ware_id and s.part_id = t.part_id
		LEFT JOIN tab_part p on s.part_id = p.id
		where t.recept_code = @recept_code;
	END IF;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_STOCK_IO_BY_RC
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_STOCK_IO_BY_RC`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_STOCK_IO_BY_RC`(IN `jsonData` text)
BEGIN
	SET @recept_code = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.recept_code'));
	
	SELECT 
			t.*, 
-- 			s.num as stock_num,
			t.num as io_num,
			p.name as part_name,
			p.code as part_code,
			w1.name as out_ware_name,
			w2.name as in_ware_name 
		from  tab_stock_io t
		LEFT JOIN tab_ware w1 ON t.out_ware_id = w1.id
		LEFT JOIN tab_ware w2 ON t.in_ware_id = w2.id
-- 		LEFT JOIN tab_stock s on s.ware_id = t.in_ware_id 
		LEFT JOIN tab_part p on t.part_id = p.id
		where t.recept_code = @recept_code;
	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_SUPPLY
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_SUPPLY`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_SUPPLY`(IN `data` varchar(20000))
BEGIN
	
	select * from view_supply ;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_TABLE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_TABLE`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_TABLE`(IN `data` varchar(20000))
BEGIN
	
	SET @tab = JSON_UNQUOTE(JSON_EXTRACT(data, '$.tab'));

	SET @query = CONCAT('SELECT id as `key`,t.* FROM ', @tab, ' t');
	PREPARE stmt FROM @query;
	EXECUTE stmt;
	DEALLOCATE PREPARE stmt;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_USER
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_USER`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_USER`(IN `data` varchar(20000))
BEGIN
	
	select * from view_user;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_WARE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_WARE`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_WARE`(IN `data` varchar(20000))
BEGIN
	
	select * from view_ware;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_QUERY_WARE_BY_DEP
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_QUERY_WARE_BY_DEP`;
delimiter ;;
CREATE PROCEDURE `PROC_QUERY_WARE_BY_DEP`(IN jsonData TEXT)
BEGIN
	SET @dep_id = JSON_EXTRACT(jsonData, '$.dep_id');
	select * from view_ware where dep_id = @dep_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_SAVE_DEP
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_SAVE_DEP`;
delimiter ;;
CREATE PROCEDURE `PROC_SAVE_DEP`(IN jsonData TEXT)
BEGIN
    -- 解析JSON数据
		SET @id = JSON_EXTRACT(jsonData, '$.id');
    SET @method = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.method'));
    SET @name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.name'));
		SET @addr = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.addr'));
		SET @phone = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.phone'));
		SET @create_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.create_name'));
		SET @info = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.info'));
    
    -- 判断是更新还是插入
    IF @method = 'update' THEN
        -- 更新数据
        UPDATE tab_dep
        SET
            name = @name,
            addr = @addr,
            phone = @phone,
            info = @info,
						create_name = @create_name,
            create_time = NOW()
        WHERE id = @id;
    ELSEIF @method = 'insert' THEN
        INSERT INTO tab_dep (name, addr, phone, info, status, create_name, create_time)
        VALUES (@name,@addr, @phone, @info, 0, @create_name, DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s'));
    END IF;
    
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_SAVE_MODEL
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_SAVE_MODEL`;
delimiter ;;
CREATE PROCEDURE `PROC_SAVE_MODEL`(IN jsonData TEXT)
BEGIN
    -- 定义变量
    DECLARE v_method VARCHAR(10);
    DECLARE v_name VARCHAR(200);
		DECLARE v_create_name VARCHAR(50);
		DECLARE v_id INT;
    
    -- 解析JSON数据
    SET v_method = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.method'));
    SET v_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.name'));
		SET v_id = JSON_EXTRACT(jsonData, '$.id');
		SET v_create_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.create_name'));
    
    -- 判断是更新还是插入
    IF v_method = 'update' THEN
        -- 更新数据
        UPDATE tab_model
        SET
            name = v_name,
						create_name = v_create_name,
            create_time = NOW()
        WHERE id = v_id;
    ELSEIF v_method = 'insert' THEN
        INSERT INTO tab_model (name, status, create_name, create_time)
        VALUES (v_name,  0, v_create_name, DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s'));
    END IF;
    
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_SAVE_PART
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_SAVE_PART`;
delimiter ;;
CREATE PROCEDURE `PROC_SAVE_PART`(IN jsonData TEXT)
BEGIN
    -- 定义变量
    DECLARE v_method VARCHAR(10);
    DECLARE v_code VARCHAR(50);
    DECLARE v_name VARCHAR(200);
    DECLARE v_img VARCHAR(100);
		DECLARE v_create_name VARCHAR(50);
		DECLARE v_id INT;
    DECLARE v_sid INT;
    DECLARE v_mid INT;
    DECLARE v_info TEXT;
		 DECLARE v_qrcode TEXT;
    
    -- 解析JSON数据
    SET v_method = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.method'));
    SET v_code = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.code'));
		SET v_qrcode = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.qrcode'));
    SET v_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.name'));
    SET v_img = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.img'));
		SET v_id = JSON_EXTRACT(jsonData, '$.id');
    SET v_sid = JSON_EXTRACT(jsonData, '$.sid');
    SET v_mid = JSON_EXTRACT(jsonData, '$.mid');
    SET v_info = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.info'));
		SET v_create_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.create_name'));
    
    -- 判断是更新还是插入
    IF v_method = 'update' THEN
        -- 更新数据
        UPDATE tab_part
        SET
            code = v_code,
            name = v_name,
            img = v_img,
            sid = v_sid,
            mid = v_mid,
            info = v_info,
						qrcode = v_qrcode,
						create_name = v_create_name,
            create_time = NOW()
        WHERE id = v_id;
    ELSEIF v_method = 'insert' THEN
        INSERT INTO tab_part (code, name, img, sid, mid, info, status, qrcode, create_name, create_time)
        VALUES (v_code, v_name, v_img, v_sid, v_mid, v_info, 0, v_qrcode, v_create_name, DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s'));
    END IF;
    
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_SAVE_SITE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_SAVE_SITE`;
delimiter ;;
CREATE PROCEDURE `PROC_SAVE_SITE`(IN jsonData TEXT)
BEGIN
    -- 解析JSON数据
		SET @id = JSON_EXTRACT(jsonData, '$.id');
    SET @method = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.method'));
		SET @dep_id = JSON_EXTRACT(jsonData, '$.dep_id');
    SET @name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.name'));
		SET @phone = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.phone'));
		SET @addr = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.addr'));
		SET @manager = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.manager'));
		SET @create_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.create_name'));
		SET @info = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.info'));
    
    -- 判断是更新还是插入
    IF @method = 'update' THEN
        -- 更新数据
        UPDATE tab_site
        SET
					  dep_id = @dep_id,
            name = @name,
						phone = @phone,
            manager = @manager,
            addr = @addr,
            info = @info,
						create_name = @create_name,
            create_time = NOW()
        WHERE id = @id;
    ELSEIF @method = 'insert' THEN
        INSERT INTO tab_site (dep_id, phone, name, addr, manager, info, status, create_name, create_time)
        VALUES (@dep_id, @phone, @name,@addr, @manager, @info, 0, @create_name, DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s'));
    END IF;
    
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_SAVE_STOCK_IO
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_SAVE_STOCK_IO`;
delimiter ;;
CREATE PROCEDURE `PROC_SAVE_STOCK_IO`(IN jsonData TEXT)
BEGIN
	DECLARE i INT DEFAULT 0;
	
	SET @method = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.method'));
	SET @type = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.type'));
	SET @create_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.create_name'));
	SET @create_time = DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s');
	SET @list = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.list'));
	SET @len  = JSON_LENGTH(@list);
	
	IF @type = '仕入' or @type = '返却' or @type = '一時保管' THEN
		SET @in_dep_id = JSON_EXTRACT(jsonData, '$.in_dep_id');
    SET @in_ware_id = JSON_EXTRACT(jsonData, '$.in_ware_id');
		
		WHILE i < @len DO
			SET @id = (JSON_EXTRACT(@list, CONCAT('$[', i, '].id')));
			SET @part_id = (JSON_EXTRACT(@list, CONCAT('$[', i, '].key')));
			SET @num = JSON_EXTRACT(@list, CONCAT('$[', i, '].val'));
			SET @recept_code = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.recept_code'));
		
			IF @method = 'update' THEN
				DELETE FROM tab_stock_io WHERE recept_code = @recept_code;
			END IF;
	
			SET @recept_code = CONCAT('HOSO-IN-', DATE_FORMAT(NOW(), '%Y%m%d%H%i%s'));
			INSERT INTO tab_stock_io (recept_code,type,in_dep_id, in_ware_id, part_id, num, status, state, create_name, create_time)
			VALUES (@recept_code,@type,@in_dep_id, @in_ware_id, @part_id, @num, 0, 20, @create_name, @create_time);
	
			SET i = i + 1;
		END WHILE;
	ELSEIF @type = '販売' or @type = '社内使用' THEN
		SET @out_dep_id = JSON_EXTRACT(jsonData, '$.out_dep_id');
    SET @out_ware_id = JSON_EXTRACT(jsonData, '$.out_ware_id');
		
		WHILE i < @len DO
			SET @part_id = (JSON_EXTRACT(@list, CONCAT('$[', i, '].key')));
			SET @num = JSON_EXTRACT(@list, CONCAT('$[', i, '].val'));
			SET @recept_code = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.recept_code'));
		
			IF @method = 'update' THEN
				DELETE FROM tab_stock_io WHERE recept_code = @recept_code;
			END IF;
	
			SET @recept_code = CONCAT('HOSO-OUT-', DATE_FORMAT(NOW(), '%Y%m%d%H%i%s'));
			INSERT INTO tab_stock_io (recept_code,type,out_dep_id, out_ware_id, part_id, num, status, state, create_name, create_time)
			VALUES (@recept_code,@type,@out_dep_id, @out_ware_id, @part_id, @num, 0, 10, @create_name, @create_time);
	
			SET i = i + 1;
		END WHILE;
	ELSEIF @type = '社内移動'THEN
		SET @in_dep_id = JSON_EXTRACT(jsonData, '$.in_dep_id');
    SET @in_ware_id = JSON_EXTRACT(jsonData, '$.in_ware_id');
		SET @out_dep_id = JSON_EXTRACT(jsonData, '$.out_dep_id');
    SET @out_ware_id = JSON_EXTRACT(jsonData, '$.out_ware_id');
		
		WHILE i < @len DO
			SET @part_id = (JSON_EXTRACT(@list, CONCAT('$[', i, '].key')));
			SET @num = JSON_EXTRACT(@list, CONCAT('$[', i, '].val'));
			SET @recept_code = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.recept_code'));
		
			IF @method = 'update' THEN
				DELETE FROM tab_stock_io WHERE recept_code = @recept_code;
			END IF;
	
			SET @recept_code = CONCAT('HOSO-MOV-', DATE_FORMAT(NOW(), '%Y%m%d%H%i%s'));
			INSERT INTO tab_stock_io (recept_code,type,in_dep_id, in_ware_id,out_dep_id, out_ware_id, part_id, num, status, state, create_name, create_time)
			VALUES (@recept_code,@type,@in_dep_id, @in_ware_id, @out_dep_id, @out_ware_id, @part_id, @num, 0, 30, @create_name, @create_time);
	
			SET i = i + 1;
		END WHILE;
	END IF;    
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_SAVE_STOCK_NUM
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_SAVE_STOCK_NUM`;
delimiter ;;
CREATE PROCEDURE `PROC_SAVE_STOCK_NUM`(IN `data` varchar(20000))
BEGIN
	SET @id = JSON_EXTRACT(data, '$.id');
	SET @ware_id = JSON_UNQUOTE(JSON_EXTRACT(data, '$.ware_id'));
	SET @num = JSON_UNQUOTE(JSON_EXTRACT(data, '$.num'));
	
	
	UPDATE tab_stock set num = @num, status = 0  where id = @id;
	
	SELECT 
		s.*, 
		p.code,
		p.name,
		p.id as part_id
	FROM tab_stock s	
	LEFT JOIN tab_part p ON s.part_id = p.id
	where s.ware_id = @ware_id;

	
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_SAVE_SUPPLY
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_SAVE_SUPPLY`;
delimiter ;;
CREATE PROCEDURE `PROC_SAVE_SUPPLY`(IN jsonData TEXT)
BEGIN
    -- 定义变量
		DECLARE v_id INT;
    DECLARE v_method VARCHAR(10);
    DECLARE v_name VARCHAR(200);
    DECLARE v_img VARCHAR(100);
		DECLARE v_phone VARCHAR(50);
		DECLARE v_addr VARCHAR(50);
		DECLARE v_create_name VARCHAR(50);
    DECLARE v_info TEXT;
    
    -- 解析JSON数据
		SET v_id = JSON_EXTRACT(jsonData, '$.id');
    SET v_method = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.method'));
    SET v_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.name'));
    SET v_img = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.img'));
		SET v_phone = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.phone'));
		SET v_addr = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.addr'));
		SET v_create_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.create_name'));
		SET v_info = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.info'));
    
    -- 判断是更新还是插入
    IF v_method = 'update' THEN
        -- 更新数据
        UPDATE tab_supply
        SET
            name = v_name,
            img = v_img,
            phone = v_phone,
            addr = v_addr,
            info = v_info,
						create_name = v_create_name,
            create_time = NOW()
        WHERE id = v_id;
    ELSEIF v_method = 'insert' THEN
        INSERT INTO tab_supply (name, img, phone, addr, info, status, create_name, create_time)
        VALUES (v_name, v_img, v_phone, v_addr, v_info, 0, v_create_name, DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s'));
    END IF;
    
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_SAVE_USER
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_SAVE_USER`;
delimiter ;;
CREATE PROCEDURE `PROC_SAVE_USER`(IN jsonData TEXT)
BEGIN
    -- 解析JSON数据
		SET @id = JSON_EXTRACT(jsonData, '$.id');
    SET @method = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.method'));
		SET @dep_id = JSON_EXTRACT(jsonData, '$.dep_id');
		SET @usr = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.usr'));
    SET @name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.name'));
		SET @pwd = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.pwd'));
		SET @role = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.role'));
		SET @create_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.create_name'));
    
    -- 判断是更新还是插入
    IF @method = 'update' THEN
        -- 更新数据
        UPDATE tab_user
        SET
					  dep_id = @dep_id,
            usr = @usr,
            name = @name,
            pwd = @pwd,
            role = @role,
						create_name = @create_name,
            create_time = NOW()
        WHERE id = @id;
    ELSEIF @method = 'insert' THEN
        INSERT INTO tab_user (dep_id, usr, name, pwd, role, status, create_name, create_time)
        VALUES (@dep_id, @usr, @name,@pwd, @role, 0, @create_name, DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s'));
    END IF;
    
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for PROC_SAVE_WARE
-- ----------------------------
DROP PROCEDURE IF EXISTS `PROC_SAVE_WARE`;
delimiter ;;
CREATE PROCEDURE `PROC_SAVE_WARE`(IN jsonData TEXT)
BEGIN
    -- 解析JSON数据
		SET @id = JSON_EXTRACT(jsonData, '$.id');
    SET @method = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.method'));
		SET @dep_id = JSON_EXTRACT(jsonData, '$.dep_id');
		SET @code = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.code'));
    SET @name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.name'));
		SET @addr = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.addr'));
		SET @manager = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.manager'));
		SET @create_name = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.create_name'));
		SET @info = JSON_UNQUOTE(JSON_EXTRACT(jsonData, '$.info'));
    
    -- 判断是更新还是插入
    IF @method = 'update' THEN
        -- 更新数据
        UPDATE tab_ware
        SET
					  dep_id = @dep_id,
            name = @name,
            code = @code,
            manager = @manager,
            addr = @addr,
            info = @info,
						create_name = @create_name,
            create_time = NOW()
        WHERE id = @id;
    ELSEIF @method = 'insert' THEN
        INSERT INTO tab_ware (dep_id, code, name, addr, manager, info, status, create_name, create_time)
        VALUES (@dep_id, @code, @name,@addr, @manager, @info, 0, @create_name, DATE_FORMAT(NOW(), '%Y-%m-%d %H:%i:%s'));
    END IF;
    
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
