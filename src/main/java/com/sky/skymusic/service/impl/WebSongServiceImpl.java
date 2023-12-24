package com.sky.skymusic.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sky.skymusic.domain.entity.SongEntity;
import com.sky.skymusic.mapper.WebSongMapper;
import com.sky.skymusic.service.WebSongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author BlueSky
 * @date 2023/12/17
 */
@Service
public class WebSongServiceImpl implements WebSongService {

    @Autowired
    private WebSongMapper webSongMapper;


    @Override
    public PageInfo<SongEntity> pageSong() {

//        PageHelper.startPage(1, 10);
        List<SongEntity> list = webSongMapper.select();
        return new PageInfo<>(list);
    }
}
