package com.sky.skymusic.domain.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author BlueSky
 * @date 2023/12/15
 */
@Data
@EqualsAndHashCode(callSuper = true) // 添加父类的属性
public class SongEntity extends BaseEntity {

    /**
     * 歌曲ID
     */
    private Long songId;

    /**
     * 歌曲歌手ID
     */
    private Long singerId;

    /**
     * 歌曲专辑ID
     */
    private Long albumId;

    /**
     * 歌曲名称
     */
    private String songName;

    /**
     * 歌曲出处
     */
    private String songSource;

    /**
     * 歌曲地址
     */
    private String songUrl;
}
