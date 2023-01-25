package com.example.demo.recruit.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "APPLICANTNEW")
public class ApplicantNew {

	@Id
	private int ANO;
	
	private String ANAME;
	private String APHONE;
	private String AEMAIL;
	private String ARESUMEPATH;
	private int AWORK;
	private int ASTATUS;
	
}
