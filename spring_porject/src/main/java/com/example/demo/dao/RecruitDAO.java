package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.example.demo.recruit.entity.ApplicantNew;

@EnableJpaRepositories("com.acme.repositories")
public interface RecruitDAO extends JpaRepository<ApplicantNew, Integer> {

}
