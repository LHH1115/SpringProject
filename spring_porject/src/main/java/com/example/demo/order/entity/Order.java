package com.example.demo.order.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@Table(name = "orders")
@NoArgsConstructor
public class Order {

	@Id
	private int cNo;
	
	private String cName;
	private String cPhone;
	private String cAddr;
	private String cManager;
	private String cEmail;
	private int cService;
	private int cPrice;
	private String cInfo;
	private String cPortfolio;
	private String cMeeting;
	private int cProgress;
	private int photoNo;
	private String photoPath;
	private int fileNo;
	private String filePath;
	private int addInfoNo;
	private String content;
}
