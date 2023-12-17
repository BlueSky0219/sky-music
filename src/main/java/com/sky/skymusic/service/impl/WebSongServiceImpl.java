package com.sky.skymusic.service.impl;

import com.sky.skymusic.mapper.WebSongMapper;
import com.sky.skymusic.service.WebSongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author BlueSky
 * @date 2023/12/17
 */
@Service
public class WebSongServiceImpl implements WebSongService {

    @Autowired
    private WebSongMapper webSongMapper;


}
