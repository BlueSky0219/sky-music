package com.sky.skymusic.controller;

import com.sky.skymusic.common.util.AjaxResult;
import com.sky.skymusic.domain.dto.SysSongAddDTO;
import com.sky.skymusic.service.SysSongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 歌曲管理
 *
 * @author BlueSky
 * @date 2023/12/17
 */
@RestController
@RequestMapping("/sys/song")
public class SysSongController {

    @Autowired
    private SysSongService sysSongService;

    /**
     * 新增歌曲
     *
     * @param sysSongAddDTO 新增歌曲DTO
     * @return 结果
     */
    @PostMapping
    public AjaxResult query(@RequestBody SysSongAddDTO sysSongAddDTO) {

        if (sysSongAddDTO.getSongName().isEmpty()) {
            return AjaxResult.error("歌曲名不能为空！");
        }
        if (sysSongAddDTO.getSongSource().isEmpty()) {
            return AjaxResult.error("歌曲出处不能为空！");
        }
        if (sysSongAddDTO.getSingerName().isEmpty()) {
            return AjaxResult.error("歌手姓名不能为空！");
        }
        if (sysSongAddDTO.getAlbumName().isEmpty()) {
            return AjaxResult.success("专辑名称不能为空！");
        }

        int result = sysSongService.save(sysSongAddDTO);
        return AjaxResult.success(result);
    }

}
