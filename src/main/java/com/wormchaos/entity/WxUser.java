package com.wormchaos.entity;

import lombok.Data;

import javax.persistence.Table;
import java.util.Date;

/**
 * 微信用户表
 */
@Data
@Table(name = "t_wx_user")
public class WxUser {

    /**
     * 用户openId
     */
    private String openId;

    /**
     * 用户上一次登陆code
     */
    private String code;

    /**
     * 后台生成token
     */
    private String token;

    /**
     * 用户上次登陆时间
     */
    private Date updateTime;

    /**
     * 用户首次登陆时间
     */
    private Date createTime;
}
