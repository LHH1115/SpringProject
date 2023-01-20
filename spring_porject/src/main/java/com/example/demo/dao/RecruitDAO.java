package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.example.demo.recruit.entity.Applicant;

@EnableJpaRepositories("com.acme.repositories")
public interface RecruitDAO extends JpaRepository<Applicant, Integer> {

}
