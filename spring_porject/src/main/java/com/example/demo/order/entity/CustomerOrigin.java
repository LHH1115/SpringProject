package com.example.demo.order.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@Table(name = "CUSTOMERORIGIN")
@NoArgsConstructor
public class CustomerOrigin {

	@Id
	private int CNO;
	
	private int CPROGRESS;
}
