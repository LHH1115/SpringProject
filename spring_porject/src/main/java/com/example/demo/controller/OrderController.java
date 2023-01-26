package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.order.entity.CustomerNew;
import com.example.demo.service.OrderService;

import lombok.Setter;

@Controller
@Setter
public class OrderController {

	@Autowired
	private OrderService os;
	
	@GetMapping("/newOrderOK")
	public ModelAndView newOrderSubmit(CustomerNew c) {
		ModelAndView mav = new ModelAndView();
		System.out.println(c);
		int cService = c.getCSERVICE();
		if(cService == 8) {
			mav.addObject("cService", "false");
			mav.setViewName("redirect:/newOrder");
		}else {
			os.insert(c);
			mav.addObject("Order","true");
			mav.setViewName("redirect:/home");
		}
		return mav;
	}
}
