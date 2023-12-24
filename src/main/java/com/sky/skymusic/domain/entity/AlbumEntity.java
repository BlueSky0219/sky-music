package com.sky.skymusic.domain.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author BlueSky
 * @date 2023/12/15
 */
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
