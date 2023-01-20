package com.example.demo.recruit.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Applicant {

	@Id
	private int aNo;
	
	private String aName;
	private String aPhone;
	private String aEmail;
	private String aTitle;
	private int aWork;
	private int aStatus;
	
}
