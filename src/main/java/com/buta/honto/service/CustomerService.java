package com.buta.honto.service;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buta.honto.HomeController;
import com.buta.honto.dao.CustomerDAO;
import com.buta.honto.vo.CustomerVO;

@Service
public class CustomerService {

	private static final Logger logger = LoggerFactory.getLogger(CustomerService.class);
	
	@Autowired
	CustomerDAO dao;

	public boolean insert(CustomerVO cvo) {
		boolean resultFlg = false;
		int result = 0;
		try {
			result = dao.insert(cvo);
		} catch (Exception e) {
			e.printStackTrace();
			logger.info("CustomerVO 객체 " 
					+ cvo.toString() 
					+ " 의 데이터가 DB의 문제로 등록되지 않았습니다.");
		}
		if (result == 1) {
			resultFlg = true;
		}
		return resultFlg;
	}

	public CustomerVO select(String id) {
		return dao.select(id);
	}

	public boolean select(String custId, String password, HttpSession session) {
		boolean resultFlg = false;
		CustomerVO cvo = dao.select(custId, password);
		if (cvo != null) {
			session.setAttribute("loginId", custId);
			session.setAttribute("loginName", cvo.getName());
			resultFlg = true;
		}
		return resultFlg;
	}
	
}
