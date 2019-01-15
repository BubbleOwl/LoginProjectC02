package com.buta.honto.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.buta.honto.service.CustomerService;

@Controller
public class CustomerLoginController {
	
	@Autowired
	CustomerService service;

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String loginPage() {
		return "loginPage";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(String custId, String password,
			Model model, HttpSession session) {
		boolean resultFlg = service.select(custId, password, session);
		if (resultFlg) {
			// 성공 시,
			session.setAttribute("loginSuccess", "로그인 성공하셨습니다!");
			return "redirect:/init";
		} else {
			// 실패 시,
			model.addAttribute("loginError", "로그인 정보가 올바르지 않습니다.");
			return "loginPage";
		}
	}

}
