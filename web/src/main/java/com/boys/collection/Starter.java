package com.boys.collection;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * Created by yangweijie on 2017/7/21.
 */
@SpringBootApplication
@MapperScan("com.boys.collection.dal.dao")
public class Starter {

    /**
     * @param args
     */
    public static void main(String[] args) {
        SpringApplication.run(Starter.class, args);
    }

}
