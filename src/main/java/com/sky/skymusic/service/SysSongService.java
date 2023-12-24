package com.sky.skymusic.service;

import com.sky.skymusic.domain.dto.SysSongAddDTO;

/**
 * @author BlueSky
 * @date 2023/12/18
 */
public interface SysSongService {
    int save(SysSongAddDTO sysSongAddDTO);
}
