package com.wormchaos.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * test controller.
 */
@RestController
public class TestController {

    @Value("${test}")
    private String test;

    Logger LOGGER = LogManager.getLogger(LogManager.ROOT_LOGGER_NAME);

//    @Value("${spring.profile.active}")
//    private String version;

    @Value("${spring.datasource.url}")
    private String url;

    @RequestMapping(value = "test")
    public String test() {
        LOGGER.info("logger data test:{}", url);
        return url;
    }

    @RequestMapping(value = "exception")
    public String exception() {
        int a = 1;
        int b = 0;
        int c = a / b;
        return url;
    }

}
