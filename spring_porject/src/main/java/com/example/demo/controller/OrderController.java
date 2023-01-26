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
	
	// 신규문의 등록
	@GetMapping("/newOrderOK")
	public ModelAndView newOrderSubmit(CustomerNew c) {
		ModelAndView mav = new ModelAndView();
		System.out.println(c);
		int cService = c.getCSERVICE();
		// 올바른 제작 구분 선택 요청
		if(cService == 8) {
			mav.addObject("cService", "false");
			mav.setViewName("redirect:/newOrder");
		}else {
			os.insert(c);
			os.insertOrigin();
			mav.addObject("Order","true");
			mav.setViewName("redirect:/home");
		}
		return mav;
	}
	
	//기존 문의 로그인
	@GetMapping("/oldOrderLogInCheck")
	public ModelAndView oldOrderLogInCheck(CustomerNew c) {
		ModelAndView mav = new ModelAndView("redirect:/oldOrderLogin");
		System.out.println(c);
		String cName = c.getCNAME();
		String cPhone = c.getCPHONE();
		CustomerNew loginC = null;
		loginC = os.login(cName, cPhone);
		if(loginC != null) {
			// 로그인 성공
			int cNo = loginC.getCNO();
			System.out.println(cNo);
//				mav.addObject("c",loginC);
//				mav.setViewName("");
		}else {
			// 로그인 실패
			System.out.println("올바른 아이디와 암호 입력 요청");
		}
		return mav;
	}
}