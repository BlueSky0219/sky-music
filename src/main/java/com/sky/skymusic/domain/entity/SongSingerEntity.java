package com.sky.skymusic.domain.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author BlueSky
 * @date 2023/12/15
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class SongSingerEntity extends BaseEntity {

    /**
     * 歌曲ID
     */
    private Long songId;

    /**
     * 歌手ID
     */
    private Long singerId;
}
