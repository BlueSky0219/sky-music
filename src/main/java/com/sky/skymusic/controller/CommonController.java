package com.sky.skymusic.controller;

import com.sky.skymusic.common.util.AjaxResult;
import com.sky.skymusic.common.util.AliyunOSSUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.UUID;

/**
 * @author BlueSky
 * @date 2023/12/18
 */
@RestController
@RequestMapping("/common")
public class CommonController {

    @Autowired
    private AliyunOSSUtils aliyunOSSUtils;

//    @PostMapping("/download")
//    public AjaxResult download(Long id, BindingResult result) {
//
//        if (result.hasErrors()) {
//
//            return R.fail("查阅失败，参数错误！");
//        }
//        URL url;
//        try {
//            url = productInfoService.download(id);
//        } catch (Exception e) {
//            e.printStackTrace();
//            log.info("ProductInfoController.download([id, result])业务已结束，结果：{}", "文件下载失败");
//            return R.fail("文件下载失败！", e);
//        }
//
//        return R.ok(url);
//    }

    @PostMapping("/upload")
    public AjaxResult upload(MultipartFile file) throws Exception {
        AjaxResult ajax = AjaxResult.success();
        String originalFilename = file.getOriginalFilename();
        StringBuilder filename = new StringBuilder();
        StringBuilder reverse = filename.append(originalFilename).reverse();
        String substring = reverse.substring(reverse.indexOf(".") + 1);
        StringBuilder title = new StringBuilder().append(substring);
        title.reverse();
        originalFilename = UUID.randomUUID().toString().replaceAll("-", "") + originalFilename;

        String contentType = file.getContentType();
        byte[] bytes = file.getBytes();
        int hours = 100000;


        String url = aliyunOSSUtils.aliyunUpload(originalFilename, bytes, contentType, hours);
        ajax.put("url", url);
        return ajax;
    }
}
