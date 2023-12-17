package com.sky.skymusic.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class AlbumEntity extends BaseEntity {

    /**
     * 专辑ID
     */
    private Long albumId;
    /**
     * 专辑名
     */
    private String albumName;
}
