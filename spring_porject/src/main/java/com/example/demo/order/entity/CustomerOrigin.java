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
@Table(name = "CUSTOMERORIGIN")
@NoArgsConstructor
public class CustomerOrigin {

	@Id
	@ManyToOne
	@JoinColumn(name ="CNO", insertable = true, updatable = true)
	private CustomerNew customerNew;
	
	private int CPROGRESS;
}
