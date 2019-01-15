package com.buta.honto.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.buta.honto.service.CustomerService;
import com.buta.honto.vo.CustomerVO;

@Controller
public class CustomerJoinController {
	
	@Autowired
	CustomerService service;

	private static final Logger logger = LoggerFactory.getLogger(CustomerJoinController.class);

	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String joinPage() {
		return "joinPage";
	}

	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String join(CustomerVO cvo, Model model) {
		// 디비에 데이터를 입력하는 부분
		boolean result = service.insert(cvo);
		if (result) {
			// 가입성공시
			model.addAttribute("id", cvo.getCustId());
			return "joinComplete";
		} else {
			// 가입실패시
			model.addAttribute("joinError", "가입실패!");
			model.addAttribute("cvo", cvo);
			return "joinPage";
		}
	}

	@RequestMapping(value = "idsearch", method = RequestMethod.GET)
	public String idSearch(String custId, Model model) {
		if (custId == null || custId.length() == 0) {
			model.addAttribute("searchFlag", false);
			return "idcheck";
		}
		model.addAttribute("cvo", (CustomerVO) service.select(custId));
		model.addAttribute("custId", custId);
		model.addAttribute("searchFlag", true);
		return "idcheck";
	}


}
