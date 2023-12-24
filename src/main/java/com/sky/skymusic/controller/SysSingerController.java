package com.sky.skymusic.controller;

import com.sky.skymusic.service.SysSingerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author BlueSky
 * @date 2023/12/20
 */
@RestController
@RequestMapping("/sys/singer")
public class SysSingerController {

    @Autowired
    private SysSingerService sysSingerService;
}
