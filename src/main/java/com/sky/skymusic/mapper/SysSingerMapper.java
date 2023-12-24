package com.sky.skymusic.mapper;

import com.sky.skymusic.domain.entity.SingerEntity;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author BlueSky
 * @date 2023/12/20
 */
public interface SysSingerMapper {

    SingerEntity selectByName(String singerName);
}
