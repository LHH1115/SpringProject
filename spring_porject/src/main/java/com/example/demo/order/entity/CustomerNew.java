package com.example.demo.order.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@Table(name = "CUSTOMERNEW")
@NoArgsConstructor
public class CustomerNew {

	@Id
	private int CNO;
	
	private String CNAME;
	private String CPHONE;
	private String CADDR;
	private String CMANAGER;
	private String CEMAIL;
	private int CSERVICE;
	private int CPRICE;
	private String CINFO;
	private String CPORTFOLIO;
	private String CMEETING;
}
