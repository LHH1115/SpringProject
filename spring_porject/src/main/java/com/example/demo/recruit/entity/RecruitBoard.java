package com.example.demo.recruit.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@Table(name = "RECRUITBOARD")
@NoArgsConstructor
public class RecruitBoard {

	@Id
	public int RBNO;
	
	public String RBTITLE;
	public String RBSTARTDATE;
	public String RBENDDATE;
	public String RBCONTENT;
	public int RBWORK;	
}
