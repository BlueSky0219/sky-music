package com.sky.skymusic.domain.dto;

import lombok.Data;

/**
 * @author BlueSky
 * @date 2023/12/20
 */
@Data
public class SysSongAddDTO {

    /**
     * 歌曲名称
     */
    private String songName;

    /**
     * 歌曲出处
     */
    private String songSource;

    /**
     * 歌手姓名
     */
    private String singerName;

    /**
     * 专辑名称
     */
    private String albumName;
}
