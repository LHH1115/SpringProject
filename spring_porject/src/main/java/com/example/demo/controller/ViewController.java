package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.service.OrderService;

@Controller
public class ViewController {

	@Autowired
	private OrderService os;
	
	@GetMapping("/")
	public String index() {
		return "th/mainPage";
	}
	
	@GetMapping("/home")
	public String home() {
		return "th/mainPage";
	}
	
	@GetMapping("/info")
	public String info() {
		return "main/companyInfo";
	}
	
	@GetMapping("/portfolio")
	public String portfolio() {
		return "main/portfolio";
	}
	
	@GetMapping("/newOrderPortfolio")
	public String newOrderPortfolio() {
		return "order/newOrderPortfolio";
	}
	
	@GetMapping("/newOrder")
	public String newOrder() {
		return "order/newOrder";
	}
	
	@GetMapping("/oldOrderLogin")
	public String oldOrderLogin() {
		return "order/oldOrderLogin";
	}
	
	@GetMapping("/newRecruitBoard")
	public String newRecruitBoard() {
		return "recruit/newRecruitBoard";
	}
	
	@GetMapping("/myRecruitLogin")
	public String myRecruitLogin() {
		return "recruit/myRecruitLogin";
	}
	
	
//	@GetMapping("/mav")
//	public ModelAndView mav() {
//		ModelAndView mav = new ModelAndView();
//		mav.setViewName("main/companyInfo");
//		return mav;
//	}
}
