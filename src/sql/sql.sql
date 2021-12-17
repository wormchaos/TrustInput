-- 用户表
CREATE TABLE `t_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `open_id` varchar(255) NOT NULL DEFAULT '' COMMENT '用户微信ID',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user` varchar(50) NOT NULL DEFAULT 'system' COMMENT '创建人',
  `update_user` varchar(50) NOT NULL DEFAULT 'system' COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- 微信用户表
CREATE TABLE `t_wx_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `open_id` varchar(255) NOT NULL DEFAULT '' COMMENT '用户微信ID',
  `code` varchar(255) NOT NULL DEFAULT '' COMMENT '用户最后一次登陆code',
  `token` varchar(255) NOT NULL DEFAULT '' COMMENT 'token',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最近一次登陆时间',
  `create_user` varchar(50) NOT NULL DEFAULT 'system' COMMENT '创建人',
  `update_user` varchar(50) NOT NULL DEFAULT 'system' COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='微信用户表';