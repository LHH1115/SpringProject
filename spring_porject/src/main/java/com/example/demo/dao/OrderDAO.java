package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.query.Param;

import com.example.demo.order.entity.CustomerNew;

import jakarta.transaction.Transactional;

@EnableJpaRepositories("com.acme.repositories")
public interface OrderDAO extends JpaRepository<CustomerNew, Integer> {

	@Modifying
	@Transactional
	@Query(nativeQuery = true, value = "INSERT INTO CUSTOMERNEW "
			+ "C(C.CNO,C.CNAME,C.CPHONE,C.CADDR,C.CMANAGER,C.CEMAIL,C.CSERVICE,C.CPRICE,C.CINFO,C.CPORTFOLIO) "
			+ "VALUES(seq_customer.nextval,:#{#c.CNAME},:#{#c.CPHONE},:#{#c.CADDR},:#{#c.CMANAGER},:#{#c.CEMAIL},:#{#c.CSERVICE},:#{#c.CPRICE},:#{#c.CINFO},:#{#c.CPORTFOLIO})")
	public void insert(@Param(value = "c") CustomerNew c);
	
}
