package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.OrderNewDAO;
import com.example.demo.dao.OrderOriginDAO;
import com.example.demo.order.entity.CustomerNew;
import com.example.demo.order.entity.CustomerOrigin;

import lombok.Setter;

@Service
@Setter
public class OrderService {

	@Autowired
	private OrderNewDAO ONdao;
	
	@Autowired
	private OrderOriginDAO OOdao;
	
	public List<CustomerNew> findAll(){
		return ONdao.findAll();
	}
	
	public void insert(CustomerNew c) {
		ONdao.insert(c);
	}
	
	public void insertOrigin() {
		OOdao.insertOrigin();
	}
	
	public CustomerNew login(String cName, String cPhone) {
		return ONdao.findByCNAMEAndCPHONE(cName, cPhone);
	}
	
	public CustomerNew findByCNO(int CNO) {
		return ONdao.findByCNO(CNO);
	}
	
	public CustomerOrigin findOrign(int CNO) {
		CustomerOrigin c = null;
		Optional<CustomerOrigin> op = OOdao.findById(CNO);
		if(op.isPresent()) {
			c = op.get();
		}else {
			System.out.println("데이터 없음!!");
		}
		return c;
	}
	
	public void insertAddInfo(int CNO, String CONTENT) {
		OOdao.insertAddInfo(CNO, CONTENT);
	}
}
