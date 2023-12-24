package com.sky.skymusic.mapper;

import com.sky.skymusic.domain.entity.AlbumEntity;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author BlueSky
 * @date 2023/12/20
 */
public interface SysAlbumMapper {
    AlbumEntity selectByName(String albumName);
}
