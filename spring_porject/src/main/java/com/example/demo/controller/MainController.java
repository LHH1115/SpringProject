package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.order.entity.CustomerNew;
import com.example.demo.service.OrderService;

@RestController
//@Controller
public class MainController {

	@Autowired
	private OrderService os;
	
	@GetMapping("/mainPage")
	public String index() {
		return "th/mainPage";
	}
	
	@GetMapping("/info")
	public String info() {
		return "main/companyInfo";
	}
	
	@GetMapping("/mav")
	public ModelAndView mav() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/companyInfo");
		return mav;
	}
	
	@GetMapping("/find")
	public ModelAndView findAll() {
		ModelAndView mav = new ModelAndView();
		List<CustomerNew> list = os.findAll();
		System.out.println(list);
		return mav;
	}
}
