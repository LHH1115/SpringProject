package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.OrderDAO;
import com.example.demo.order.entity.CustomerNew;

import lombok.Setter;

@Service
@Setter
public class OrderService {

	@Autowired
	private OrderDAO dao;
	
	public List<CustomerNew> findAll(){
		return dao.findAll();
	}
}
