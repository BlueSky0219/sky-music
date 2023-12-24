package com.sky.skymusic.domain.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author BlueSky
 * @date 2023/12/15
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class SingerEntity extends BaseEntity {

    /**
     *歌手ID
     */
    private Long singerId;

    /**
     *歌手姓名
     */
    private String singerName;
}
