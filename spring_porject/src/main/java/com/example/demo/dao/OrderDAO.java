package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.query.Param;

import com.example.demo.order.entity.CustomerNew;

import jakarta.transaction.Transactional;

@EnableJpaRepositories("com.acme.repositories")
public interface OrderDAO extends JpaRepository<CustomerNew, Integer> {

//	@Modifying
//	@Query(nativeQuery = true, value = "INSERT INTO Board "
//			+ "b(b.no,b.id,b.pwd,b.title,b.content,b.ip,b.regdate,b.hit,b.bref,b.bstep,b.blevel,b.fname) "
//			+ "VALUES(:#{#b.no},:#{#b.member.id},:#{#b.pwd},:#{#b.title},:#{#b.content},:#{#b.ip},SYSDATE,0,:#{#b.bref},:#{#b.bstep},:#{#b.blevel},:#{#b.fname})")
//	@Transactional
//	public void insert(@Param(value = "o") Order o);
	
	
}
