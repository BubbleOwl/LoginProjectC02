package com.buta.honto.dao;

import com.buta.honto.vo.CustomerVO;

public interface CustomerMapper {

	int insertCustomer(CustomerVO cvo);

	CustomerVO selectCustomer(String id);

	CustomerVO selectLoginInfo(String custId, String password);

}
