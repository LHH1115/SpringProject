package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.example.demo.recruit.entity.RecruitBoard;

@EnableJpaRepositories("com.acme.repositories")
public interface RecruitBoardDAO extends JpaRepository<RecruitBoard, Integer>{

}
