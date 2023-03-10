package com.example.demo.recruit.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@Table(name = "ALINK")
@NoArgsConstructor
public class ALink {

	@Id
	private int ALINKNO;
	
	private String LINK;
	
	@ManyToOne
	@JoinColumn(name ="ANO", insertable = true, updatable = true)
	private ApplicantNew applicantNew;
}
