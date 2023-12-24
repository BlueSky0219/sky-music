package com.sky.skymusic.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.sky.skymusic.domain.entity.SongEntity;

import java.util.List;

/**
 * @author BlueSky
 * @date 2023/12/17
 */
public interface WebSongService {
    PageInfo<SongEntity> pageSong();
}
