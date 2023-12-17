package com.sky.skymusic.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;

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
