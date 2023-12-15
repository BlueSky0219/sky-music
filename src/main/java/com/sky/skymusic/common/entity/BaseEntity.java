package com.sky.skymusic.common.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.text.SimpleDateFormat;

/**
 * @author BlueSky
 * @date 2023/12/15
 */
@Data
public class BaseEntity implements Serializable {

    /**
     * 序列化
     */
    private static final long serialVersionUID = 1L;

    private int deleted;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private SimpleDateFormat createTime;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private SimpleDateFormat updateTime;
}
