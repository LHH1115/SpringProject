package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/mainPage")
	public String index() {
		return "th/mainPage";
	}
	
	@GetMapping("/info")
	public String info() {
		return "main/companyInfo";
	}
}
