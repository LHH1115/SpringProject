package com.example.demo.order.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@Table(name = "CADDINFO")
@NoArgsConstructor
public class CAddInfo {

	@Id
	private int ADDINFONO;
	
	private String CONTENT;

	@ManyToOne
	@JoinColumn(name ="CNO", insertable = true, updatable = true)
	private CustomerNew customerNew;
}
