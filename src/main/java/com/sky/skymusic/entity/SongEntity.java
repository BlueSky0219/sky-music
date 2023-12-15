package com.sky.skymusic.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.sky.skymusic.common.entity.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author BlueSky
 * @date 2023/12/15
 */
@Data
@TableName("song")
@EqualsAndHashCode(callSuper = true) // 添加父类的属性
public class SongEntity extends BaseEntity {

    @TableId
    private Long songId;

    private Long singerId;

    private Long albumId;

    private String songName;

    private String songSource;
}
