package com.sky.skymusic.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sky.skymusic.common.util.AjaxResult;
import com.sky.skymusic.domain.entity.SongEntity;
import com.sky.skymusic.service.WebSongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author BlueSky
 * @date 2023/12/17
 */
@RestController
@RequestMapping("/web/song")
public class WebSongController {

    @Autowired
    private WebSongService webSongService;

    @GetMapping
    public AjaxResult querySongList() {

        PageInfo<SongEntity> songEntityList = webSongService.pageSong();

        return AjaxResult.success(songEntityList);
    }
}
