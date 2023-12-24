package com.sky.skymusic;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author sky
 */
@MapperScan("com.sky.skymusic.mapper")
@SpringBootApplication
public class SkyMusicSystemApplication {

    public static void main(String[] args) {
        SpringApplication.run(SkyMusicSystemApplication.class, args);
    }

}
