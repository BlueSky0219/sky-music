package com.sky.skymusic.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class SongAlbumEntity extends BaseEntity {

    /**
     * 歌曲ID
     */
    private Long songId;

    /**
     * 专辑ID
     */
    private Long albumId;
}
