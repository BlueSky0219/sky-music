package com.sky.skymusic.entity;

import lombok.Data;
import lombok.EqualsAndHashCode;

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
