package com.sky.skymusic.mapper;

import com.sky.skymusic.domain.entity.SongEntity;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @author BlueSky
 * @date 2023/12/17
 */
public interface WebSongMapper {


    List<SongEntity> select();
}
