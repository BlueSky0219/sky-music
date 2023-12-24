package com.sky.skymusic.service.impl;

import com.sky.skymusic.domain.dto.SysSongAddDTO;
import com.sky.skymusic.domain.entity.AlbumEntity;
import com.sky.skymusic.domain.entity.SingerEntity;
import com.sky.skymusic.domain.entity.SongEntity;
import com.sky.skymusic.mapper.SysAlbumMapper;
import com.sky.skymusic.mapper.SysSingerMapper;
import com.sky.skymusic.mapper.SysSongMapper;
import com.sky.skymusic.service.SysSongService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author BlueSky
 * @date 2023/12/18
 */
@Service
public class SysSongServiceImpl implements SysSongService {

    @Autowired
    private SysSongMapper sysSongMapper;

    @Autowired
    private SysSingerMapper sysSingerMapper;

    @Autowired
    private SysAlbumMapper sysAlbumMapper;

    /**
     * 添加歌曲
     */
    @Override
    public int save(SysSongAddDTO sysSongAddDTO) {

/*        SingerEntity singerEntity = sysSingerMapper.selectByName(sysSongAddDTO.getSingerName());
        if (singerEntity != null) {
            AlbumEntity albumEntity = sysAlbumMapper.selectByName(sysSongAddDTO.getAlbumName());
            if (albumEntity != null) {
                SongEntity songEntity = new SongEntity();
                songEntity.setSongName(sysSongAddDTO.getSongName());
                songEntity.setSongSource(sysSongAddDTO.getSongSource());
                songEntity.setSingerId(singerEntity.getSingerId());
                songEntity.setAlbumId(albumEntity.getAlbumId());
                result = sysSongMapper.insert(songEntity);
            }
        }*/
        SongEntity songEntity = new SongEntity();
        BeanUtils.copyProperties(sysSongAddDTO,songEntity);

        return sysSongMapper.insert(songEntity);
    }
}
