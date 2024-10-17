package com.example.shinwoosystem.config;


import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

@Configuration      // Spring 설정 파일임을 명시
// @MapperScan(basePackages = {"com.example.shinwoosystem.dao.mapper"})   // Mapper 인터페이스를 스캔하여 Bean으로 등록
public class DBConfig {
    @Bean   // Spring에서 관리하는 저장소인 Bean에 등록(jpa)
    public DataSource dataSource() {
        HikariConfig hikariConfig = new HikariConfig();
        hikariConfig.setDriverClassName("com.mysql.cj.jdbc.Driver");
        hikariConfig.setJdbcUrl("jdbc:mysql://1.220.247.78:3307/final_2405_team1");
        hikariConfig.setUsername("final_2405_team1_user");
        hikariConfig.setPassword("1234");

        hikariConfig.setPoolName("wish-pool");
        hikariConfig.setMaximumPoolSize(3);

        return new HikariDataSource(hikariConfig);
    }
}
