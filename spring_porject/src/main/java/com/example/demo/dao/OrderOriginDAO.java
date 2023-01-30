package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.query.Param;

import com.example.demo.order.entity.CustomerOrigin;

import jakarta.transaction.Transactional;

@EnableJpaRepositories("com.acme.repositories")
public interface OrderOriginDAO extends JpaRepository<CustomerOrigin, Integer> {

	@Modifying
	@Transactional
	@Query(nativeQuery = true, value = ""
			+ "INSERT INTO CUSTOMERORIGIN(CNO, CPROGRESS) VALUES( (SELECT MAX(CNO)+1 FROM CUSTOMERORIGIN),0 )")
	public void insertOrigin();
	
	@Modifying
	@Transactional
	@Query(nativeQuery = true, value = ""
			+ "INSERT INTO CADDINFO(ADDINFONO, CNO, CONTENT) VALUES( (SELECT NVL(MAX(ADDINFONO),0)+1 FROM CADDINFO), :CNO, :CONTENT )")
	public void insertAddInfo(@Param(value = "CNO") int CNO, @Param(value = "CONTENT") String CONTENT);
}
