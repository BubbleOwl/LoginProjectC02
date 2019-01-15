package com.buta.honto.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.buta.honto.vo.CustomerVO;

@Repository
public class CustomerDAO {
	
	@Autowired
	SqlSession sqlSession;

	public int insert(CustomerVO cvo) throws Exception {
		CustomerMapper mapper = sqlSession.getMapper(CustomerMapper.class);
		return mapper.insertCustomer(cvo);
	}

	public CustomerVO select(String id) {
		CustomerMapper mapper = sqlSession.getMapper(CustomerMapper.class);
		return mapper.selectCustomer(id);
	}

	public CustomerVO select(String custId, String password) {
		CustomerMapper mapper = sqlSession.getMapper(CustomerMapper.class);
		return mapper.selectLoginInfo(custId, password);
	}
	
}
