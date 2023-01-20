package com.example.demo.recruit.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class RecruitBoard {

	@Id
	public int rbNo;
	
	public String rbTitle;
	public String rbStartDate;
	public String rbEndDate;
	public String rbContent;
	public int rbWork;	
}
