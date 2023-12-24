package com.sky.skymusic.mapper;

import com.sky.skymusic.domain.entity.SongEntity;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author BlueSky
 * @date 2023/12/18
 */
public interface SysSongMapper {

    /**
     * 插入音乐
     * @param songEntity
     * @return
     */
    int insert(SongEntity songEntity);
}
