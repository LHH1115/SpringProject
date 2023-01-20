package com.example.demo.recruit.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Entity
@Data
public class Schedule {

	@Id
	@ManyToOne
	@JoinColumn(name ="aNo", insertable = true, updatable = true)
	private Applicant applicant;
	
    private int aLevel;              
    private String aMeeting;
}
